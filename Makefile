# Variables
datapath = /srv/storage/data
webpath = /srv/storage/www/me

waitingtxttemplate = waiting-txt.xslt
latintxttemplate = latin-sayings-txt.xslt

# Rules

install: install-waiting-txt install-latin-txt install-latin-xml install-waiting-xml
	@echo "Installing files"

install-latin-xml: latin-sayings.xml latin-sayings.xslt latin-sayings.css
	@[ -e $(webpath)/latin-sayings.xml -o -L $(webpath)/latin-sayings.xml ] && rm $(webpath)/latin-sayings.xml || true
	@[ -e $(webpath)/latin-sayings.xslt -o -L $(webpath)/latin-sayings.xslt ] && rm $(webpath)/latin-sayings.xslt || true
	@[ -e $(webpath)/latin-sayings.css -o -L $(webpath)/latin-sayings.css ] && rm $(webpath)/latin-sayings.css || true
	cp $^ $(webpath)/

install-latin-txt: latin-sayings.xml latin-sayings.txt
	@[ -e $(datapath)/latin-sayings.xml -o -L $(datapath)/latin-sayings.xml ] && rm $(datapath)/latin-sayings.xml || true
	@[ -e $(datapath)/latin-sayings.txt -o -L $(datapath)/latin-sayings.txt ] && rm $(datapath)/latin-sayings.txt || true
	cp $^ $(datapath)/

install-waiting-xml: waiting.xml waiting.xslt waiting.css
	@[ -e $(webpath)/waiting.xml -o -L $(webpath)/waiting.xml ] && rm $(webpath)/waiting.xml || true
	@[ -e $(webpath)/waiting.xslt -o -L $(webpath)/waiting.xslt ] && rm $(webpath)/waiting.xslt || true
	@[ -e $(webpath)/waiting.css -o -L $(webpath)/waiting.css ] && rm $(webpath)/waiting.css || true
	cp $^ $(webpath)/

install-waiting-txt: waiting.xml waiting.txt
	@[ -e $(datapath)/waiting.xml -o -L $(datapath)/waiting.xml ] && rm $(datapath)/waiting.xml || true
	@[ -e $(datapath)/waiting.txt -o -L $(datapath)/waiting.txt ] && rm $(datapath)/waiting.txt || true
	cp $^ $(datapath)/

waiting.txt: waiting.xml $(waitingtxttemplate)
	xsltproc -o $@ $(waitingtxttemplate) $<

waiting.css:

waiting.xml:

latin-sayings.txt: latin-sayings.xml $(latintxttemplate)
	xsltproc -o $@ $(latintxttemplate) $<

latin-sayings.css:

latin-sayings.xml:
