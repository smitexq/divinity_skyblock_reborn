#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}


#
execute if entity @s[tag=!less_50percent_hp] if score #hp variables matches 31..50 run return run function entities:mobs/creeper/mystic/health/50percent

execute if entity @s[tag=!less_30percent_hp] if score #hp variables matches ..30 run return run function entities:mobs/creeper/mystic/health/30percent



#20% knockback + fangs
execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0..1 run function entities:mobs/creeper/mystic/20percent