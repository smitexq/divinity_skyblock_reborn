#Отвечает за присутствие рядом другого маркера. Если 0, то рядом никого нет
scoreboard players set *var2 variables 0
#Глубина рекурсии, если будет слишком много раз выполняться функция, то оставим маркер на текущем месте
scoreboard players add @s RecursionDepth 1

#Телепортируем маркер. При этом позиция выполнения этой функции все еще остается на месте мини-босса
# spreadplayers ~ ~ 1 8 false @s
###Распределение с учетом высоты
function entities:mobs/abilities/api/spreadplayers/store_height
data modify storage dsb:temp spreadplayers.range set value "1 8"
data modify storage dsb:temp spreadplayers.target set value "@s"
function entities:mobs/abilities/api/spreadplayers/under_height with storage dsb:temp spreadplayers
###

#Если маркер был телепортирован НЕ дальше, чем 5 блоков от мини-босса, то телепортируем его еще раз
execute unless entity @s[distance=5..] if score @s RecursionDepth matches ..100 run return run function entities:mobs/abilities/powerful_blast/random_position
#Если рядом с маркером в радиусе 9 блоков есть другой маркер, то телепортируем его еще раз
#При этом мы используем переменную, потому что в 10-ой строчке используется at @s, значит позиция переместится к маркеру, а нам нужна позиция относительно мини босса. Как это при помощи переменной мы можем проверить в 11-ой строчке, что рядом с маркером есть другой и и после этого мы телепортируем
execute at @s if entity @e[type=marker,tag=BlastMarker,distance=..9] if score @s RecursionDepth matches ..100 run scoreboard players set *var2 variables -1
execute if score *var2 variables matches -1 run return run function entities:mobs/abilities/powerful_blast/random_position

#Тег, помечающий маркер как постоянный, чтобы для новых маркеров можно было проверять, чтобы рядом не было уже постоянных
tag @s add BlastMarker

#Если маркеров меньше трех, то спавним еще. И из-за return функция ниже не выполняется
execute if score *var1 variables matches ..2 run return run function entities:mobs/abilities/powerful_blast/on_marker

#А если маркеров 3, то return не срабатывает и мы выполняем команду ниже (спавним взрывы)
execute as @e[type=marker,tag=BlastMarker] at @s run function entities:mobs/abilities/powerful_blast/summon_blast
