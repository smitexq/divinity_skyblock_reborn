#Если это последний маркер, то на его месте вместо взрыва призываем возгорание
execute if entity @s[tag=last] run return run function entities:mobs/abilities/powerful_blast/summon_blast


#Разрушаем центральный блок. Он под маркером, так как ломание блоков происходит относительно позиции блока под маркером
setblock ~ ~-1 ~ air destroy

#Задаем количество разрушаемых боковых блоков
execute store result score *var2 variables run random value 2..5

#Создаем массив из относительных координат (по одному блоку в каждую сторону). Задаем последний индекс 5
data modify storage dsb:temp BreakBlocks.coords set value [{x:1,y:"",z:""},{x:"",y:1,z:""},{x:"",y:"",z:1},{x:-1,y:"",z:""},{x:"",y:-1,z:""},{x:"",y:"",z:-1}]
execute store result storage dsb:temp BreakBlocks.lastIndex int 1 run scoreboard players set *var1 variables 5

#Выбираем случайный индекс
execute store result storage dsb:temp BreakBlocks.index int 1 run random value 0..5
#Выбираем из массива элемент с этим индексом
function entities:mobs/abilities/blast/select_destroy_position with storage dsb:temp BreakBlocks

#Частицы и звук
particle minecraft:angry_villager ~ ~-0.3 ~ 0.8 0.8 0.8 1 5 force
particle minecraft:ash ~ ~1 ~ 1.5 1.5 1.5 0 20 force
playsound minecraft:entity.wither.break_block ambient @a ~ ~ ~ 2 0.7

#Убиваем этот маркер и очищаем массив
kill @s
data remove storage dsb:temp BreakBlocks