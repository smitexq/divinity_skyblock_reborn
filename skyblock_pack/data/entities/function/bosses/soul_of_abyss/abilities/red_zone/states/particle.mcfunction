tag @e[type=armor_stand, tag=SoulOfAbyssShadow] add particle
function dc:get_call {tick:20, command:"tag @e[type=armor_stand, tag=SoulOfAbyssShadow] add damage", requirePos:false, requireEntity:true}

execute as @a[distance=..30] run playsound minecraft:entity.elder_guardian.death ambient @s ~ ~ ~ 2