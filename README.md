# LaTeX-Klasse und Vorlage für DFG Anträge im Normalverfahren (Vordruck 53.01, Stand 2022-03)

Dieses Repository stellt eine LaTeX-Klasse `dfg-proposal` bereit, welche den Vordruck 53.01 (RTF-Vorlage) der Deutschen
Forschungsgemeinschaft (DFG) reproduziert.
Die Datei `antrag.tex` ist eine Vorlage, welche bereits die obligatorischen Abschnitte des Antragstextes enthält und für
eigene Zwecke angepasst werden kann.
Die Vorlage wird regelmäßig aktualisiert, wenn sich die Anforderungen der DFG ändern.
Es kann jedoch nicht garantiert werden, dass dies unmittelbar geschieht.
Nutzer sind selbst dafür verantwortlich, die Konformität mit den aktuellen Anforderungen zu prüfen, der Autor übernimmt
hierfür keine Verantwortung und/oder Haftung.

Ein Beispiel des Ergebnisses in [`antrag.pdf`](antrag.pdf) zu finden.

Der Inhalt dieses Repositories wird unter der MIT Lizenz zur Verfügung gestellt, unbeschadet aller Rechte der DFG and
der originalen Vorlage, welche [hier](https://www.dfg.de/formulare/53_01_elan/53_01_de_elan.rtf) abgerufen werden kann.

Die Klasse basiert auf der KOMA-Script-Klasse `scrartcl`, daher können alle Funktionen von KOMA-Script wie gewohnt
benutzt werden. Im Folgenden werden Änderungen im Vergleich zu `scrartcl` beschrieben.

## Schriftart

Es wird die Schriftart Arial benutzt, dazu wird der im System installierte TTF-Font über `fontspec` geladen.
Deswegen ist das Dokument mit XeLaTeX oder LuaLaTeX zu kompilieren (*pdfLaTeX funktioniert nicht!*).
Der Font muss im System installiert sein. Unter Windows ist dieser gewöhnlich vorhanden, unter Linux und Mac muss er
ggf. nachinstalliert werden.
Für Mathematik wird der Standard-CM-Font beibehalten.
Mehrere Font-Einstellungen werden mit `\setkomafont` angepasst.

## Seitenformat

Der Satzspiegel wird mit `geometery` festgelegt, um die Randvorgaben zu erfüllen.

## Titelei

Der Befehl `\makettitle` wird umdefiniert um dem Dokumentkopf der Antragsvorlage zu entsprechen.
Das `\subject` enthält standardmäßig die Zeile "Beschreibung des Vorhabens - Projektanträge".
Der `\title` wird als der Projekttitel verwendet.
Der `\author` hat hier die Bedeutung des Antragstellers.
Mehrere Antragsteller können wie gewohnt mit `\and` aufgezählt werden.
Das `\date` kann zwar festgelegt werden, wird aber nirgendwo ausgegeben.

Die Fußzeile der ersten Seite ist hier der Einfachheit halber als `figure` gesetzt, welche von `\makettitle`
ausgegeben wird, sollten damit Probleme auftreten, so wird um Meldung gebeten.

## Gliederung

Die Formatierung des Befehls `\paragraph` wird umdefiniert, damit dieser wie `\subsubsection` erscheint und somit für
die vierte Gliederungsebene vor allem im Bereich der Kostenaufstellungen zu gebrauchen ist.
Damit keine Konflikte mit der Gliederung der DFG auftreten, wird empfohlen, für eigene Überschriften innerhalb der
einzelnen Abschnitte den KOMA-Script-Befehl `\minisec` zu verwenden, da dieser keiner Gliederungsebene direkt zugeordnet
ist.

Die DFG teilt den Antrag in zwei Teile mit den Abschnitten 1-3 und 4-5, dies geschieht hier durch den
Befehl `\partbreak`.
Damit wird ein Seitenumbruch erzeugt, die Kopfzeile verändert und der Seitenzähler zurückgesetzt.

## Sonstiges

Kopf und Fußzeilen wurden mittels `scrlayer-scrpage` entsprechend gesetzt.

Folgende Pakete werden von der Klasse geladen: `geometry`, `fontspec`, `xcolor`, `fontsize`, `xpatch`,
`scrlayer-scrpage`.


