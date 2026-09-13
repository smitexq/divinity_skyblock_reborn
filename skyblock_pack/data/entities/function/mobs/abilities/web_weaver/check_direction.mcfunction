#Мы постоянно телепортируемся на 10 градусов правее и проверяем вертикаль от -40 до 0 грудусов
#Опускаем вектор на 10 градусов ниже 4 раза
tp @s ~ ~ ~ ~ ~10
#Лимит на выполнение рекурсии (4 раза)
scoreboard players add @s RecursionDepth 1

#Переменная отвечает за глубину рекурсии (16, то есть 16*0.5 = 8 блоков вперед)
scoreboard players set *var1 variables 0
#Переменная отвечает за пустые блоки на пути вектора. Если -1, значит был найден плотный блок и можно запускать паутину, но если плотного блока не было, тогда выбирается другое направление
scoreboard players set *var3 variables 0

#Относительно текущего взгляда маркера вперед проверяем блоки на этом векторе. Если был найден плотный блок, то больше не проверяем другие направления
execute rotated as @s positioned ^ ^ ^1 run function entities:mobs/abilities/web_weaver/loop
#Соответственно, если на пути были все пустые блоки, то выбираем другое направление
execute unless score *var3 variables matches -1 if score @s RecursionDepth matches ..3 rotated as @s run return run function entities:mobs/abilities/web_weaver/check_direction
#Но если мы с 4-ой попытки не нашли направление по вертикали, на пути которого будут плотные блоки, значит двигаемся на 10 градусов правее
execute unless score *var3 variables matches -1 run return run function entities:mobs/abilities/web_weaver/select_direction