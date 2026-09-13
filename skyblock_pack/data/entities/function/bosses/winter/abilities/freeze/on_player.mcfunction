effect give @s minecraft:levitation 1 15 true

particle minecraft:gust_emitter_small
particle minecraft:snowflake ~ ~2 ~ 2 2 2 0.2 100 force
playsound minecraft:event.mob_effect.raid_omen ambient @s

function dc:get_call {tick:25, command:"execute if dimension gen:winter_queen run function entities:bosses/winter/abilities/freeze/setblock", requirePos:false, requireEntity:true}