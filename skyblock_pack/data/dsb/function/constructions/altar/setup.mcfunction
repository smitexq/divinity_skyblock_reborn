###Проверки перед созданием
#Если тут уже есть в мире, то возвращаем предметы
execute if score #init Altar matches 1 run title @s actionbar {"translate":"dsb.events.altar.no_more","color":"gold"}
execute if score #init Altar matches 1 run return run function dsb:constructions/return_items

#Если был использован молот, то возвращаем его (только план постройки)
execute if entity @s[tag=buildngHammer] run title @s actionbar {"translate":"dsb.events.need_building_plan","color":"gold"}
execute if entity @s[tag=buildngHammer] run return run function dsb:constructions/return_items

#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_Altar"}
execute if score #result variables matches 0 run return fail
###

###Убираем свечки, редстоун, заборчик и голову
setblock ~ ~ ~ air
setblock ~ ~-1 ~ air
fill ~-4 ~-1 ~ ~4 ~-1 ~ air replace candle
fill ~ ~-1 ~-4 ~ ~-1 ~4 air replace candle
fill ~-3 ~-2 ~-3 ~3 ~-2 ~3 air replace minecraft:redstone_wire
###

scoreboard players add @s[advancements={dsb:skyblock/constructions/altar=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/altar
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a[distance=..15]
particle minecraft:happy_villager ~ ~1 ~ 0.6 0.7 0.6 0 20

execute align xyz run summon minecraft:interaction ~0.5 ~0.4 ~0.5 {height:1.2,width:0.6,Tags:["initAltar"]}

#Интеллект
scoreboard players add @s ai_altar 1
execute if score @s ai_altar matches 1 run scoreboard players add @s AI 6
execute if score @s ai_altar matches 2 run scoreboard players add @s AI 4
execute if score @s ai_altar matches 3 run scoreboard players add @s AI 3
#Усталость
scoreboard players add @s RestTimeAI 300

#Запуск работы
execute as @e[type=interaction, tag=initAltar] at @s run function dsb:constructions/altar/init with storage gu:main