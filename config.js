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
  name: "A T Fichter",
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
    "Vom ersten Klick zur echten Leidenschaft – Analoge Fotografie im Wandel der Zeit.

Hallo! Schön, dass du hergefunden hast.

Was 2020 als ruhiges Hobby begann, hat sich für mich Schritt für Schritt zu einer echten Passion entwickelt: das analoge Fotografieren. In einer immer schnelleren und digitaleren Welt schätze ich die Entschleunigung, das bewusste Komponieren eines Bildes und das Warten auf den perfekten Moment – limitiert auf 36 Frames.

Für mich endet der fotografische Prozess jedoch nicht beim Auslösen. Seit 2026 nehme ich das Handwerk komplett in die eigene Hand und entwickle meine Filme selbst im Dunkeln. Das Gefühl, die eigenen Negative das erste Mal in den Händen zu halten, hat meine Faszination für das Medium noch einmal neu entfacht.

Der nächste Schritt?

Das Abenteuer geht weiter: Mein nächstes großes Projekt ist das Vergrößern der Negative auf echtes Fotopapier in der Dunkelkammer, um den gesamten Weg vom Lichtstrahl bis zum fertigen Print eigenhändig zu gestalten.

Wenn du meine Arbeiten verfolgen möchtest oder dich über analoge Techniken austauschen willst, freue ich mich sehr über eine Nachricht!"
  ],

  /* Angaben rechts neben dem Text: ["Name", "Wert"] */
 
  /* Kontakt (die E-Mail wird auch für den Kaufen-Knopf benutzt) */
  contactText: "Du interessierst dich für ein Bild oder hast eine Frage? Schreib mir.",
  mail: "a_t_f@outlook.de",
  links: [
    /* { label: "Instagram", url: "https://www.instagram.com/deinname" } */
  ],

  /* Fußzeile: leer lassen = Copyright-Hinweis mit deinem Namen */
  footer: ""
};
