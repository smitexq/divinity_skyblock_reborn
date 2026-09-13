scoreboard players remove *var1 variables 1

summon marker ~ ~ ~ {Tags:["mobSummon","SummonByWinterBoss"]}

execute if score *var1 variables matches 1.. run function entities:bosses/winter/abilities/summon/create_marker