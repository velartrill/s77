all: archive log upload
archive:
	ebooks archive substation77 s77.tweets
log:
	erb log.tpl > F04.77.1.html
upload:
	git add .
	git commit -a -m "update site"
	git push
