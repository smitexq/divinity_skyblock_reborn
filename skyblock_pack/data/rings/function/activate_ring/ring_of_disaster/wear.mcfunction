tag @s add WearingRingOfDisaster
particle nautilus ~ ~2 ~ 0.1 0.2 0.1 0.7 6 force
playsound minecraft:entity.elder_guardian.death ambient @s ~ ~ ~ 0.6 1.5

#Проверка хп каждые 1,5 секунды
function dc:get_call {tick:30, command:"function rings:activate_ring/ring_of_disaster/check_health", requirePos:false, requireEntity:true}