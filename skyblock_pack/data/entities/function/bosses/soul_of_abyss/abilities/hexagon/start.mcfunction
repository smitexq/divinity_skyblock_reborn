#Перед запуском проверяется, что нет этого тега
# execute if entity @s[tag=StartHexagon] run return 0
tag @s add StartHexagon

#Звук
execute as @a[distance=..30] at @s run playsound minecraft:entity.evoker.prepare_summon ambient @s ~ ~ ~ 1


#Призыва маркеров
execute at @e[type=marker,tag=SoulOfAbyssArenaMiddle] positioned ~ ~12.5 ~ run function entities:bosses/soul_of_abyss/abilities/hexagon/summon

#Частицы перед выстрелами
function dc:get_call {tick:30, command:"tag @e[type=marker, tag=SoulOfAbyssHexParticle] add stage2", requirePos:false, requireEntity:true}
function dc:get_call {tick:210, command:"kill @e[type=marker, tag=SoulOfAbyssHexParticle]", requirePos:false, requireEntity:true}
#Выстрел
function dc:get_call {tick:60, command:"function entities:bosses/soul_of_abyss/abilities/hexagon/prepend_shot", requirePos:false, requireEntity:true}

#Кд способки
function dc:get_call {tick:360, command:"tag @s remove StartHexagon", requirePos:false, requireEntity:true}