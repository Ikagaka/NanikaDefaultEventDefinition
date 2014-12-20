LIB_SOURCES := $(wildcard src/NanikaEventDefinition.*.coffee)
LIB_TARGETS = $(subst src/,lib/, $(LIB_SOURCES:.coffee=.js))

all: $(LIB_TARGETS) lib/NanikaDefaultEventDefinition.min.js

lib/NanikaDefaultEventDefinition.js: $(LIB_TARGETS)
	cat $^ > $@

lib/NanikaDefaultEventDefinition.min.js: lib/NanikaDefaultEventDefinition.js
	uglifyjs --preamble "/* (C) 2014 Narazaka : Licensed under The MIT License - http://narazaka.net/license/MIT?2014 */" --screw-ie8 $^ -o $@

lib/%.js: src/NanikaEventDefinition-prefix.coffee src/%.coffee src/NanikaEventDefinition-postfix.coffee
	cat $^ | coffee -c --stdio > $@
