execute store result score *var1 variables run random value 1..4

execute if score *var1 variables matches 1 run return run summon silverfish ~ ~ ~ {Tags:["entity"]}
execute if score *var1 variables matches 2 run return run summon husk ~ ~ ~ {Tags:["entity"]}
execute if score *var1 variables matches 3 run return run summon stray ~ ~ ~ {Tags:["entity"],HandItems:[{id:"minecraft:bow",count:1},{}]}
execute if score *var1 variables matches 4 run return run summon vindicator ~ ~ ~ {Tags:["entity"],HandItems:[{id:"minecraft:iron_axe",count:1},{}]}