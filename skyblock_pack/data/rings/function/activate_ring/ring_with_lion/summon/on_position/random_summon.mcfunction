#[[0,0,0],[0,0,1],[0,0,-1],[1,0,0],[-1,0,0]]

execute store result score *var3 variables run random value 1..5

execute if score *var3 variables matches 1 run summon minecraft:$(entity) ~ ~ ~
execute if score *var3 variables matches 2 run summon minecraft:$(entity) ~ ~ ~1
execute if score *var3 variables matches 3 run summon minecraft:$(entity) ~ ~ ~-1
execute if score *var3 variables matches 4 run summon minecraft:$(entity) ~1 ~ ~
execute if score *var3 variables matches 5 run summon minecraft:$(entity) ~-1 ~ ~