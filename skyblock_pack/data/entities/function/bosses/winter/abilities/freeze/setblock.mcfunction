setblock ~ ~-1 ~ ice
setblock ~ ~ ~ powder_snow
setblock ~ ~2 ~ ice
fill ~1 ~ ~ ~1 ~1 ~ ice
fill ~-1 ~ ~ ~-1 ~1 ~ ice
fill ~ ~ ~1 ~ ~1 ~1 ice
fill ~ ~ ~-1 ~ ~1 ~-1 ice

execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~

function dc:get_call {tick:70, command:"execute if dimension gen:winter_queen run playsound minecraft:entity.illusioner.prepare_blindness ambient @s", requirePos:false, requireEntity:true}
function dc:get_call {tick:80, command:"execute if dimension gen:winter_queen run effect give @s minecraft:darkness 3", requirePos:false, requireEntity:true}
function dc:get_call {tick:100, command:"execute if dimension gen:winter_queen run damage @s 14 minecraft:freeze", requirePos:false, requireEntity:true}
function dc:get_call {tick:160, command:"execute if dimension gen:winter_queen run damage @s 14 minecraft:freeze", requirePos:false, requireEntity:true}

function dc:get_call {tick:200, command:"execute if dimension gen:winter_queen run playsound minecraft:block.glass.break ambient @s", requirePos:true, requireEntity:true}
function dc:get_call {tick:200, command:"execute if dimension gen:winter_queen run particle minecraft:explosion_emitter ~ ~1 ~", requirePos:true, requireEntity:false}
function dc:get_call {tick:200, command:"fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air", requirePos:true, requireEntity:false}
