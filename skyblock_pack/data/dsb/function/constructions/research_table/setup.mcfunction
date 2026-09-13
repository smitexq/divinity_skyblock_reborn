###Проверки перед созданием
#Если тут уже есть постройка, то возвращаем предметы
execute if entity @e[type=marker, tag=initResearchTable, distance=..1.5] run return run function dsb:constructions/return_items

#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_ResearchTable"}
execute if score #result variables matches 0 run return fail
###


#Заметка на создание фермы мобов
advancement grant @a only dsb:notes/mob_farm
#


scoreboard players add @s[advancements={dsb:skyblock/constructions/research.table=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/research.table
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a[distance=..7]
particle minecraft:happy_villager ~ ~1 ~ 0.8 0.4 0.8 0 20
execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["initResearchTable"]}

#Интеллект
scoreboard players add @s ai.research_table 1
execute if score @s ai.research_table matches 1 run scoreboard players add @s AI 2
execute if score @s ai.research_table matches 2 run scoreboard players add @s AI 2
execute if score @s ai.research_table matches 3 run scoreboard players add @s AI 1
#Усталость
scoreboard players add @s RestTimeAI 120

#Запуск работы
execute as @e[type=marker, tag=initResearchTable, distance=..1.5] run function dc:gu/generate
execute as @e[type=marker, tag=initResearchTable, distance=..1.5] at @s run function dsb:constructions/research_table/init with storage gu:main