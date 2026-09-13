###Проверки перед созданием
#Если тут уже есть библиотека, то возвращаем предметы
execute if entity @e[type=marker, tag=initHugeLibrary, distance=..1.5] run return run function dsb:constructions/return_items

#Если был использован молот, то возвращаем его (только план постройки)
execute if entity @s[tag=buildngHammer] run title @s actionbar {"translate":"dsb.events.need_building_plan","color":"gold"}
execute if entity @s[tag=buildngHammer] run return run function dsb:constructions/return_items

#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_HugeLibrary"}
execute if score #result variables matches 0 run return fail
###


scoreboard players add @s[advancements={dsb:skyblock/constructions/huge.library=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/huge.library
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a
particle minecraft:happy_villager ~ ~2 ~ 2 2 2 0 50

#Интеллект
scoreboard players add @s ai.h_library 1
execute if score @s ai.h_library matches 1 run scoreboard players add @s AI 5
execute if score @s ai.h_library matches 2 run scoreboard players add @s AI 3
execute if score @s ai.h_library matches 3 run scoreboard players add @s AI 1
#Усталость
scoreboard players add @s RestTimeAI 300

#Спавн частиц с заданиями
execute align xyz positioned ~0.5 ~1 ~0.5 summon marker run function dsb:constructions/huge_library/task/start
#interaction'ы для улучшений
execute align xyz positioned ~0.5 ~ ~0.5 run function dsb:constructions/small_library/api/upgrades/init
#Запуск функции на этой позиции
execute as @e[type=marker, tag=initHugeLibrary, distance=..1.5] at @s run function dsb:constructions/huge_library/on_pos
