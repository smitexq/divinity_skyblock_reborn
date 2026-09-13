###Проверки перед созданием
#Если тут уже есть библиотека, то возвращаем предметы
execute if entity @e[type=marker, tag=initLibrary, distance=..1.5] run return run function dsb:constructions/return_items

#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_SmallLibrary"}
execute if score #result variables matches 0 run return fail
###

scoreboard players add @s[advancements={dsb:skyblock/constructions/small.library=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/small.library
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a[distance=..7]
particle minecraft:happy_villager ~ ~1 ~ 1 0.8 1 0 30

#Интеллект
scoreboard players add @s ai.s_library 1
execute if score @s ai.s_library matches 1 run scoreboard players add @s AI 3
execute if score @s ai.s_library matches 2 run scoreboard players add @s AI 1
execute if score @s ai.s_library matches 3 run scoreboard players add @s AI 1
#Усталость
scoreboard players add @s RestTimeAI 180

#Спавн частиц с заданиями
execute align xyz positioned ~0.5 ~ ~0.5 summon marker run function dsb:constructions/small_library/task/start
#interaction'ы для улучшений
execute align xyz positioned ~0.5 ~ ~0.5 run function dsb:constructions/small_library/api/upgrades/init
#Запуск функции на этой позиции
execute as @e[type=marker, tag=initLibrary, distance=..1.5] at @s run function dsb:constructions/small_library/on_pos
