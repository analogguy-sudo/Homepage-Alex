-- SQL für deine alte index.html (Kontaktbogen-Design)
-- WICHTIG: Ersetze unten an 5 Stellen DEINE-EMAIL@BEISPIEL.DE durch die E-Mail,
-- mit der du dich auf der Seite anmeldest. Dann alles ausführen (Run).

-- 1) Tabelle (falls schon vorhanden, werden fehlende Spalten ergänzt)
create table if not exists public.photos (
  id bigint generated always as identity primary key,
  created_at timestamptz not null default now(),
  position integer,
  image_path text,
  thumb_path text,
  ar real default 1.5,
  fx real default 0.5,
  fy real default 0.5,
  z real default 1,
  cat text default '',
  title text,
  place text,
  date_text text,
  camera text,
  film text,
  note text
);

alter table public.photos add column if not exists position integer;
alter table public.photos add column if not exists image_path text;
alter table public.photos add column if not exists thumb_path text;
alter table public.photos add column if not exists ar real default 1.5;
alter table public.photos add column if not exists fx real default 0.5;
alter table public.photos add column if not exists fy real default 0.5;
alter table public.photos add column if not exists z real default 1;
alter table public.photos add column if not exists cat text default '';
alter table public.photos add column if not exists title text;
alter table public.photos add column if not exists place text;
alter table public.photos add column if not exists date_text text;
alter table public.photos add column if not exists camera text;
alter table public.photos add column if not exists film text;
alter table public.photos add column if not exists note text;

-- Spalte aus meiner ersten Version, die diese Seite nicht braucht
alter table public.photos drop column if exists image_url;

alter table public.photos enable row level security;

-- 2) Regeln: alle dürfen ansehen, nur du darfst ändern
drop policy if exists "alle lesen" on public.photos;
drop policy if exists "angemeldet aendern" on public.photos;
drop policy if exists "nur ich aendert" on public.photos;

create policy "alle lesen" on public.photos
  for select using (true);

create policy "nur ich aendert" on public.photos
  for all to authenticated
  using ((auth.jwt() ->> 'email') = 'DEINE-EMAIL@BEISPIEL.DE')
  with check ((auth.jwt() ->> 'email') = 'DEINE-EMAIL@BEISPIEL.DE');

-- 3) Speicher für die Bilder
insert into storage.buckets (id, name, public)
values ('photos', 'photos', true)
on conflict (id) do update set public = true;

drop policy if exists "bilder lesen" on storage.objects;
drop policy if exists "bilder hochladen" on storage.objects;
drop policy if exists "bilder aendern" on storage.objects;
drop policy if exists "bilder loeschen" on storage.objects;

create policy "bilder lesen" on storage.objects
  for select using (bucket_id = 'photos');

create policy "bilder hochladen" on storage.objects
  for insert to authenticated
  with check (bucket_id = 'photos' and (auth.jwt() ->> 'email') = 'DEINE-EMAIL@BEISPIEL.DE');

create policy "bilder aendern" on storage.objects
  for update to authenticated
  using (bucket_id = 'photos' and (auth.jwt() ->> 'email') = 'DEINE-EMAIL@BEISPIEL.DE');

create policy "bilder loeschen" on storage.objects
  for delete to authenticated
  using (bucket_id = 'photos' and (auth.jwt() ->> 'email') = 'DEINE-EMAIL@BEISPIEL.DE');
