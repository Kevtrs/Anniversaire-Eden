-- À coller dans Supabase > SQL Editor > New query > Run

-- 1) Table qui liste les photos
create table if not exists public.photos (
  id bigint generated always as identity primary key,
  created_at timestamptz not null default now(),
  session text not null,
  defi int not null,
  label text,
  path text not null
);
alter table public.photos enable row level security;

-- Accès ouvert : tout le monde peut ajouter et lire (pas de mot de passe)
create policy "ajout photos" on public.photos for insert to anon with check (true);
create policy "lecture photos" on public.photos for select to anon using (true);

-- 2) Dossier de stockage des images (public en lecture)
insert into storage.buckets (id, name, public)
values ('photos', 'photos', true)
on conflict (id) do update set public = true;

create policy "depot photos" on storage.objects
  for insert to anon with check (bucket_id = 'photos');
