#Выводить здоровье над мобом
# execute if entity @s[tag=!modify.name] run function entities:mobs/abilities/show_hp {command:"function entities:mobs/zombie/uncommon/health/return_name"}

#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}
function dc:gu/generate
#Если здоровье ниже 40%, но больше 15%
execute if entity @s[tag=!less_40percent_hp] if score #hp variables matches 16..40 as @a[distance=..8] run return run function entities:mobs/zombie/uncommon/health/40percent with storage gu:main
#Если здоровье ниже 15%
execute if entity @s[tag=!less_15percent_hp] if score #hp variables matches ..15 run function entities:mobs/zombie/uncommon/health/15percent with storage gu:main