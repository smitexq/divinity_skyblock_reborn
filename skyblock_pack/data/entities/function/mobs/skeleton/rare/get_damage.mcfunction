#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}

#Добавляем тег, что скелет теперь может использовать костяную руку (нужно для активации достижения)
execute if score #hp variables matches ..30 run tag @s add boneHand

function dc:gu/generate

#Здоровье ниже 50
execute if entity @s[tag=!less_50percent_hp] if score #hp variables matches ..50 run return run function entities:mobs/skeleton/rare/health/50percent with storage gu:main

#Если здоровье ниже 10%
execute if entity @s[tag=!less_10percent_hp] if score #hp variables matches ..10 run return run function entities:mobs/skeleton/rare/health/10percent