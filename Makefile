slides: slides.asc slides.css Makefile
	cdk --notransition --custom-css=slides.css slides.asc
#	cdk --notransition --attribute stylesheet=slides.css slides.asc

clean:
	rm -f slides.html

watch:
	fswatch -0 -l 0.1 slides.asc slides.css | xargs -0 -n 1 -I ' ' make slides
