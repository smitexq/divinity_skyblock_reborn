###Если нет огня, то переносим
execute unless block ~ ~-1 ~ fire if entity @s[tag=!stop] run playsound minecraft:entity.blaze.death ambient @a ~ ~ ~ 0.5 1.2
execute unless block ~ ~-1 ~ fire run tag @s add stop
execute unless block ~ ~-1 ~ fire run return run function dc:get_call {tick:60, command:"function dsb:constructions/cauldron/work/loop", requirePos:false, requireEntity:true}
###

#Если появился огонь
execute if entity @s[tag=stop] run playsound minecraft:entity.blaze.death ambient @a ~ ~ ~ 0.5 2
tag @s remove stop

scoreboard players add @s Cauldron 1
###Частицы
scoreboard players set *var2 variables 3
scoreboard players operation *var1 variables = @s Cauldron
scoreboard players operation *var1 variables %= *var2 variables
execute if score *var1 variables matches 0 run particle minecraft:flame ~ ~1 ~ 0.2 0.1 0.2 0 3
execute if score *var1 variables matches 1 run playsound minecraft:block.fire.ambient ambient @a

scoreboard players set *var2 variables 6
scoreboard players operation *var1 variables = @s Cauldron
scoreboard players operation *var1 variables %= *var2 variables
execute if score *var1 variables matches 0 run particle minecraft:lava ~ ~1.2 ~ 0.1 0.1 0.1 1 3
###

execute if score @s Cauldron matches 60 run function dc:gu/generate
execute if score @s Cauldron matches 60 run return run function dsb:constructions/cauldron/work/result with storage gu:main

function dc:get_call {tick:20, command:"function dsb:constructions/cauldron/work/loop", requirePos:false, requireEntity:true}