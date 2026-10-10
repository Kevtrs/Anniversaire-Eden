# Installation du back office (10 minutes, une seule fois)

Les photos d'Eden sont envoyées vers un stockage gratuit (Supabase). Le back office (`admin.html`) les affiche, sans mot de passe.

1. Va sur https://supabase.com, crée un compte puis un nouveau projet (région Europe).
2. Menu **SQL Editor** > New query : colle le contenu de `supabase-setup.sql` > **Run**.
3. Menu **Project Settings > API** : copie la **Project URL** et la clé **anon public**.
4. Colle ces deux valeurs dans `SUPABASE_URL` et `SUPABASE_KEY` :
   - en haut du script de `index.html` (section Défi 2),
   - en haut du script de `admin.html`.
5. `git push` : le site se met à jour tout seul.

Test : ouvre le site sur ton téléphone, fais le défi photo, puis regarde `admin.html`.

Les adresses :
- Site pour Eden : https://kevtrs.github.io/Anniversaire-Eden/
- Back office : https://kevtrs.github.io/Anniversaire-Eden/admin.html (accès ouvert : ne le partage pas)

Code du coffre : **427**.
