# Шаблон каталога курса для студентов

## Скачать репозиторий

git clone --recursive https://github.com/yamadharma/course-directory-student-template.git

# Основные идеи

- Стандартные соглашения об именах
- Стандартное соглашение для путей к файлам
- Стандартная настройка курса внутри шаблона курса

# Используемые стандарты и программные продукты

- Стандарт Git Flow.
- Стандарт Семантическое версионирование.
- Стандарт Общепринятые коммиты.

# Дополнительное программное обеспечение

## Средства разработки

### Fedora

- Установите средства разработки:

  ``` shell
  sudo dnf -y group install development-tools
  ```

## Quarto

### Установка

1.  Windows

    - Chocolatey (см. [Пакетный менеджер для Windows.
      Chocolatey](id:78f49355-a60d-4cb0-9f35-e7abd8b180df)):

      ``` shell
      choco install quarto
      ```

2.  Linux

    1.  Linux в общем

        - Установка с помощью скрипта:

          ``` shell
          #!/bin/bash

          ## Система
          TARGET=/opt
          TARGET_BIN=/usr/local/bin
          ## Домашний каталог
          # TARGET=~/opt
          # TARGET_BIN=~/.local/bin


          ## Получить тег
          TAG=`basename $(curl -sL -o /dev/null -w %{url_effective} https://github.com/quarto-dev/quarto-cli/releases/latest)`
          TAG=${TAG/v/}

          ## Скачать
          cd /tmp
          wget https://github.com/quarto-dev/quarto-cli/releases/download/v${TAG}/quarto-${TAG}-linux-amd64.tar.gz

          ## Распаковать
          mkdir -p ${TARGET}
          tar -C ${TARGET} -xvzf /tmp/quarto-${TAG}-linux-amd64.tar.gz
          mv ${TARGET}/quarto-${TAG} ${TARGET}/quarto

          ## Симлинк на исполняемый файл
          mkdir -p ${TARGET_BIN}
          ln -s ${TARGET}/quarto/bin/quarto ${TARGET_BIN}/quarto
          ```

    2.  Gentoo

        - Gentoo, репозиторий karma:

          ``` shell
          emerge quarto
          ```

    3.  Arch

        - Arch linux:

          ``` shell
          pacman -S quarto-cli-bin
          ```

        - Manjaro linux:

          ``` shell
          pamac install quarto-cli-bin
          ```

    4.  Fedora

        - Установка из CORP:

          ``` shell
          sudo dnf -y copr enable iucar/rstudio
          sudo dnf -y install quarto
          sudo dnf -y install libxcrypt-compat
          ```

## Общепринятые коммиты

### Установка Node.js

- На Node.js базируется программное обеспечение для семантического
  версионирования и общепринятых коммитов.

- Для управления пакетами лучше использовать `pnpm`, но можно и `yarn`.

- Gentoo

  - Node.js:

    ``` shell
    emerge nodejs
    emerge yarn
    ```

  - pnpm ставим из оверлея `guru`:

    ``` shell
    eselect repository enable guru
    emerge --sync guru
    emerge pnpm-bin
    ```

- Ubuntu

  ``` shell
  apt-get install nodejs
  apt-get install yarn
  ```

- Fedora

  ``` shell
  sudo dnf -y install nodejs
  sudo dnf -y install yarn pnpm
  ```

- Windows

  - Chocolatey:

    ``` shell
    choco install nodejs
    choco install yarn
    choco install pnpm
    ```

- MacOS

  ``` shell
  brew install node
  ```

### Настройка Node.js

Для работы с Node.js добавим каталог с исполняемыми файлами,
устанавливаемыми пакетным менеджером, в переменную `PATH`.

- Linux
  - `pnpm`
    - Запустите:

      ``` shell
      pnpm setup
      ```

    - Перелогиньтесь, или выполните:

      ``` shell
      source ~/.bashrc
      ```
  - `yarn`
    - В файле `~/.bashrc` добавьте к переменной `PATH`:

      ``` conf-unix
      PATH=~/.yarn/bin:$PATH
      ```

### Установка git-flow

- Linux

  - Gentoo

    ``` shell
    emerge dev-vcs/git-flow
    ```

  - Ubuntu

    ``` shell
    apt-get install git-flow
    ```

  - Fedora

    - Устанавливается из COPR:

      ``` shell
      sudo dnf -y copr enable elegos/gitflow
      sudo dnf install gitflow
      ```

- Windows Git-flow входит в состав пакета git.

  ``` shell
  choco install git
  ```

- MacOS

  ``` shell
  brew install git-flow
  ```

### Общепринятые коммиты

1.  commitizen

    - Данная программа используется для помощи в форматировании
      коммитов.
      - pnpm:

        ``` shell
        pnpm add -g commitizen
        ```

      - yarn:

        ``` shell
        yarn global add commitizen
        ```
    - При этом устанавливается скрипт `git-cz`, который мы и будем
      использовать для коммитов.

2.  standard-version

    - Данная программа автоматизирует изменение номера версии.
      - pnpm:

        ``` shell
        pnpm add -g standard-version
        ```

      - yarn:

        ``` shell
        yarn global add standard-version
        ```

# Общие правила

- Для именования каталогов и файлов будем использовать соглашение Denote.

- Рабочее пространство по предмету располагается в следующей иерархии:

  ``` bash
  ~/work/study/
  └── <учебный год>/
      └── <учебный год>==<код предмета>/
  ```

- Например, для 2025-2026 учебного года (второй семестр) и предмета
  «Операционные системы» (код предмета `os-intro`) структура каталогов
  примет следующий вид:

  ``` bash
  ~/work/study/
  └── 2026-1/
      └── 2026-1==os-intro/
  ```

- Название проекта на хостинге git имеет вид:

  ``` example
  <учебный год>--study--<код предмета>
  ```

- Например, для 2025-2026 учебного года и предмета «Операционные
  системы» (код предмета `os-intro`) название проекта примет следующий
  вид:

  ``` example
  2026-1--study--os-intro
  ```

- Каталог для лабораторных работ имеет вид `labs`.

- Каталоги для лабораторных работ имеют вид `lab<номер>`, например:
  `lab01`, `lab02` и т.д.

- Каталог для групповых проектов имеет вид `group-project`.

- Каталог для персональных проектов имеет вид `personal-project`.

- Каталог для внешнего курса имеет вид `external-course`.

- Если проектов несколько, то они нумеруются подобно лабораторным
  работам.

- Этапы проекта обозначаются как `stage<номер>`.

# Шаблон для рабочего пространства

- Репозиторий:
  <https://github.com/yamadharma/course-directory-student-template>.

## Сознание репозитория курса на основе шаблона

- Репозиторий на основе шаблона можно создать либо вручную, через
  web-интерфейс, либо с помощью утилит `gh`.

### Создание с помощью утилит

- Создание выглядит следующим образом:

  ``` shell
  gh repo create <new-repo-name> --template="<owner/template-repo>"
  ```

- Например, для 2024-2025 учебного года и предмета «Операционные
  системы» (аббревиатура предмета — `os-intro`) создание репозитория
  примет следующий вид:

  ``` shell
  mkdir -p ~/work/study/2026-1/2026-1==study--os-intro
  cd ~/work/study/2026-1/2026-1==study--os-intro
  gh repo create 2026-1--study--os-intro --template=yamadharma/course-directory-student-template --public
  git clone --recursive git@github.com:<owner>/2026-1--study--os-intro.git
  ```

### Создание вручную

- Сделать свой репозиторий на основе шаблона можно и вручную:
  <https://docs.github.com/ru/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template>.

## Структура шаблона

- Посмотреть доступные цели `make`:

  ``` shell
  make help
  ```

- Посмотреть список доступных курсов:

  ``` shell
  make list
  ```

- При создании структуры название курса берётся из следующих мест:

  - название курса находится в файле `COURSE`;
  - каталог курса называется как аббревиатура курса.

## Настройка каталога курса

- Перейдите в каталог курса:

  ``` shell
  cd ~/work/study/2026-1/2026-1==study--os-intro/2026-1--study--os-intro
  ```

- Создайте необходимые каталоги:

  ``` shell
  echo os-intro > COURSE
  make prepare
  ```

- Отправьте файлы на сервер:

  ``` shell
  git add .
  git commit -am 'feat(main): make course structure'
  git push
  ```

## Использование git flow

- Будем использовать для работы git flow.

### Конфигурация git-flow

- Инициализируем git-flow

  ``` shell
  git flow init
  ```

  Префикс для ярлыков установим в `v`.

- Проверьте, что Вы на ветке `develop`:

  ``` shell
  git branch
  ```

- Загрузите весь репозиторий в хранилище:

  ``` shell
  git push -u --all
  ```

- Создадим релиз с версией 1.0.0

  ``` shell
  git flow release start 1.0.0
  ```

- Создадим журнал изменений

  ``` shell
  standard-changelog --first-release
  ```

- Добавим журнал изменений в индекс

  ``` shell
  git add CHANGELOG.md
  git commit -am 'chore(site): add changelog'
  ```

- Зальём релизную ветку в основную ветку

  ``` shell
  git flow release finish 1.0.0
  ```

- Отправим данные на github

  ``` shell
  git push --all
  git push --tags
  ```

- Скопируем CHANGELOG.md в каталог `release`:

  ``` shell
  mkdir -p ../release
  cp CHANGELOG.md ../release
  ```

- Создадим релиз на github. Для этого будем использовать утилиты работы
  с github (см. [github: утилиты командной
  строки](id:d1925a41-6b4c-4a3a-b102-6337891b8841)):

  ``` shell
  gh release create v1.0.0 -F ../release/CHANGELOG.md
  ```

# Видео

[![RuTube](https://pic.rutubelist.ru/video/2025-09-03/f3/71/f371923b6802db01d0bc4735586e7b95.jpg)](https://rutube.ru/video/90a6233297bc6de30acb3af992eaedc8/)

[![Платформа](https://s-dt-rt1.cloud.edgecore.ru/fp-2025-09-cover/Jjf4mXm-h65_/607985b3-64d7-416f-b338-7e15cdcf5c3f.jpg)](https://plvideo.ru/watch?v=Jjf4mXm-h65_)

[![VKvideo](https://sun1-86.userapi.com/X4ozpnObDzOszkmLpm2NpauUx075QbpjA6fVGg/pOVZsIv3Ees.jpg)](https://vkvideo.ru/video-230024722_456239047)

[![Youtube](http://img.youtube.com/vi/39bu5avPoDU/0.jpg)](http://www.youtube.com/watch?v=39bu5avPoDU)
