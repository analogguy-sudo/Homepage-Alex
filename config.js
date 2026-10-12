/*
  Einstellungen für deine Seite.
  Diese Datei kannst du direkt auf GitHub im Browser bearbeiten (Stift-Symbol).
  Die Texte ändern sich auf der Seite, sobald GitHub Pages neu veröffentlicht hat (meist nach 1 bis 2 Minuten).
*/
window.SITE_CONFIG = {

  /* --- Supabase: siehe ANLEITUNG.md, Schritt 4 --- */
  /* Der "anon"/"publishable" Schlüssel ist öffentlich gedacht. Den geheimen "service_role"-Schlüssel hier NIEMALS eintragen. */
  supabaseUrl: 'https://owbbsnujnkhyyqvagtai.supabase.co',
  supabaseAnonKey: 'sb_publishable_29TK9hJ-e8e4eW9rp_eA8A__EHL2Kga',

  /* --- Texte der Seite --- */
  name: 'Name folgt',                      // oben links und in der Fußzeile
  title: 'Analoge Fotografie',             // Titel im Browser-Tab
  headline: ['Analoge', 'Fotografie'],     // große Überschrift, jede Zeile ein Eintrag
  tagline: '',                             // kurzer Satz unter der Überschrift, leer lassen = nicht anzeigen

  about: [                                 // Absätze im Abschnitt "Über mich"
    'Text folgt.'
  ],
  facts: [                                 // Zeilen neben dem Text, leer lassen = nicht anzeigen
    // ['Kameras', '...'],
    // ['Filme', '...'],
    // ['Ort', '...']
  ],

  contactText: '',                         // kurzer Satz im Abschnitt "Kontakt"
  mail: '',                                // E-Mail-Adresse, leer = "Kontaktangaben folgen."
  links: [                                 // weitere Links, zum Beispiel Instagram
    // { label: 'Instagram', url: 'https://www.instagram.com/DEINNAME' }
  ],

  footer: ''                               // eigener Text für die Fußzeile, leer = © Jahr + Name
};
