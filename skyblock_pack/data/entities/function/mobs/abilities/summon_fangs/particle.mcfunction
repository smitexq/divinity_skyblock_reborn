#Звук и частицы
playsound minecraft:entity.elder_guardian.curse ambient @s
particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.3 0.5 0.05 8 force

damage @s 5 minecraft:starve
effect give @s minecraft:darkness 5
effect give @s minecraft:mining_fatigue 20 1
effect give @s minecraft:slowness 15 0
effect give @s minecraft:weakness 15 0
#Тег, чтобы игрок не получил еще раз дебафы
tag @s add BittenByFangs
function dc:get_call {tick:18, command:"tag @s remove BittenByFangs", requirePos:false, requireEntity:true}