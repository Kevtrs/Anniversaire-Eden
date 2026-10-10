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

-- Eden (anonyme) peut seulement AJOUTER une ligne, jamais lire
create policy "anon insert photos" on public.photos
  for insert to anon with check (true);
-- Toi (connecté) peux tout lire
create policy "admin read photos" on public.photos
  for select to authenticated using (true);

-- 2) Dossier de stockage PRIVÉ pour les images
insert into storage.buckets (id, name, public)
values ('photos', 'photos', false)
on conflict (id) do nothing;

-- Eden (anonyme) peut seulement DÉPOSER un fichier dans ce dossier
create policy "anon upload photos" on storage.objects
  for insert to anon with check (bucket_id = 'photos');
-- Toi (connecté) peux voir les fichiers
create policy "admin read photo files" on storage.objects
  for select to authenticated using (bucket_id = 'photos');
