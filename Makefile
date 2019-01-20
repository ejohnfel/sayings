# Variables
datapath = /srv/storage/data
template = waiting.xslt

# Rules

install: waiting.xml waiting.txt
	@[ -e $(datapath)/waiting.xml -o -L $(datapath)/waiting.xml ] && rm $(datapath)/waiting.xml
	@[ -e $(datapath)/waiting.txt -o -L $(datapath)/waiting.txt ] && rm $(datapath)/waiting.txt
	cp $^ $(datapath)/

waiting.txt: waiting.xml
	xsltproc -o $@ $(template) $<

waiting.xml:

