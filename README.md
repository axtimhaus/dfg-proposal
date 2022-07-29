# LaTeX-Klasse und Vorlage für DFG Anträge im Normalverfahren (Vordruck 53.01, Stand 2022-03)

Dieses Repository stellt eine LaTeX-Klasse `dfg-proposal` bereit, welche den Vordruck 53.01 (RTF-Vorlage) der Deutschen
Forschungsgemeinschaft (DFG) reproduziert.
Die Datei `antrag.tex` ist eine Vorlage, welche bereits die obligatorischen Abschnitte des Antragstextes enthält und für
eigene Zwecke angepasst werden kann.
Die Vorlage wird regelmäßig aktualisiert, wenn sich die Anforderungen der DFG ändern.
Es kann jedoch nicht garantiert werden, dass dies unmittelbar geschieht.
Nutzer sind selbst dafür verantwortlich, die Konformität mit den aktuellen Anforderungen zu prüfen, der Autor übernimmt
hierfür keine Verantwortung und/oder Haftung.

Die Klasse basiert auf der KOMA-Script-Klasse `scrartcl`, daher können alle Funktionen von KOMA-Script wie gewohnt benutzt werden.
Die Formatierung des Befehls `\paragraph` wird umdefiniert, damit dieser wie `\subsubsection` erscheint und somit für die
vierte Gliederungsebene vor allem im Bereich der Kostenaufstellungen zu gebrauchen ist.
Die Fußzeile der ersten Seite ist hier der Einfachheit halber als Fließobjekt gesetzt, welches von `\makettitle` ausgegeben wird, 
sollten damit Probleme auftreten, so wird um Meldung gebeten.
Damit keine Konflikte mit der Gliederung der DFG auftreten, wird empfohlen, für eigene Überschriften innerhalb der einzelnen Abschnitte den KOMA-Script-Befehl `\minisec` zu verwenden, da dieser keiner Gliederungsebene direkt zugeordnet ist.
Die Verwendung von `biblatex` für die Literaturverwaltung ist vorausgewählt und das Literaturverzeichnis wird im Abschnitt 3 ausgegeben, eigene Anpassungen sind natürlich möglich.
Die DFG teilt den Antrag in zwei Teile mit den Abschnitten 1-3 und 4-5, dies geschieht hier durch den Befehl `\partbreak`.
Damit wird die Kopfzeile verändert, ein Seitenumbruch erzeugt und der Seitenzähler zurückgesetzt.

Der Inhalt dieses Repositories wird unter der MIT Lizenz zur Verfügung gestellt, unbeschadet aller Rechte der DFG and
der originalen Vorlage, welche [hier](https://www.dfg.de/formulare/53_01_elan/53_01_de_elan.rtf) abgerufen werden kann.
