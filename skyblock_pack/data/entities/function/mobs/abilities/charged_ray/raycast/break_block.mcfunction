$execute positioned ~$(x) ~$(y) ~$(z) unless block ~ ~ ~ #entities:unbreakable run setblock ~ ~ ~ air destroy

#Задаем случайное изменение по координатам
#Но если выпадет нули, то сломается только в центре блок
data remove storage dsb:temp coords
execute store result storage dsb:temp coords.x int 1 run random value -1..1
execute store result storage dsb:temp coords.y int 1 run random value -1..1
execute store result storage dsb:temp coords.z int 1 run random value -1..1

#Пробуем ломать еще блоки
scoreboard players remove *var1 variables 1
execute if score *var1 variables matches 1.. run function entities:mobs/abilities/charged_ray/raycast/break_block with storage dsb:temp coords
