#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}
function dc:gu/generate

#Здоровье от 10 до 40%, шанс на телепорт 30%
execute store result score #chance variables run random value 0..9
execute if entity @s[tag=!no.use.teleport] if score #hp variables matches 10..40 if score #chance variables matches 0..2 run return run function entities:mobs/abilities/teleport/start

#Если здоровье ниже 50%
execute if entity @s[tag=!less_50percent_hp] if score #hp variables matches ..50 run return run function entities:mobs/zombie/rare/health/50percent

#Если здоровье выше 7%, то ничего не делаем
execute unless score #hp variables matches ..7 run return 0
#Если здоровье ниже 7%
execute if entity @s[tag=less_7percent_hp] run return 0

tag @s add less_7percent_hp
execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0..5 run function entities:mobs/zombie/uncommon/health/15percent with storage gu:main