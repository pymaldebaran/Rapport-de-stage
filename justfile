# generate the whole report
pandoc:
	pandoc --pdf-engine=xelatex rapport.md -o rapport.pdf

# install the UTBM LaTeX template
install-utbm:
	#!/usr/bin/env bash
	set -euxo pipefail
	cd /tmp
	rm -rf utbm-latex-internship-report-covers
	git clone git@github.com:pinam45/utbm-latex-internship-report-covers.git
	mkdir -p "$HOME/texmf/tex/latex/"
	cp -r utbm-latex-internship-report-covers "$HOME/texmf/tex/latex/"
	sudo mktexlsr
	sudo update-updmap --quiet
