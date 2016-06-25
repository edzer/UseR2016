all:
	vi tutorial.Rmd
	Rscript -e 'library(methods); library(rmarkdown); render("tutorial.Rmd")'
	cp tutorial.html html/index.html

view:
	google-chrome tutorial.html

commit:
	git commit -a

push:
	git commit -a -m 'update'
	git push
	(cd html; git commit -a -m 'update'; git push origin gh-pages)

zip:
	rm tutorial.zip
	zip tutorial.zip location*png tutorial.Rmd spatial.png st.png trajectories.png intro.png choro.png lu.jpg

www:
	scp tutorial.zip pebesma@staff.ifgi.de:public_html
