---
## Front matter
title: "Компьютерный практикум по статистическому анализу данных"
subtitle: "Отчёт по лабораторной работе №8: Оптимизация"
author: "Ахлиддинзода Аслиддин"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
  - \usepackage{unicode-math}
  - \setmathfont{Latin Modern Math}
---
# Цель работы

Основная цель работа — освоить пакеты Julia для решения задач оптимизации.

# Выполнение лабораторной работы

## 1. Линейное программирование

![1. Линейное программирование. Часть 1](image/1.PNG){ #fig:001 width=100% height=100% }

![1. Линейное программирование. Часть 2](image/2.PNG){ #fig:002 width=100% height=100% }

## 2. Векторизованные ограничения и целевая функция оптимизации

![2. Векторизованные ограничения и целевая функция оптимизации. Часть 1](image/3.PNG){ #fig:003 width=100% height=100% }

![2. Векторизованные ограничения и целевая функция оптимизации. Часть 2](image/4.PNG){ #fig:004 width=100% height=100% }

## 3. Оптимизация рациона питания

![3. Оптимизация рациона питания. Часть 1](image/5.PNG){ #fig:005 width=100% height=100% }

![3. Оптимизация рациона питания. Часть 2](image/6.PNG){ #fig:006 width=100% height=100% }

![3. Оптимизация рациона питания. Часть 3](image/7.PNG){ #fig:007 width=100% height=100% }

![3. Оптимизация рациона питания. Часть 4](image/8.PNG){ #fig:008 width=100% height=100% }

![3. Оптимизация рациона питания. Часть 5](image/9.PNG){ #fig:009 width=100% height=100% }

![3. Оптимизация рациона питания. Часть 6](image/10.PNG){ #fig:010 width=100% height=100% }

## 4. Путешествие по миру

![4. Путешествие по миру. Часть 1](image/11.PNG){ #fig:011 width=100% height=100% }

![4. Путешествие по миру. Часть 2](image/12.PNG){ #fig:012 width=100% height=100% }

![4. Путешествие по миру. Часть 3](image/13.PNG){ #fig:013 width=100% height=100% }

## 5. Портфельные инвестиции

![5. Портфельные инвестиции. Часть 1](image/14.PNG){ #fig:014 width=100% height=100% }

![5. Портфельные инвестиции. Часть 2](image/15.PNG){ #fig:015 width=100% height=100% }

![5. Портфельные инвестиции. Часть 3](image/16.PNG){ #fig:016 width=100% height=100% }

![5. Портфельные инвестиции. Часть 4](image/17.PNG){ #fig:017 width=100% height=100% }

![5. Портфельные инвестиции. Часть 5](image/18.PNG){ #fig:018 width=100% height=100% }

![5. Портфельные инвестиции. Часть 6](image/19.PNG){ #fig:019 width=100% height=100% }

## 6. Восстановление изображения

![6. Восстановление изображения. Часть 1](image/20.PNG){ #fig:020 width=100% height=100% }

![6. Восстановление изображения. Часть 2](image/21.PNG){ #fig:021 width=100% height=100% }

![6. Восстановление изображения. Часть 3](image/22.PNG){ #fig:022 width=100% height=100% }

![6. Восстановление изображения. Часть 4](image/23.PNG){ #fig:023 width=100% height=100% }

## 7. Задания для самостоятельного выполнения

### 1. Линейное программирование

![7.1 Линейное программирование](image/24.PNG){ #fig:024 width=100% height=100% }

### 2. Линейное программирование.Использование массивов

![7.2 Линейное программирование.Использование массивов](image/25.PNG){ #fig:025 width=100% height=100% }

### 3. Выпуклое программирование

![7.3 Выпуклое программирование. Часть 1](image/26.PNG){ #fig:026 width=100% height=100% }

![7.3 Выпуклое программирование. Часть 2](image/27.PNG){ #fig:027 width=100% height=100% }

### 4. Оптимальная рассадка по залам

![7.4 Оптимальная рассадка по залам](image/28.PNG){ #fig:028 width=100% height=100% }

### 5. План приготовления кофе

![7.5 План приготовления кофе](image/29.PNG){ #fig:029 width=100% height=100% }

# Вывод

В ходе выполнения лабораторной работы были изучены пакеты Julia для решения задач оптимизации.

# Список литературы. Библиография

[1] Julia Documentation: <https://docs.julialang.org/en/v1/>
