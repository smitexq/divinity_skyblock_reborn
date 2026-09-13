tag @s add less_20percent_hp
playsound minecraft:entity.generic.explode ambient @a[distance=..13] ~ ~ ~ 1 2

#
function entities:mobs/abilities/cobweb/start
function entities:mobs/abilities/jump/start {mob: "cave_spider"}

function dc:get_call {tick:30, command:"function entities:mobs/abilities/run/start", requirePos:false, requireEntity:true}