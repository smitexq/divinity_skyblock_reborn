#Координаты вейстоуна
execute store result storage dsb:temp waystone.x int 1 run data get entity @s Pos[0]
execute store result storage dsb:temp waystone.y int 1 run data get entity @s Pos[1]
execute store result storage dsb:temp waystone.z int 1 run data get entity @s Pos[2]

#Измерение
execute if dimension minecraft:overworld run return run data modify storage dsb:temp waystone.dimension set value "§aOverworld"
execute if dimension minecraft:the_nether run return run data modify storage dsb:temp waystone.dimension set value "§4Nether"
execute if dimension minecraft:the_end run return run data modify storage dsb:temp waystone.dimension set value "§5The End"

kill @s