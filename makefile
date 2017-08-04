all: archive log
archive:
	ebooks archive substation77 s77.tweets
log:
	erb log.tpl > log.html
