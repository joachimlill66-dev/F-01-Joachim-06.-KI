# Lektion 3: MOCs (Maps of Content) & Inhaltsverzeichnisse

Wenn wir alles nur über Links vernetzen, haben wir bald ein riesiges, chaotisches Spinnennetz. Klassische Ordnerstrukturen auf dem PC sind aber oft zu starr (gehört ein Dokument über Apple-Aktien nun in den Ordner "Tech-Aktien", "Mein Portfolio" oder "News"?).

Die Lösung in Obsidian nennt sich **MOC (Map of Content)**.

---

## 1. Was ist ein MOC?
Ein MOC ist nichts anderes als eine ganz normale Notiz, die als **Inhaltsverzeichnis** oder "Zentrale" für ein bestimmtes Thema dient.

Statt alle deine Trading-Notizen in verschiedene kleine Unterordner zu zwängen, packst du sie in einen Hauptordner und erstellst eine Datei namens `[[00_Trading_MOC]]`. 
In dieser Datei listest du einfach per `[[Wiki-Link]]` alle relevanten Notizen sauber geordnet unter Überschriften auf.

## 2. Der Vorteil
Eine Notiz kann auf mehreren MOCs verlinkt sein!
Die Notiz `[[Apple Quartalszahlen 2026]]` kann im `[[00_Trading_MOC]]` verlinkt sein, aber gleichzeitig auch im `[[00_Tagebuch_MOC]]` stehen. In einem starren Ordnersystem ginge das nicht.

## 3. Unser Automatisches Inhaltsverzeichnis
Weil MOCs so wichtig sind, haben wir in deinem Workspace eine Automatisierung gebaut!
Ganz oben in deinem Vault gibt es die Datei `[[00_Inhaltsverzeichnis.md]]`. 
Wenn du den KI-Befehl `/toc` (Table of Contents) eingibst oder wenn der Cronjob um 02:00 Uhr nachts läuft, durchsucht ein Skript deinen ganzen Vault und baut dieses globale Inhaltsverzeichnis völlig automatisch neu auf. Es klappt alle Ordner auf und erstellt die Links für dich.

---

## 🛠️ Deine Praxis-Aufgabe für diese Lektion:

1. Klicke auf diesen Link, um in die Zentrale zu schauen: [[00_Inhaltsverzeichnis]]
2. Schau dir dort an, wie sauber die Ordner durch einklappbare Pfeile (Callouts) strukturiert sind.
3. Komm wieder hierher zurück (Zurück-Taste oben links).

*(Schreibe hier drunter auf, was dein allererstes eigenes MOC-Thema sein könnte, wenn du eines manuell anlegen müsstest 👇)*









---
Hast du das Prinzip der Inhaltsverzeichnisse verstanden? Dann schauen wir uns die letzte Suchhilfe an:
👉 [[Lektion_04_Tags_und_Suche]]
