###Проверки перед созданием
#измерение
execute unless dimension minecraft:the_nether run title @s actionbar {"translate":"dsb.events.in_current_dimension","color":"red", "with":[{"translate":"advancements.nether.root.title"}]}
execute unless dimension minecraft:the_nether run return run function dsb:constructions/return_items

#Если тут уже есть постройка, то возвращаем предметы
execute if entity @e[type=interaction, tag=initBlazeSpawner, distance=..1.5] run return run function dsb:constructions/return_items

#Если был использован молот, то возвращаем его (только план постройки)
execute if entity @s[tag=buildngHammer] run title @s actionbar {"translate":"dsb.events.need_building_plan","color":"gold"}
execute if entity @s[tag=buildngHammer] run return run function dsb:constructions/return_items

#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_BlazeSpawner"}
execute if score #result variables matches 0 run return fail
###

setblock ~ ~ ~ air

#достижение
scoreboard players add @s[advancements={dsb:skyblock/constructions/blaze.spawner=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/blaze.spawner
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a[distance=..7]
particle minecraft:happy_villager ~ ~1 ~ 0.6 0.7 0.6 0 20

execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {Tags:["initBlazeSpawner"]}

#Интеллект
scoreboard players add @s ai.blaze_spawner 1
execute if score @s ai.blaze_spawner matches 1 run scoreboard players add @s AI 6
execute if score @s ai.blaze_spawner matches 2 run scoreboard players add @s AI 3
#Усталость
scoreboard players add @s RestTimeAI 280

#Запуск работы
execute as @e[type=interaction, tag=initBlazeSpawner, distance=..1.5] at @s run function dc:gu/generate
execute as @e[type=interaction, tag=initBlazeSpawner, distance=..1.5] at @s run function dsb:constructions/blaze_spawner/init with storage gu:main
# execute as @e[type=marker, tag=initBlazeSpawner, distance=..1.5] at @s run function dsb:constructions/nether_converter/check_items