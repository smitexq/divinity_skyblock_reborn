execute if entity @s[tag=!DependenceFromKnowPiece] run return 0

#Эффекты
playsound minecraft:entity.elder_guardian.ambient_land ambient @s ~ ~ ~ 1 0.5
effect give @s minecraft:nausea 20 0
function dc:get_call {tick:100, command:"effect give @s minecraft:darkness 4 0 true", requirePos:false, requireEntity:true}

#Шнас на отраву
execute store result score *var1 variables run random value 1..3
execute if score *var1 variables matches 1 run effect give @s minecraft:poison 6 0 true

#2,5 минуты
function dc:get_call {tick:3000, command:"function dsb:events/knowledge_piece/dependence/effects", requirePos:false, requireEntity:true}