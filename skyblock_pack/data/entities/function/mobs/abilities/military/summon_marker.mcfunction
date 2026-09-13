scoreboard players remove *var1 variables 1

summon marker ~ ~ ~ {Tags:["military"]}

execute if score *var1 variables matches 1.. run function entities:mobs/abilities/military/summon_marker