###Проверки перед созданием
#измерение
execute unless dimension minecraft:the_nether run title @s actionbar {"translate":"dsb.events.in_current_dimension","color":"red", "with":[{"translate":"advancements.nether.root.title"}]}
execute unless dimension minecraft:the_nether run return run function dsb:constructions/return_items

#Если тут уже есть постройка, то возвращаем предметы
execute if entity @e[type=marker, tag=initNetherConverter, distance=..1.5] run return run function dsb:constructions/return_items

#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_NetherConverter"}
execute if score #result variables matches 0 run return fail
###

scoreboard players add @s[advancements={dsb:skyblock/constructions/nether.converter=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/nether.converter
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a[distance=..7]
particle minecraft:happy_villager ~ ~1 ~ 0.6 0.7 0.6 0 20

execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["initNetherConverter"]}
execute align xyz positioned ~0.5 ~ ~0.5 run summon interaction ~ ~ ~ {height:1,width:1,Tags:["NetherConverterExhangeRBC"]}

#Интеллект
scoreboard players add @s ai_exchanger 1
execute if score @s ai_exchanger matches 1 run scoreboard players add @s AI 5
execute if score @s ai_exchanger matches 2 run scoreboard players add @s AI 2
#Усталость
scoreboard players add @s RestTimeAI 200

#Тег относительно каждой позиции
execute as @e[type=marker, tag=initNetherConverter, distance=..1.5] at @s if predicate dsb:constructions/nether_converter/v1 run tag @s add v1
execute as @e[type=marker, tag=initNetherConverter, distance=..1.5] at @s if predicate dsb:constructions/nether_converter/v2 run tag @s add v2
#Запуск работы
execute as @e[type=marker, tag=initNetherConverter, distance=..1.5] at @s run function dsb:constructions/nether_converter/on_pos
execute as @e[type=marker, tag=initNetherConverter, distance=..1.5] at @s run function dsb:constructions/nether_converter/check_items