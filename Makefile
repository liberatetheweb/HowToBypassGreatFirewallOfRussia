LANG=ru_RU.utf8
all:
	xelatex --jobname=HowToBypassGreatFirewallOfRussia book.tex
	bibtex HowToBypassGreatFirewallOfRussia
	xelatex --jobname=HowToBypassGreatFirewallOfRussia book.tex
	xelatex --jobname=HowToBypassGreatFirewallOfRussia book.tex
	exiftool -overwrite_original -all= -Title="Как обойти Великий Российский Файрвол" -Author="Liberate the Web" -AttributionURL="http://anonhandbook.org" -License="https://creativecommons.org/publicdomain/zero/1.0/" -URL="http://anonhandbook.org" HowToBypassGreatFirewallOfRussia.pdf
clean:
	rm -rf HowToBypassGreatFirewallOfRussia.out HowToBypassGreatFirewallOfRussia.aux HowToBypassGreatFirewallOfRussia.log HowToBypassGreatFirewallOfRussia.toc HowToBypassGreatFirewallOfRussia.blg HowToBypassGreatFirewallOfRussia.bbl
