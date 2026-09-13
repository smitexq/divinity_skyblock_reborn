#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}


#Если здоровье ниже 70%
execute if entity @s[tag=!less_70percent_hp] if score #hp variables matches 51..70 run return run function entities:mobs/witch/rare/health/70percent

#Если здоровье ниже 50%
execute if entity @s[tag=!less_50percent_hp] if score #hp variables matches 21..50 run return run function entities:mobs/witch/rare/health/50percent

#Если здоровье ниже 20%
execute if entity @s[tag=!less_20percent_hp] if score #hp variables matches ..20 run return run function entities:mobs/witch/rare/health/20percent



#knock
execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..8 run function entities:mobs/abilities/knockback/start
#daze
execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..4 as @a[distance=..10] at @s run function entities:mobs/abilities/daze/start