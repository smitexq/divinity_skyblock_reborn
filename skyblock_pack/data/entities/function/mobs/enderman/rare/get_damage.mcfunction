#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}


#Если здоровье ниже 50%
execute if entity @s[tag=!less_50percent_hp] if score #hp variables matches 21..50 run return run function entities:mobs/enderman/rare/health/50percent

#Если здоровье ниже 20%
execute if entity @s[tag=!less_20percent_hp] if score #hp variables matches ..20 run return run function entities:mobs/enderman/rare/health/20percent



execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0 as @a[distance=..12] at @s run function entities:mobs/abilities/daze/start