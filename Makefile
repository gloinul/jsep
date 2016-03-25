PUSH_GHPAGES_BRANCHES=false

include lib/main.mk



lib/main.mk:
ifneq (,$(shell git submodule status lib 2>/dev/null))
	git submodule sync
	git submodule update --init
else
	git clone --depth 10 -b instruments https://github.com/ekr/i-d-template.git lib
endif

