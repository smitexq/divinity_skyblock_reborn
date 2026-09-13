#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}


function dc:gu/generate
#Если здоровье ниже 50%
execute if entity @s[tag=!less_50percent_hp] if score #hp variables matches 36..50 run return run function entities:mobs/zombie/mystic/health/50percent

#Если здоровье ниже 35%
execute if entity @s[tag=!less_35percent_hp] if score #hp variables matches 16..35 run return run function entities:mobs/zombie/mystic/health/35percent

#Если здоровье ниже 15%
execute if entity @s[tag=!less_15percent_hp] if score #hp variables matches ..15 run return run function entities:mobs/zombie/mystic/health/15percent



#12% на телепорт
execute store result score #chance variables run random value 0..99
execute if entity @s[tag=!no.use.teleport] if score #chance variables matches 0..11 run function entities:mobs/abilities/teleport/start

#10% на клонов
execute store result score #chance variables run random value 0..9
execute if entity @s[tag=!initClone] if score #chance variables matches 0 if entity @s[type=zombie] run return run function entities:mobs/abilities/clone/start {mob:"zombie"}
execute if entity @s[tag=!initClone] if score #chance variables matches 0 if entity @s[type=husk] run return run function entities:mobs/abilities/clone/start {mob:"husk"}
execute if entity @s[tag=!initClone] if score #chance variables matches 0 if entity @s[type=drowned] run return run function entities:mobs/abilities/clone/start {mob:"drowned"}