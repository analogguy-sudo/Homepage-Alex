-- =====================================================================
--  Einrichtung für deine Foto-Seite
--  Einmal komplett in Supabase ausführen:
--  Projekt öffnen -> links "SQL Editor" -> "New query" -> alles einfügen -> "Run"
--
--  WICHTIG: Ersetze weiter unten (Abschnitt 2) DEINE-MAIL@BEISPIEL.DE durch die
--  E-Mail-Adresse, mit der du dich auf der Seite anmeldest (alles klein geschrieben).
--  Nur diese Adresse darf Bilder anlegen, ändern und löschen.
--  Ansehen darf jeder.
-- =====================================================================

-- 1. Tabelle für die Bilder
create table if not exists public.photos (
  id          uuid primary key default gen_random_uuid(),
  position    integer not null unique check (position >= 0),
  image_path  text not null,
  thumb_path  text,
  ar          real not null default 1.5,
  fx          real not null default 0.5,
  fy          real not null default 0.5,
  z           real not null default 1,
  cat         text not null default '' check (cat in ('', 'sw', 'color')),
  title       text not null default '',
  place       text not null default '',
  date_text   text not null default '',
  camera      text not null default '',
  film        text not null default '',
  note        text not null default '',
  created_at  timestamptz not null default now()
);

alter table public.photos enable row level security;

-- 2. Wer ist der Besitzer? (HIER DEINE E-MAIL EINTRAGEN)
create or replace function public.is_site_owner()
returns boolean
language sql
stable
as $$
  select lower(coalesce(auth.jwt() ->> 'email', '')) = lower('DEINE-MAIL@BEISPIEL.DE')
$$;

-- 3. Zugriffsregeln für die Tabelle
drop policy if exists "Alle duerfen Bilder ansehen" on public.photos;
create policy "Alle duerfen Bilder ansehen"
  on public.photos for select
  using (true);

drop policy if exists "Nur Besitzer darf Bilder anlegen" on public.photos;
create policy "Nur Besitzer darf Bilder anlegen"
  on public.photos for insert to authenticated
  with check (public.is_site_owner());

drop policy if exists "Nur Besitzer darf Bilder aendern" on public.photos;
create policy "Nur Besitzer darf Bilder aendern"
  on public.photos for update to authenticated
  using (public.is_site_owner())
  with check (public.is_site_owner());

drop policy if exists "Nur Besitzer darf Bilder loeschen" on public.photos;
create policy "Nur Besitzer darf Bilder loeschen"
  on public.photos for delete to authenticated
  using (public.is_site_owner());

-- 4. Speicher für die Bilddateien (öffentlich lesbar)
insert into storage.buckets (id, name, public)
values ('photos', 'photos', true)
on conflict (id) do nothing;

drop policy if exists "Bilddateien ansehen" on storage.objects;
create policy "Bilddateien ansehen"
  on storage.objects for select
  using (bucket_id = 'photos');

drop policy if exists "Nur Besitzer darf Bilddateien hochladen" on storage.objects;
create policy "Nur Besitzer darf Bilddateien hochladen"
  on storage.objects for insert to authenticated
  with check (bucket_id = 'photos' and public.is_site_owner());

drop policy if exists "Nur Besitzer darf Bilddateien aendern" on storage.objects;
create policy "Nur Besitzer darf Bilddateien aendern"
  on storage.objects for update to authenticated
  using (bucket_id = 'photos' and public.is_site_owner())
  with check (bucket_id = 'photos' and public.is_site_owner());

drop policy if exists "Nur Besitzer darf Bilddateien loeschen" on storage.objects;
create policy "Nur Besitzer darf Bilddateien loeschen"
  on storage.objects for delete to authenticated
  using (bucket_id = 'photos' and public.is_site_owner());
