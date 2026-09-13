#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}



#Если здоровье ниже 40%
execute if entity @s[tag=!less_40percent_hp] if score #hp variables matches ..40 run return run function entities:mobs/skeleton/uncommon/40


execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..14 run function entities:mobs/abilities/invisible/start