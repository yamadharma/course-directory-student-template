---
## Front matter
title: "Компьютерный практикум по статистическому анализу данных"
subtitle: "Отчёт по лабораторной работе №6: Решение моделей в непрерывном и дискретном времени"
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

Основной целью работы является освоение специализированных пакетов для решения задач в непрерывном и дискретном времени.

# Выполнение лабораторной работы

## Решение обыкновенных дифференциальных уравнений

Вспомним, что обыкновенное дифференциальное уравнение (ОДУ) описывает изменение некоторой 
переменной u.

Для решения обыкновенных дифференциальных уравнений (ОДУ) в Julia можно использовать пакет 
diffrentialEquations.jl.

## Модель экспоненциального роста

Рассмотрим пример использования этого пакета для решение уравнения модели экспоненциального роста, описываемую уравнением, где a — коэффициент роста. 

Численное решение в Julia будет иметь следующий вид, а также график, соответствующий полученному решению (рис. [-fig@:001]):

![График модели экспоненциального роста](image/1.PNG){ #fig:001 width=100% height=100% }

При построении одного из графиков использовался вызов sol.t, чтобы захватить массив моментов времени. Массив решений можно получить, воспользовавшись sol.u.

Если требуется задать точность решения, то можно воспользоваться параметрами abstol (задаёт близость к нулю) и reltol (задаёт относительную точность). По умолчанию эти параметры имеют значение abstol = 1e-6 и reltol = 1e-3.

Для модели экспоненциального роста(рис. [-fig@:002])

![График модели экспоненциального роста(задана точность решения)](image/2.PNG){ #fig:002 width=100% height=100% }

## Система Лоренца

Динамической системой Лоренца является нелинейная автономная система обыкновенных дифференциальных уравнений третьего порядка.

Система получена из системы уравнений Навье–Стокса и описывает движение воздушных потоков в плоском слое жидкости постоянной толщины при разложении скорости течения и температуры в двойные ряды Фурье с последующем усечением до первых-вторых гармоник.

Решение системы неустойчиво на аттракторе, что не позволяет применять классические численные методы на больших отрезках времени, требуется использовать высокоточные вычисления.

Численное рещение на языке Julia будет иметь следующий вид(рис. [-fig@:003]):

![Аттрактор Лоренца](image/3.PNG){ #fig:003 width=100% height=100% }

Можно отключить интерполяцию(рис. [-fig@:004])

![Аттрактор Лоренца(интерполяция отключена)](image/4.PNG){ #fig:004 width=100% height=100% }

## Модель Лотки-Вольтерры

Модель Лотки–Вольтерры описывает взаимодействие двух видов типа «хищник – жертва».

Численное рещение на языке Julia будет иметь следующий вид(рис. [-fig@:005]):

![Модель Лотки–Вольтерры: динамика изменения численности популяций](image/5.PNG){ #fig:005 width=100% height=100% }

Фазовый портрет(рис. [-fig@:006])

![Модель Лотки–Вольтерры: фазовый портрет](image/6.PNG){ #fig:006 width=100% height=100% }

## Самостоятельное выполнение

Выполнение задания №1 (рис. [-@fig:007]):

![Выполнение задания №1](image/7.PNG){ #fig:007 width=100% height=100% }

Выполнение задания №2 (рис. [-@fig:008]):

![Выполнение задания №2](image/8.PNG){ #fig:008 width=100% height=100% }

Выполнение задания №3 (рис. [-@fig:009]):

![Выполнение задания №3](image/9.PNG){ #fig:009 width=100% height=100% }

Выполнение задания №4 (рис. [-@fig:010]):

![Выполнение задания №4](image/10.PNG){ #fig:010 width=100% height=100% }

Выполнение задания №5.(рис. [-@fig:011]):

![Выполнение задания №5. ](image/11.PNG){ #fig:011 width=100% height=100% }

Выполнение задания №6.(рис. [-@fig:012]):

![Выполнение задания №6](image/12.PNG){ #fig:012 width=100% height=100% }

Выполнение задания №7 (рис. [-@fig:013]):

![Выполнение задания №7](image/13.PNG){ #fig:013 width=100% height=100% }

Выполнение задания №8 (рис. [-@fig:014]):

![Выполнение задания №8](image/14.PNG){ #fig:014 width=100% height=100% }


# Вывод

В ходе выполнения лабораторной работы были освоены специализированные пакеты для решения задач в непрерывном и дискретном времени.

# Список литературы. Библиография

[1] Mininet: https://mininet.org/
