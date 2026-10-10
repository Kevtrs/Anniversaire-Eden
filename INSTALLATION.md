# Installation (15 minutes)

## 1. Créer le back office (Supabase, gratuit)
1. Va sur https://supabase.com, crée un compte puis un nouveau projet (choisis la région Europe).
2. Menu **SQL Editor** > New query : colle le contenu de `supabase-setup.sql` > **Run**.
3. Menu **Authentication > Users > Add user** : saisis ton e-mail et un mot de passe, coche **Auto Confirm User**. C'est ton compte pour le back office.
4. Menu **Project Settings > API** : copie la **Project URL** et la clé **anon public**.
5. Colle ces deux valeurs dans `SUPABASE_URL` et `SUPABASE_KEY` :
   - en haut du script de `index.html` (section Défi 2),
   - en haut du script de `admin.html`.

La clé « anon » est faite pour être publique. Les photos restent privées : Eden peut seulement en déposer, toi seul peux les lire (connecté).

## 2. Mettre le site en ligne (GitHub Pages)
1. Crée un dépôt GitHub, ajoute `index.html` et `admin.html` (pas besoin du `.sql`).
2. Settings > Pages > Source : branche `main`, dossier `/ (root)` > Save.
3. Le site est sur `https://TON-PSEUDO.github.io/NOM-DU-DEPOT/`.
   - Envoie ce lien à Eden.
   - Ton back office est sur `.../admin.html` (ne le lui donne pas).

## 3. Tester avant de l'envoyer
Ouvre le site sur ton téléphone, fais le défi photo, puis regarde `admin.html` : tes photos doivent apparaître.

## Notes
- Code du coffre : **427** (modifiable dans `CHIFFRES`).
- Le texte du cadeau est encodé dans le code, mais le dépôt GitHub est public : dis à Eden de ne pas fouiller dedans.
- Pour effacer les photos après coup : Supabase > Storage > photos, et Table Editor > photos.
