# XeLaTeX-Vorlage

Dieses Repository enthält eine Vorlage für kurze Dokumente in deutscher Sprache,
gesetzt mit XeLaTeX.

[**Vorschau 👀**](https://github.com/jessestricker/xelatex-vorlage/releases/download/latest/index.pdf)

## Inhalt

Diese Pakete werden verwendet:

- [_scrartcl_](https://ctan.org/pkg/scrartcl):
  Flexiblere Variante der `article`-Dokumentenklasse
- [_unicode-math_](https://ctan.org/pkg/unicode-math):
  Verwendung von OpenType-Schriftarten für Mathematik-Textsatz
- [_libertinus-otf_](https://ctan.org/pkg/libertinus-otf):
  OpenType-Schriftarten _Libertinus Serif_ und _Libertinus Sans_
- [_polyglossia_](https://ctan.org/pkg/polyglossia):
  Lokalisierung ins Deutsche
- [_datetime2_](https://ctan.org/pkg/datetime2):
  Lokalisierte Datumsangaben
- [_cleveref_](https://ctan.org/pkg/cleveref):
  Querverweise mit lokalisierten Typenbeschreibungen
- [_metalogo_](https://ctan.org/pkg/metalogo):
  TeX-Logos
- [_booktabs_](https://ctan.org/pkg/booktabs):
  Professionellere Tabellen
- [_tabularx_](https://ctan.org/pkg/tabularx):
  Automatische Spaltenbreite in Tabellen
- [_siunitx_](https://ctan.org/pkg/siunitx):
  SI-Einheiten und Zahlen

## Verwendung

Für den Editor [Visual Studio Code](https://code.visualstudio.com/) sind
Buildaufgaben (in [tasks.json](.vscode/tasks.json)) bereits enthalten:

- [_latexmk_](https://ctan.org/pkg/latexmk) (empfohlen):\
  Dieses Script automatisiert das Kompilieren des Dokumentes vollständig.
  Es ist in allen TeX-Distributionen enthalten, benötigt allerdings Perl.
- [_tectonic_](https://tectonic-typesetting.github.io):\
  Moderne Alternative, welche ohne TeX-Distribution auskommt.
  Allerdings sind die Pakete etwas veraltet, auf dem Stand von TeX Live 2020.
