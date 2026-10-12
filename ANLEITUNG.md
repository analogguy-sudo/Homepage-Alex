# Anleitung: Homepage mit GitHub und Supabase

Du brauchst vier Dateien: `index.html`, `config.js`, `supabase.sql` und diese Anleitung.
Die `index.html` musst du nie anfassen. Eingestellt wird alles in der `config.js`.

## Teil 1: Supabase (einmalig)

1. Öffne dein Projekt auf supabase.com.
2. **SQL einspielen:** Öffne `supabase.sql` in einem Texteditor. Ersetze 5-mal `DEINE-EMAIL@BEISPIEL.DE` durch deine E-Mail. Kopiere alles. Gehe in Supabase auf **SQL Editor**, füge es ein und klicke auf **Run**. Es sollte „Success" erscheinen.
3. **Dich selbst anlegen:** Gehe auf **Authentication → Users → Add user → Create new user**. Gib dieselbe E-Mail und ein Passwort ein. Setze das Häkchen bei **Auto Confirm User**.
4. **Adresse und Schlüssel holen:** Gehe auf **Project Settings → API**. Du brauchst die **Project URL** und den **anon / public key** (den langen Schlüssel). Den Schlüssel „service_role" nimmst du nie.

## Teil 2: config.js ausfüllen

Öffne `config.js` in einem Texteditor. Trage ein:

- `supabaseUrl`: die Project URL
- `supabaseAnonKey`: der anon key
- Name, Texte, E-Mail und Kategorien, wie du sie haben möchtest

Die Anführungszeichen und Kommas müssen bleiben.

## Teil 3: Auf GitHub hochladen

1. Öffne dein Projekt auf GitHub.
2. Klicke auf **Add file → Upload files**.
3. Ziehe `index.html` und `config.js` hinein. Beide müssen ganz oben im Projekt liegen, nicht in einem Ordner. Dateien mit gleichem Namen werden ersetzt.
4. Klicke unten auf **Commit changes**.
5. Gehe auf **Settings → Pages**. Wähle bei Branch **main** und den Ordner **/ (root)**, dann **Save**.
6. Nach 1 bis 2 Minuten ist die Seite unter dem angezeigten Link erreichbar.

## Teil 4: Bilder hinzufügen (ohne Hilfe)

1. Öffne deine Seite und klicke oben auf **Anmelden**. Melde dich mit E-Mail und Passwort an.
2. Es erscheint **Bearbeiten**. Klick darauf.
3. **Ein Bild:** Tippe auf einen leeren Platz im Filmstreifen, dann auf **Bild auswählen**. Wähle Ausschnitt, Kategorie und trage Titel, Ort, Film und Kamera ein. Dann **Speichern**.
4. **Viele Bilder auf einmal:** Unten auf **Mehrere Bilder einfügen**. Die Angaben ergänzt du danach pro Bild.
5. **Bild ändern oder entfernen:** Im Bearbeiten-Modus auf das Bild tippen, dann **Bild entfernen** oder die Angaben ändern.
6. Zum Schluss auf **Bearbeiten beenden**. Alles ist schon gespeichert.

Die Bilder werden beim Hochladen automatisch verkleinert. Deine Originale bleiben bei dir.

## Wenn etwas nicht klappt

| Problem | Lösung |
|---|---|
| Oben steht „config.js wurde nicht gefunden" | `config.js` liegt nicht neben `index.html` |
| Oben steht „Einrichtung fehlt" | In `config.js` stehen noch „DEIN…"-Werte |
| „Die Bilder konnten nicht geladen werden" | `supabase.sql` wurde noch nicht ausgeführt |
| Anmelden klappt nicht | Benutzer in Supabase anlegen (Teil 1, Punkt 3) und „Auto Confirm" anhaken |
| „Keine Berechtigung" beim Speichern | Die E-Mail in `supabase.sql` stimmt nicht mit deiner Anmelde-E-Mail überein. Datei korrigieren und nochmal ausführen |
| Nach dem Hochladen sieht man die alte Seite | Warte 2 Minuten und hänge `?neu=1` an die Adresse an |
