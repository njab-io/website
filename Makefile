# per
# https://www.emergeinteractive.com/insights/detail/the-essentials-of-favicons/
# the current (2022) list is: 32x32, 128x128, 180x180 and 192x192
SIZES=favicon-32.png favicon-128.png favicon-180.png favicon-192.png

public/favicon.ico: ${SIZES}
	convert ${SIZES} $@

favicon-%.png: favicon.svg
	inkscape -w $* -h $* -o $@ $<

clean:
	rm -f ${SIZES}
