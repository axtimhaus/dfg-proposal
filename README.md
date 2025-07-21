# LaTeX-Klasse und Vorlage für DFG Anträge im Normalverfahren (Vordruck 53.01, Stand 2025-03)

Dieses Repository stellt eine LaTeX-Klasse `dfg-proposal` bereit, welche den
Vordruck 53.01 (RTF-Vorlage) zur Beantragung von Einzelprojekten (Sachbeihilfe)
der Deutschen Forschungsgemeinschaft (DFG) reproduziert. Die Datei
[`antrag.tex`](antrag.tex) ist eine Vorlage, welche bereits die obligatorischen
Abschnitte des Antragstextes enthält und für eigene Zwecke angepasst werden
kann. Eine englische Version äquivalenten Inhalts ist in
[`proposal.tex`](proposal.tex) zu finden. Die Vorlage wird regelmäßig
aktualisiert, wenn sich die Anforderungen der DFG ändern. Es kann jedoch nicht
garantiert werden, dass dies unmittelbar geschieht. Nutzer sind selbst dafür
verantwortlich, die Konformität mit den aktuellen Anforderungen zu prüfen, der
Autor übernimmt hierfür keine Verantwortung und/oder Haftung.

Beispiele des Ergebnisses in [`antrag.pdf`](antrag.pdf) (deutsche Version) und
[`proposal.pdf`](proposal.pdf) zu finden.

Der Inhalt dieses Repositories wird unter der MIT Lizenz zur Verfügung gestellt,
unbeschadet aller Rechte der DFG an der originalen Vorlage, welche
[hier](https://www.dfg.de/formulare/53_01_elan/53_01_de_elan.rtf) abgerufen
werden kann.

Die Klasse basiert auf der KOMA-Script-Klasse `scrartcl`, daher können alle
Funktionen von KOMA-Script wie gewohnt benutzt werden. Im Folgenden werden
Änderungen im Vergleich zu `scrartcl` beschrieben.

## Schriftart

Es werden die TeX Gyre Schriftarten benutzt. Dabei kommt Heros (ähnlich
Helvetica/Arial) als serifenlose Hauptschriftart zum Einsatz. Als Serifenfont
und Mathefont wird Termes verwendet. Als dicktengleich Schrift wirrd Cursor
verwendet. Dies ist sowohl mit PDFLaTeX (`tg...`-Pakete), als auch LuaLaTeX und
XeLaTex (`fontspec`) kompatibel. Bei letzteren wird zusätzlich `unicode-math`
verwendet. Mehrere Font-Einstellungen werden mit `\setkomafont` angepasst.

## Seitenformat

Der Satzspiegel wird mit `geometery` festgelegt, um die Randvorgaben zu
erfüllen.

## Titelei

Der Befehl `\makettitle` wird umdefiniert um dem Dokumentkopf der Antragsvorlage
zu entsprechen. Das `\subject` enthält standardmäßig die Zeile "Beschreibung des
Vorhabens - Projektanträge". Der `\title` wird als der Projekttitel verwendet.
Der `\author` hat hier die Bedeutung des Antragstellers. Mehrere Antragsteller
können wie gewohnt mit `\and` aufgezählt werden. Das `\date` kann festgelegt
werden, wird aber nur auf dem Seitenkopf ausgegeben (für interne Zwecke wie
Freigaben etc.). Ist kein Datum gegeben, bleibt der mittlere Seitenkopf leer.

## Gliederung

Die Formatierung des Befehls `\paragraph` wird umdefiniert, damit dieser wie
`\subsubsection` erscheint und somit für die vierte Gliederungsebene vor allem
im Bereich der Kostenaufstellungen zu gebrauchen ist. Damit keine Konflikte mit
der Gliederung der DFG auftreten, wird empfohlen, für eigene Überschriften
innerhalb der einzelnen Abschnitte den KOMA-Script-Befehl `\minisec` zu
verwenden, da dieser keiner Gliederungsebene direkt zugeordnet ist.

Die DFG teilt den Antrag in zwei Teile mit den Abschnitten 1-3 und 4-5, dies
geschieht hier durch den Befehl `\partbreak`. Damit wird ein Seitenumbruch
erzeugt, die Kopfzeile verändert und der Seitenzähler zurückgesetzt.

## Sprache

Die Klasse reagiert selbständig auf die Spracheinstellung mit `babel` (`ngerman`
oder `english`). Dabei werden die Kopfzeilen sowie die Titelei in entsprechender
Sprache ausgegeben.

## Sonstiges

Kopf und Fußzeilen wurden mittels `scrlayer-scrpage` entsprechend gesetzt.

Folgende Pakete werden von der Klasse geladen: `geometry`, `iftex`, `tgtermes`
(nur PDFLaTeX), `tgheros` (nur PDFLaTeX), `tgcursor` (nur PDFLaTeX), `fontspec`
(nur LuaLaTeX und XeLaTex), `scrlayer-scrpage`.
