.phony: default
default: work
MODULE = VREP
TEX = $(MODULE).tex bib.tex intro.tex install.tex
TEX += tutors.tex habr57.tex bubblebob.tex buildmodel.tex
TEX += extension.tex plugins.tex

TEX += excontroller.tex chscript.tex ctlplugin.tex remoteapi.tex 
TEX += rosnode.tex sockets.tex

TEX += script.tex lexer.tex parser.tex scriptcpp.tex
TEX += langtutor.tex

include ../texheader/Makefile

work: work.tex $(TEX)
	$(LATEX) $< && $(LATEX) $<
