#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}


#Если здоровье ниже 65%
execute if entity @s[tag=!less_65percent_hp] if score #hp variables matches 21..65 run return run function entities:mobs/spider/rare/health/65percent

#Если здоровье ниже 20%
execute if entity @s[tag=!less_20percent_hp] if score #hp variables matches ..20 run return run function entities:mobs/spider/rare/health/20percent



execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..14 run function entities:mobs/abilities/summon_fangs/start
execute if score #chance variables matches 15..24 run function entities:mobs/abilities/clone/start {mob: "spider"}
execute if score #chance variables matches 25..37 run function entities:mobs/abilities/jump/start {mob: "cave_spider"}