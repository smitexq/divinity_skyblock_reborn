tag @s add less_20percent_hp

playsound minecraft:entity.shulker_bullet.hit ambient @a[distance=..13] ~ ~ ~ 2 0.8


function entities:mobs/abilities/powerful_blast/start
function dc:get_call {tick:50, command:"function entities:mobs/abilities/run/start", requirePos:false, requireEntity:true}