#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}

execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..11 run function entities:mobs/abilities/web_weaver/start

#Если здоровье ниже 50%
execute unless score #hp variables matches ..50 run return 0
execute if entity @s[tag=less_50percent_hp] run return 0

tag @s add less_50percent_hp
function entities:mobs/abilities/wither_storm/start
execute as @a[distance=..10] at @s run function entities:mobs/abilities/bone_hand/start