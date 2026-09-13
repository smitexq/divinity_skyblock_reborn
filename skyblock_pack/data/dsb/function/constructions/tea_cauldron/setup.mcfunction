###Проверки перед созданием
#Если тут уже есть библиотека, то возвращаем предметы
execute if entity @e[type=interaction, tag=initTeaCauldron, distance=..1.5] run return run function dsb:constructions/return_items

#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_TeaCauldron"}
execute if score #result variables matches 0 run return fail
###

scoreboard players add @s[advancements={dsb:skyblock/constructions/tea_cauldron=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/tea_cauldron
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a[distance=..8]
particle minecraft:happy_villager ~ ~1 ~ 1 0.8 1 0 30

execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {height:1.01,width:1.01,Tags:["initTeaCauldron","CauldronTea"]}

#Интеллект
scoreboard players add @s ai_tea 1
execute if score @s ai_tea matches 1 run scoreboard players add @s AI 1
#Усталость
scoreboard players add @s RestTimeAI 240

#Запуск функции на этой позиции
execute as @e[type=interaction, tag=initTeaCauldron, distance=..1.5] at @s run function dsb:constructions/tea_cauldron/init with storage gu:main
