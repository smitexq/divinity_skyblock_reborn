#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}

#Если здоровье ниже 30%
execute unless score #hp variables matches ..30 run return 0
execute if entity @s[tag=less_30percent_hp] run return 0

tag @s add less_30percent_hp
function entities:mobs/abilities/clone/start {mob:"enderman"}