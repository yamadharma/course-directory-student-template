COURSE = 

.PHONY: all clean

ifndef COURSE
$(error "Usage: make COURSE=<course_name>")
else
include template/course/$(COURSE)
endif

all: structure

structure:	## Generate directories structure
	@[ -z "$(LAB_NUM)" ] || config/script/lab {$(LAB_NUM)}
	@[ -z "$(PROJECT_PERSONAL)" ] || mkdir project_personal
	@[ -z "$(PROJECT_GROUP)" ] || mkdir project_group
	@touch structure

