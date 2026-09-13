#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}


#Если здоровье ниже 50%
execute if entity @s[tag=!less_50percent_hp] if score #hp variables matches 31..50 run return run function entities:mobs/slime/mystic/health/50percent

#Если здоровье ниже 30%
execute if entity @s[tag=!less_30percent_hp] if score #hp variables matches ..30 run return run function entities:mobs/slime/mystic/health/30percent



execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..14 run function entities:mobs/abilities/knockback/start
execute if score #chance variables matches 15..24 run function entities:mobs/abilities/ignite/start