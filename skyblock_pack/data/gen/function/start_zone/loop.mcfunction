#Если вышли за линию 16 чанка, то на следующую линию
execute if score #x_step gen matches 17 run scoreboard players add #z_step gen 1
execute if score #x_step gen matches 17 run scoreboard players set #x_step gen 0
#сли закончилась последняя линия
execute if score #z_step gen matches 16 run return 1

#Если дошли до конца линии, то переход на следующую
scoreboard players add #x_step gen 1
execute if score #x_step gen matches 17 positioned ~-256 ~ ~16 run return run function gen:start_zone/loop 

#Загружаем биом
execute summon marker run function gen:generate/set_coords

#Каждую итерацию меняем позицию на один чанк
execute positioned ~16 ~ ~ run function gen:start_zone/loop