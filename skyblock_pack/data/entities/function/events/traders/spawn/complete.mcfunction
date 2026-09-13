#Звук+сообщение
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup ambient @s
tellraw @a {"translate":"dsb.events.traders.success_spawn","color":"green"}
execute if score *wanderer_ring GameStage matches 1 run tellraw @a {"translate":"dsb.events.traders.success_spawn.mapper","color":"green"}

##Спавним структуру
place jigsaw gen:traders/air_ballon dsb:traders_ballon/start 1 ~ ~ ~
###

#Относительно метки (стойки для брони) спавним жителя
forceload add ~ ~
execute at @e[type=armor_stand, tag=Jewerly] summon villager run function entities:events/traders/spawn/villagers/jewerly/init
execute at @e[type=armor_stand, tag=Cartography] summon villager run function entities:events/traders/spawn/villagers/cartography/init
execute at @e[type=armor_stand, tag=Offers] summon villager run function entities:events/traders/spawn/villagers/buyer/init

kill @e[type=armor_stand, tag=TradersBallon]

forceload remove ~ ~

#Пропадут через 20 минут
function dc:get_call {tick:24000, command:"function entities:events/traders/load/remove", requirePos:true, requireEntity:false}
function dc:get_call {tick:22800, command:"function entities:events/traders/load/msg", requirePos:true, requireEntity:false}