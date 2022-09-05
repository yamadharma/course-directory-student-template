COURSE = 

.PHONY: all clean

#ifndef COURSE
#$(error "Usage: make COURSE=<course_name>")
#else
#include config/course/$(COURSE)
#endif

all: prepare

help:
	@echo 'Usage:'
	@echo '  make <target>'
	@echo 
	@echo 'Targets:'
	@grep -E '^[a-zA-Z_0-9.-]+:.*?##.*$$' $(MAKEFILE_LIST) | grep -v '###' | sort | cut -d: -f1- | awk 'BEGIN {FS = ":.*?##"}; {printf "  \033[36m%-30s\033[0m %s\n", $$1, $$2}'
	@grep -E '^###.*' $(MAKEFILE_LIST) | cut -d' ' -f2- | awk 'BEGIN {FS = "###"}; {printf "%s\n", $$1, $$2}'
	@grep -E '^[a-zA-Z_0-9.-]+:.*?###.*$$' $(MAKEFILE_LIST) | sort | cut -d: -f2- | awk 'BEGIN {FS = ":.*?###"}; {printf "  \033[36m%-30s\033[0m %s\n", $$1, $$2}'
	@echo

list:	## List of courses
	@./config/script/list-courses

prepare:	## Generate directories structure
	@./config/script/prepare
	@touch prepare
