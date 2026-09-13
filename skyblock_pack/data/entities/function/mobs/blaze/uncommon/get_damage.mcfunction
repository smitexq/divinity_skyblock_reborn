#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}


#Если здоровье ниже 50%
execute if entity @s[tag=!less_50percent_hp] if score #hp variables matches ..50 run return run function entities:mobs/blaze/uncommon/50


execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0 run return run function entities:mobs/abilities/ignite/start