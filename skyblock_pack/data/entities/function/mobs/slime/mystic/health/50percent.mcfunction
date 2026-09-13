tag @s add less_50percent_hp
playsound minecraft:enchant.thorns.hit ambient @a[distance=..13] ~ ~1 ~

function entities:mobs/abilities/regeneration/start
function entities:mobs/abilities/powerful_blast/start

function dc:get_call {tick:25, command:"function entities:mobs/abilities/wither_storm/start", requirePos:false, requireEntity:true}