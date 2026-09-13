tag @s add WearingSouthernRitualRing
particle minecraft:dust{color:[0.16f,0.51f,0.83f],scale:1f} ~ ~1 ~ 0.35 0.4 0.35 1 10 force
playsound minecraft:block.anvil.place ambient @s ~ ~ ~ 0.25 0.5

#Проверка хп каждые 15 тиков
function dc:get_call {tick:15, command:"function rings:activate_ring/southern_ritual_ring/check_health", requirePos:false, requireEntity:true}

execute if entity @s[tag=WearingAmuletOfArmor] run advancement grant @s only dsb:skyblock/diff/full_protect