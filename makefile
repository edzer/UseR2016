all:
	vi tutorial.Rmd
	Rscript -e 'library(rmarkdown); render("tutorial.Rmd")'
	cp tutorial.html html/index.html

view:
	google-chrome tutorial.html

commit:
	git commit -a

push:
	git commit -a -m 'update'
	git push
	(cd html; git commit -a -m 'update'; git push origin gh-pages)
