#Шанс 60%, что на этом месте (по направлению движения вектора) появится огонь
execute store result score *var1 variables run random value 1..5
execute if score *var1 variables matches 1..3 run setblock ~ ~ ~ fire

#Огонь на 2 блока правее
execute if score @s use.ignite matches 3 positioned ^-2 ^ ^ if block ~ ~ ~ #entities:throw_ignite run function entities:mobs/abilities/ignite/place.fire_blocks/fire_to_right

#Шанс призвать остальные 3 блока огня
execute if score @s use.ignite matches 3 positioned ^6 ^ ^ if block ~ ~ ~ #entities:throw_ignite run function entities:mobs/abilities/ignite/place.fire_blocks/random_fire
execute if score @s use.ignite matches 5 positioned ^5 ^ ^ if block ~ ~ ~ #entities:throw_ignite run function entities:mobs/abilities/ignite/place.fire_blocks/random_fire
execute if score @s use.ignite matches 6 positioned ^3 ^ ^ if block ~ ~ ~ #entities:throw_ignite run function entities:mobs/abilities/ignite/place.fire_blocks/random_fire