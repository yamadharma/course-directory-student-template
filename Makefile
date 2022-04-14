COURSE = 

.PHONY: all clean

ifndef COURSE
$(error "Usage: make COURSE=<course_name>")
else
include config/course/$(COURSE)
endif

all: structure

structure:	## Generate directories structure
	@[ -z "$(LABS)" ] || config/script/lab {$(LABS)}
	@[ -z "$(PROJECT_PERSONAL)" ] || config/script/project-personal {$(PROJECT_PERSONAL)}
	@[ -z "$(PROJECT_GROUP)" ] || config/script/project-group {$(PROJECT_GROUP)}
	@touch structure

