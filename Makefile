SVG = Every-mighty-Klingon-Warrior.svg
PNG = $(SVG).png
JPEG = $(SVG).jpg

WIDTH = 400

all: $(PNG) $(JPEG)

$(PNG): $(SVG)
	inkscape --export-png=$@ --export-width=800 $<
	optipng $@

$(JPEG): $(PNG)
	convert $(PNG) $(JPEG)

clean:
	rm -f $(PNG) $(JPEG)

# upload: all
#	rsync --progress -v -a --inplace human-hacking-field-guide-logo.svg hhfg-ad.svg hhfg-ad.svg.png $(__HOMEPAGE_REMOTE_PATH)/hhfg-graphics-demo/
