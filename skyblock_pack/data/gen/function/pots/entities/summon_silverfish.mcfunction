execute store result score #count Pots run random value 1..3

summon minecraft:silverfish ~ ~ ~ {Tags:["entity"]}
execute if score #count Pots matches 1 run return 0

summon minecraft:silverfish ~ ~ ~ {Tags:["entity"]}
execute if score #count Pots matches 2 run return 0

summon minecraft:silverfish ~ ~ ~ {Tags:["entity"]}