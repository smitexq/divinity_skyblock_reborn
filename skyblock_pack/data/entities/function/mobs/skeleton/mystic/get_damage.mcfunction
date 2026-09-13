#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}


#Призыв
execute if entity @s[tag=!less_70percent_hp] if score #hp variables matches 36..70 run return run function entities:mobs/skeleton/mystic/health/70percent

execute if entity @s[tag=!less_35percent_hp] if score #hp variables matches 21..35 run return run function entities:mobs/skeleton/mystic/health/35percent

execute if entity @s[tag=!less_20percent_hp] if score #hp variables matches ..20 run return run function entities:mobs/skeleton/mystic/health/20percent


#daze
execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..14 as @a[distance=..20] at @s run function entities:mobs/abilities/daze/start
#10% на телепорт
execute if entity @s[tag=!no.use.teleport] if score #chance variables matches 15..24 run return run function entities:mobs/abilities/teleport/start