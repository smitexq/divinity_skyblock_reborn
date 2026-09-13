execute store result score #count Pots run random value 1..3

summon minecraft:spider ~ ~ ~ {attributes:[{id:"minecraft:scale", base:0.4d},{id:"minecraft:max_health", base:16.0d}], Tags:["entity"]}
execute if score #count Pots matches 1 run return 0

summon minecraft:spider ~ ~ ~ {attributes:[{id:"minecraft:scale", base:0.4d},{id:"minecraft:max_health", base:12.0d}], Tags:["entity"]}
execute if score #count Pots matches 2 run return 0

summon minecraft:spider ~ ~ ~ {attributes:[{id:"minecraft:scale", base:0.4d},{id:"minecraft:max_health", base:10.0d}], Tags:["entity"]}