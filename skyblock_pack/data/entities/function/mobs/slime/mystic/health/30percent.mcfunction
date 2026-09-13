tag @s add less_30percent_hp
playsound minecraft:entity.generic.explode ambient @a[distance=..13] ~ ~ ~ 1 2

function entities:mobs/abilities/knockback/start
execute as @a[distance=..13] at @s run function dc:get_call {tick:10, command:"function entities:mobs/abilities/daze/start", requirePos:false, requireEntity:true}
