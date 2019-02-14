# This is LuaTeX, Version 0.95.0 (TeX Live 2016/Debian)
#
# Luis A. Ochoa

TEX      = lualatex
TEXFLAGS = --shell-escape --output-directory=images

IMAGES_TEX = $(wildcard *.tex)
IMAGES_PDF = $(subst tex,pdf,$(IMAGES_TEX))

build: $(IMAGES_PDF)

%.pdf: %.tex
	$(TEX) $(TEXFLAGS) $<

clean:
	$(RM) images/*.aux images/*.log images/*.pdf

$(shell mkdir -p images)
