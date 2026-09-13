#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}


#Если здоровье ниже 70%
execute if entity @s[tag=!less_70percent_hp] if score #hp variables matches 41..70 run return run function entities:mobs/blaze/rare/health/70percent

#Если здоровье ниже 40%
execute if entity @s[tag=!less_40percent_hp] if score #hp variables matches ..40 run return run function entities:mobs/blaze/rare/health/40percent



execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..4 run function entities:mobs/abilities/blast/start
execute if score #chance variables matches 5..34 as @a[distance=..13] at @s run function entities:mobs/abilities/losing_control/start