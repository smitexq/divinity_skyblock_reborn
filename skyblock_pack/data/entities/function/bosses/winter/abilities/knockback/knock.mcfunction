playsound minecraft:entity.generic.explode ambient @s ~ ~ ~ 1 2

#метка
tag @s add LabelFromWinterBossKnock
#Удаление метки через секунду, чтобы отбрасывание не срабатало повторно
function dc:get_call {tick:20, command:"tag @s remove LabelFromWinterBossKnock", requirePos:false, requireEntity:true}

#Эффекты
effect give @s minecraft:darkness 4
effect give @s minecraft:mining_fatigue 30 1
effect give @s minecraft:slowness 10 1

#Откидывание
scoreboard players set $strength player_motion.api.launch 27000
function player_motion:api/launch_looking