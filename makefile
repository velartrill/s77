all: archive log
archive:
	ebooks archive substation77 s77.tweets
log:
	erb log.tpl > F04.77.1.html
