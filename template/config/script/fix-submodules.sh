#!/bin/bash

### Определяем текущий origin URL
ORIGIN_URL=$(git remote get-url origin)

if [[ $ORIGIN_URL == *"github.com"* ]]; then
	git submodule set-url template/report https://github.com/yamadharma/academic-laboratory-report-template.git
	git submodule set-url template/presentation https://github.com/yamadharma/academic-presentation-markdown-template.git
elif [[ $ORIGIN_URL == *"gitverse.ru"* ]]; then
	git submodule set-url template/report https://gitverse.ru/dharma/academic-laboratory-report-template.git
	git submodule set-url template/presentation https://gitverse.ru/dharma/academic-presentation-markdown-template.git
fi

git submodule update --init --recursive
git submodule sync

