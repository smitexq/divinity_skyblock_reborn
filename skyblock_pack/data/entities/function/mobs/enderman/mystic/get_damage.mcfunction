#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}


#
execute if entity @s[tag=!less_50percent_hp] if score #hp variables matches 31..50 run return run function entities:mobs/enderman/mystic/health/50percent

execute if entity @s[tag=!less_30percent_hp] if score #hp variables matches ..30 run return run function entities:mobs/enderman/mystic/health/30percent


#
execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..9 if entity @s[tag=!no.use.teleport] run function entities:mobs/abilities/teleport/start
execute if score #chance variables matches 10..17 if entity @s[tag=!no.use.teleport] run function entities:mobs/abilities/clone/start {mob:"enderman"}