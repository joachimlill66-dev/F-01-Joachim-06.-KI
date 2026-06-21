# Übersicht: Interne KI-Plugins & Skills
> *Zuletzt bearbeitet am: 21. Juni 2026*

Neben den Chat-Befehlen ("Slash-Commands") hat dein KI-Assistent Zugriff auf eine Reihe von installierten "Skills" (Fähigkeiten) in Form von Plugins. Diese agieren im Hintergrund als spezielle Werkzeuge.

Das prominenteste Paket ist aktuell das **Science-Plugin (Wissenschafts-Werkzeuge)**. Für den normalen Börsenalltag (Apple, Tesla & Co.) werden diese selten benötigt. Sie entfalten ihre wahre Macht jedoch, wenn du im Bereich **Pharma, Biotech oder Medizintechnik** investieren möchtest.

Hier ist eine Übersicht der wichtigsten Werkzeuge, auf die die KI zugreifen kann:

## 1. Zulassungen & Klinische Studien (Wichtig für Biotech-Aktien!)
Wenn ein Pharma-Unternehmen eine neue Studie veröffentlicht oder die FDA-Zulassung ansteht, bewegen sich die Aktienkurse massiv. Hierfür nutzt die KI folgende Datenbanken:
- **`clinical-trials-database`:** Greift direkt auf die Datenbank für klinische Studien (ClinicalTrials.gov) zu. Die KI kann prüfen, ob eine Studie für ein neues Medikament erfolgreich war, in welcher Phase sie steckt oder ob es Verzögerungen gibt.
- **`openfda-database`:** Greift auf die Daten der US-Gesundheitsbehörde (FDA) zu. Hier kann die KI prüfen, ob es Medikamenten-Rückrufe, Nebenwirkungs-Meldungen oder Zulassungen gibt, die ein Unternehmen gefährden könnten.

## 2. Wirkstoffe & Medikamente
- **`pubchem-database` & `chembl-database`:** Zwei riesige Datenbanken für chemische Verbindungen und Medikamente. Die KI kann damit prüfen, welche Wirkstoffe ein Unternehmen genau entwickelt, wie sie wirken und bei welchen Krankheiten sie eingesetzt werden.

## 3. Literatur & Fachartikel
Wenn es einen Hype um eine neue Technologie (wie z.B. mRNA-Impfstoffe damals) gibt, kann die KI die neuesten wissenschaftlichen Artikel dazu durchsuchen.
- **`pubmed-database`:** Sucht in der weltweit größten medizinischen Datenbank nach Fachartikeln.
- **`literature-search-arxiv` & `biorxiv`:** Sucht nach brandneuen Studien, die gerade erst von Forschern hochgeladen wurden (Preprints), noch bevor sie offiziell veröffentlicht sind.

## 4. Tiefe Biologie & Genetik (z.B. AlphaFold)
Diese Werkzeuge gehen tief in die biologische Forschung (Gene, Proteine, DNA).
- **`alphafold-database-fetch-and-analyze`:** Nutzt Googles KI "AlphaFold", um die 3D-Struktur von Proteinen zu analysieren.
- **Genetik-Datenbanken (`ensembl`, `gnomad`, `dbsnp`):** Werkzeuge, um genetische Mutationen und Krankheiten auf DNA-Ebene zu analysieren (relevant für Unternehmen im Bereich Gen-Editierung wie CRISPR).

## 5. Das selbstlernende System (Skill-Erstellung)
Dieses System kann nicht nur vorgegebene Skills abrufen, sondern *sich selbst neue Fähigkeiten beibringen*.
- **`workflow-skill-creator`:** Wenn wir im Chat gemeinsam einen neuen, exzellenten Weg zur Aktienbewertung (z.B. einen perfekten Bilanz-Scan oder ein bestimmtes Research-Muster) entwickelt haben, musst du keine neuen Text-Regeln schreiben. Du sagst einfach: *"Mach aus unserem letzten Workflow einen neuen Skill!"* Ich verpacke das dann im Hintergrund in ein dauerhaftes Werkzeug, das ich zukünftig auf Knopfdruck abrufen kann.

---

> **Fazit für dein Setup:** Du musst dir keinen dieser kryptischen Befehle merken. Wenn du zukünftig eine Pharma-Aktie analysieren willst, frag mich einfach ganz normal im Chat: *"Joachim hier. Bitte analysiere mir die Pipeline der Firma XYZ. Gibt es aktuelle klinische Studien zu ihrem neuen Alzheimer-Medikament, die Probleme machen könnten?"* – Ich wähle dann automatisch das richtige Werkzeug aus dieser Liste!
