execute store result score #id Pots run random value 1..8

execute if score #id Pots matches 1..2 run return run function gen:pots/entities/summon_mini_spider
execute if score #id Pots matches 3 unless biome ~ ~ ~ minecraft:desert run return run summon minecraft:zombie ~ ~ ~ {IsBaby:1, Tags:["entity"]}
execute if score #id Pots matches 3 if biome ~ ~ ~ minecraft:desert run return run summon minecraft:husk ~ ~ ~ {IsBaby:1, Tags:["entity"]}
execute if score #id Pots matches 4 run return run summon minecraft:cave_spider ~ ~ ~ {Tags:["entity"]}
execute if score #id Pots matches 5 run return run summon minecraft:vex ~ ~ ~ {Tags:["entity"]}
execute if score #id Pots matches 6 run return run summon minecraft:breeze ~ ~ ~ {attributes:[{id:"minecraft:scale", base:0.8d}], Tags:["entity"]}
execute if score #id Pots matches 7 run return run summon minecraft:slime ~ ~ ~ {Size:0, Tags:["entity"]}
execute if score #id Pots matches 8 run return run function gen:pots/entities/summon_silverfish