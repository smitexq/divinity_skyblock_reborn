#Счетчик того, сколько блоков прошел маркер
scoreboard players add @s use.ignite 1
#Телепортируем его на это место, так как эта функция активировалась с заранее измененной позицией на блок вперед
tp @s ~ ~ ~

#Если на этом месте нельзя заспавнить огонь, то появляется большое пламя
execute unless block ~ ~ ~ #entities:throw_ignite run return run function entities:mobs/abilities/ignite/place.fire_blocks/in

#До двух блоков огонь точно спавнится, дальше он появляется с шансом
execute if score @s use.ignite matches 1..2 if block ~ ~ ~ #entities:throw_ignite run setblock ~ ~ ~ fire
execute if score @s use.ignite matches 3..8 run function entities:mobs/abilities/ignite/random

###Рассчитываем поджог игроков. На разной позиции маркер различная дистанция поджога
execute if score @s use.ignite matches 3 positioned ^ ^ ^-3 as @e[type=#entities:peaceful_mobs,tag=!is_ignite,distance=..3] at @s run function entities:mobs/abilities/ignite/ignite_player
execute if score @s use.ignite matches 7 positioned ^-4 ^ ^-3 as @e[type=#entities:peaceful_mobs,tag=!is_ignite,distance=..4.5] at @s run function entities:mobs/abilities/ignite/ignite_player
execute if score @s use.ignite matches 8 positioned ^ ^ ^-1 as @e[type=#entities:peaceful_mobs,tag=!is_ignite,distance=..3.5] at @s run function entities:mobs/abilities/ignite/ignite_player


#Если маркер не закончил свой маршрут, то двигаем его вперед через два тика
execute if score @s use.ignite matches ..7 positioned ^ ^ ^1 run return run function dc:get_call {tick:2, command:"function entities:mobs/abilities/ignite/at_marker", requirePos:true, requireEntity:true}
execute if score @s use.ignite matches 8 run kill @s