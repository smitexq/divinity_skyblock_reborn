###Проверки перед созданием
#Если тут уже есть постройка, то возвращаем предметы
execute if entity @e[type=marker, tag=initSieve, distance=..1.5] run return run function dsb:constructions/return_items

#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_Sieve"}
execute if score #result variables matches 0 run return fail
###

scoreboard players add @s[advancements={dsb:skyblock/constructions/sieve=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/sieve
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a[distance=..7]
particle minecraft:happy_villager ~ ~1 ~ 0.35 0.35 0.35 0 20
summon marker ~ ~ ~ {Tags:["initSieve"]}

#Интеллект
scoreboard players add @s ai_sieve 1
execute if score @s ai_sieve matches 1 run scoreboard players add @s AI 2
execute if score @s ai_sieve matches 2 run scoreboard players add @s AI 1
#Усталость
scoreboard players add @s RestTimeAI 100

#Запуск функции на этой позиции
execute if dimension minecraft:the_nether in minecraft:the_nether run return run function dsb:constructions/sieve/on_pos
function dsb:constructions/sieve/on_pos