setblock ~ ~ ~ water

execute store result score #id Pots run random value 1..4

execute if score #id Pots matches 1 run return run summon minecraft:cod
execute if score #id Pots matches 2 run return run summon minecraft:salmon
execute if score #id Pots matches 3 run return run summon minecraft:frog
summon minecraft:turtle ~ ~ ~ {Age:-20000}