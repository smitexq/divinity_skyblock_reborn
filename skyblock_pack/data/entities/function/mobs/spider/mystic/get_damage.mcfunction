#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"*var3"},"color":"aqua"}


#
execute if entity @s[tag=!less_50percent_hp] if score #hp variables matches 21..50 run return run function entities:mobs/spider/mystic/health/50percent

execute if entity @s[tag=!less_20percent_hp] if score #hp variables matches ..20 run return run function entities:mobs/spider/mystic/health/20percent



#10 tp
execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0 if entity @s[tag=!no.use.teleport] run function entities:mobs/abilities/teleport/start

#cobweb если не прокнуло тп
execute if entity @s[tag=!no.use.teleport] store result score #chance variables run random value 0..9
execute if entity @s[tag=!no.use.teleport] if score #chance variables matches 0..2 run function entities:mobs/abilities/cobweb/start