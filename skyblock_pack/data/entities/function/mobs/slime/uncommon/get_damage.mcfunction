#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}

execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0 run function entities:mobs/abilities/knockback/start

#Если здоровье ниже 30%
execute unless score #hp variables matches ..30 run return 0
execute if entity @s[tag=less_30percent_hp] run return 0

tag @s add less_30percent_hp
function entities:mobs/abilities/wither_storm/start
execute as @a[distance=..13] at @s run function entities:mobs/abilities/losing_control/start