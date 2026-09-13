tag @s add less_50percent_hp

#эффекты
particle minecraft:damage_indicator ~ ~1.2 ~ 0.15 0.05 0.15 0.3 7 normal
playsound minecraft:enchant.thorns.hit ambient @a ~ ~1 ~ 1

function entities:mobs/abilities/knockback/start
function dc:get_call {tick:10, command:"function entities:mobs/abilities/wither_storm/start", requirePos:false, requireEntity:true}