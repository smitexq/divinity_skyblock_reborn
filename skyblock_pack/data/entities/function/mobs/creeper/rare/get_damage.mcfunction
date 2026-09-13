#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}


#Если здоровье ниже 40%
execute if entity @s[tag=!less_40percent_hp] if score #hp variables matches 21..40 run return run function entities:mobs/creeper/rare/health/40percent

#Если здоровье ниже 20%
execute if entity @s[tag=!less_20percent_hp] if score #hp variables matches ..20 run return run function entities:mobs/creeper/rare/health/20percent


execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..14 run return run function entities:mobs/abilities/clone/start {mob: "creeper"}