/* ============================================================
   config.js – hier stellst du deine Seite ein.
   Nur die ersten zwei Zeilen sind Pflicht. Alles andere kannst
   du jederzeit ändern. Die Anführungszeichen "..." müssen bleiben.
   ============================================================ */
window.SITE_CONFIG = {

  /* PFLICHT: aus Supabase (Project Settings → API) */
  supabaseUrl: "https://owbbsnujnkhyyqvagtai.supabase.co",
  supabaseAnonKey: "sb_publishable_29TK9hJ-e8e4eW9rp_eA8A__EHL2Kga",

  /* Name und Texte */
  name: "Dein Name",
  title: "Analoge Fotografie",
  headline: ["Analoge", "Fotografie"],
  tagline: "Aufnahmen auf Film, entwickelt und gescannt.",

  /* Kategorien: ["kurzer-name", "Anzeige-Name"]. Den kurzen Namen später nicht mehr ändern. */
  categories: [
    ["sw", "Schwarz-Weiß"],
    ["color", "Color"],
    ["natur", "Natur"],
    ["portraet", "Porträt"]
  ],

  /* Über mich: jeder Eintrag ist ein Absatz */
  about: [
    "Hier steht ein kurzer Text über dich und deine Fotografie.",
    "Ein zweiter Absatz, wenn du magst."
  ],

  /* Angaben rechts neben dem Text: ["Name", "Wert"] */
  facts: [
    ["Kamera", "Deine Kamera"],
    ["Film", "Deine Filme"],
    ["Entwicklung", "Selbst entwickelt"]
  ],

  /* Kontakt (die E-Mail wird auch für den Kaufen-Knopf benutzt) */
  contactText: "Du interessierst dich für ein Bild oder hast eine Frage? Schreib mir.",
  mail: "deine@mail.de",
  links: [
    /* { label: "Instagram", url: "https://www.instagram.com/deinname" } */
  ],

  /* Fußzeile: leer lassen = Copyright-Hinweis mit deinem Namen */
  footer: ""
};
