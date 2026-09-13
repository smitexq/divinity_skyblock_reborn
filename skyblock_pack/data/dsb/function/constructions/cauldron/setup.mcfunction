###Проверки перед созданием
#Если тут уже есть библиотека, то возвращаем предметы
execute if entity @e[type=interaction, tag=initCauldron, distance=..1.5] run return run function dsb:constructions/return_items

#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_Cauldron"}
execute if score #result variables matches 0 run return fail
###

#Заметка на поход в Незер
advancement grant @a only dsb:notes/go_to_nether
#

scoreboard players add @s[advancements={dsb:skyblock/constructions/cauldron=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/cauldron
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a[distance=..7]
particle minecraft:happy_villager ~ ~ ~ 1.2 0.6 1.2 0 30

execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {height:1.01,width:1.01,Tags:["initCauldron"]}

#Интеллект
scoreboard players add @s ai_cauldron 1
execute if score @s ai_cauldron matches 1 run scoreboard players add @s AI 3
execute if score @s ai_cauldron matches 2 run scoreboard players add @s AI 2
#Усталость
scoreboard players add @s RestTimeAI 200

#Запуск функции на этой позиции
execute as @e[type=interaction, tag=initCauldron, distance=..1.5] run function dc:gu/generate
execute as @e[type=interaction, tag=initCauldron, distance=..1.5] at @s run function dsb:constructions/cauldron/init with storage gu:main
