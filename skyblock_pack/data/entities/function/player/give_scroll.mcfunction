#Измерение
execute if dimension minecraft:overworld run data modify storage dsb:temp DeathScroll.dimension set value "§aOverworld"
execute if dimension minecraft:the_nether run data modify storage dsb:temp DeathScroll.dimension set value "§4Nether"
execute if dimension minecraft:the_end run data modify storage dsb:temp DeathScroll.dimension set value "§5The End"

#Координаты могилки
execute store result storage dsb:temp DeathScroll.x int 1 run data get entity @s Pos[0]
execute store result storage dsb:temp DeathScroll.y int 1 run data get entity @s Pos[1]
execute store result storage dsb:temp DeathScroll.z int 1 run data get entity @s Pos[2]

loot give @s loot entities:death_scroll