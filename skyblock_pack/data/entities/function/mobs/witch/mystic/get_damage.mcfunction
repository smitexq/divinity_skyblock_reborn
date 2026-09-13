#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}




#
execute if entity @s[tag=!less_70percent_hp] if score #hp variables matches 51..70 run return run function entities:mobs/witch/mystic/health/70percent
#
execute if entity @s[tag=!less_50percent_hp] if score #hp variables matches 21..50 run return run function entities:mobs/witch/mystic/health/50percent
#
execute if entity @s[tag=!less_20percent_hp] if score #hp variables matches 11..20 run return run function entities:mobs/witch/mystic/health/20percent
#
execute if entity @s[tag=!less_10percent_hp] if score #hp variables matches ..10 run return run function entities:mobs/witch/mystic/health/10percent



#
execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..7 if entity @s[tag=!no.use.teleport] run function entities:mobs/abilities/teleport/start
execute if score #chance variables matches 8..15 run function entities:mobs/abilities/jump/start {mob:"zombie"}