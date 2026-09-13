###Проверки перед созданием
#измерение
execute unless dimension minecraft:overworld run title @s actionbar {"translate":"dsb.events.in_current_dimension","color":"red", "with":[{"translate":"flat_world_preset.minecraft.overworld"}]}
execute unless dimension minecraft:overworld run return run function dsb:constructions/return_items

#Если тут уже есть постройка, то возвращаем предметы
execute if entity @e[type=marker, tag=initWaterCollector, distance=..1.5] run return run function dsb:constructions/return_items

#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_WaterCollector"}
execute if score #result variables matches 0 run return fail
###

scoreboard players add @s[advancements={dsb:skyblock/constructions/water.collector=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/water.collector
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a[distance=..7]
particle minecraft:happy_villager ~ ~1 ~ 0.6 0.7 0.6 0 20

execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["initWaterCollector"]}
data modify block ~ ~ ~ CustomName set value '{"translate":"dsb.recipes.constructions.water_collector"}'

#Интеллект
scoreboard players add @s ai.water_collector 1
execute if score @s ai.water_collector matches 1 run scoreboard players add @s AI 3
execute if score @s ai.water_collector matches 2 run scoreboard players add @s AI 2
execute if score @s ai.water_collector matches 3 run scoreboard players add @s AI 1
#Усталость
scoreboard players add @s RestTimeAI 160

#Запуск работы
data modify block ~ ~ ~ Items append from storage dsb:cts WaterCollector.StartMenu[]
execute as @e[type=marker, tag=initWaterCollector, distance=..1.5] at @s run function dsb:constructions/water_collector/on_pos
execute as @e[type=marker, tag=initWaterCollector, distance=..1.5] at @s run function dsb:constructions/water_collector/menu/check