###Проверки перед созданием
#Если тут уже есть, то возвращаем предметы
execute if entity @e[type=interaction, tag=initWaystone, distance=..1.5] run return run function dsb:constructions/return_items

#Если был использован молот, то возвращаем его (только план постройки)
execute if entity @s[tag=buildngHammer] run title @s actionbar {"translate":"dsb.events.need_building_plan","color":"gold"}
execute if entity @s[tag=buildngHammer] run return run function dsb:constructions/return_items

#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_Waystone"}
execute if score #result variables matches 0 run return fail
###

#Усталость
scoreboard players add @s RestTimeAI 120

scoreboard players add @s[advancements={dsb:skyblock/constructions/waystone=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/waystone
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a[distance=..7]
particle minecraft:happy_villager ~ ~1 ~ 1 0.8 1 0 30

execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {height:1.0,width:0.51,Tags:["initWaystone"]}
#Запуск функции на этой позиции
execute as @e[type=interaction, tag=initWaystone, distance=..1.5] at @s run function dc:gu/generate
execute as @e[type=interaction, tag=initWaystone, distance=..1.5] at @s summon marker run function dsb:constructions/waystone/init with storage gu:main
execute as @e[type=interaction, tag=initWaystone, distance=..1.5] at @s run function dsb:constructions/waystone/on_pos
