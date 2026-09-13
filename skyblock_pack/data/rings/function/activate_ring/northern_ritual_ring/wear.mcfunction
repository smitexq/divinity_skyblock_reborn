tag @s add WearingNorthernRitualRing
particle minecraft:dust{color:[0.93f,0.3f,0.3f],scale:1f} ~ ~1 ~ 0.35 0.4 0.35 1 10 force
playsound minecraft:block.anvil.place ambient @s ~ ~ ~ 0.25 2

#Проверка хп каждые 15 тиков
function dc:get_call {tick:15, command:"function rings:activate_ring/northern_ritual_ring/check_health", requirePos:false, requireEntity:true}