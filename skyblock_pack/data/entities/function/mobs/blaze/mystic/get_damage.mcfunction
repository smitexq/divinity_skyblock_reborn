#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}

#
execute if entity @s[tag=!less_50percent_hp] if score #hp variables matches 21..50 run return run function entities:mobs/blaze/mystic/health/50percent

execute if entity @s[tag=!less_20percent_hp] if score #hp variables matches ..20 run return run function entities:mobs/blaze/mystic/health/20percent


#20% knockback + fangs
execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..14 if entity @s[tag=!no.use.teleport] run function entities:mobs/abilities/teleport/start