# execute if entity @s[tag=StartSporeBlossom] run return 0
tag @s add StartSporeBlossom

#6 точек для взрыва
execute positioned ~ ~1.2 ~ summon marker run function entities:bosses/soul_of_abyss/abilities/spore_blossom/summon
execute positioned ~ ~1.2 ~ summon marker run function entities:bosses/soul_of_abyss/abilities/spore_blossom/summon
execute positioned ~ ~1.2 ~ summon marker run function entities:bosses/soul_of_abyss/abilities/spore_blossom/summon
execute positioned ~ ~1.2 ~ summon marker run function entities:bosses/soul_of_abyss/abilities/spore_blossom/summon
execute positioned ~ ~1.2 ~ summon marker run function entities:bosses/soul_of_abyss/abilities/spore_blossom/summon
execute positioned ~ ~1.2 ~ summon marker run function entities:bosses/soul_of_abyss/abilities/spore_blossom/summon

#распределяем по арене и выставляем высоту по полу
execute at @e[type=minecraft:marker, tag=SoulOfAbyssArenaMiddle] run spreadplayers ~ ~ 13 17 false @e[type=minecraft:marker,tag=SoulOfAbyssSpore]
execute as @e[type=minecraft:marker,tag=SoulOfAbyssSpore] at @s run data modify entity @s Pos[1] set from entity @e[type=minecraft:marker, tag=SoulOfAbyssArenaMiddle, limit=1] Pos[1]

#Урон после взрыва
execute as @e[type=minecraft:marker,tag=SoulOfAbyssSpore] at @s run function dc:get_call {tick:45, command:"function entities:bosses/soul_of_abyss/abilities/spore_blossom/damage", requirePos:true, requireEntity:false}


#Кд способности
function dc:get_call {tick:200, command:"tag @s remove StartSporeBlossom", requirePos:false, requireEntity:true}