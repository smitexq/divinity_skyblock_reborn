scoreboard players set *prepare_to_teleport gameplay 1

effect give @s minecraft:slowness 8 3 true
effect give @s minecraft:darkness 10 0 true
effect give @s minecraft:nausea 8 0 true
playsound minecraft:entity.evoker.prepare_attack ambient @s ~ ~ ~ 0.5

function dc:get_call {tick:120, command:"playsound minecraft:entity.illusioner.prepare_mirror ambient @s", requirePos:false, requireEntity:true}

#Телепортация
function dc:get_call {tick:140, command:"execute in gen:winter_queen run tp @s 0 60 0", requirePos:false, requireEntity:true}


#Призыв
function dc:get_call {tick:260, command:"particle minecraft:end_rod ~ ~1 ~ 4 4 4 0 500 force", requirePos:false, requireEntity:true}
function dc:get_call {tick:260, command:"particle minecraft:ominous_spawning ~ ~1 ~ 4 4 4 0 500 force", requirePos:false, requireEntity:true}