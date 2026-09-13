###Проверки перед созданием
#измерение
execute unless dimension minecraft:overworld run title @s actionbar {"translate":"dsb.events.in_current_dimension","color":"red", "with":[{"translate":"flat_world_preset.minecraft.overworld"}]}
execute unless dimension minecraft:overworld run return run function dsb:constructions/return_items

#Если тут уже есть постройка, то возвращаем предметы
execute if entity @e[type=chest_minecart, tag=initComposter, distance=..1.5] run return run function dsb:constructions/return_items

#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_Composter"}
execute if score #result variables matches 0 run return fail
###

scoreboard players add @s[advancements={dsb:skyblock/constructions/composter=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/composter
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a[distance=..7]
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.8 0.4 0 20
execute align xyz positioned ~0.5 ~ ~0.5 run summon chest_minecart ~ ~0.3 ~ {Tags:["initComposter","invisible_minecart"], NoGravity:1b, Silent:1b, Invulnerable:1b, DisplayState:{Name:"minecraft:air"}, CustomDisplayTile:1b}

#Интеллект
scoreboard players add @s ai_composter 1
execute if score @s ai_composter matches 1 run scoreboard players add @s AI 2
execute if score @s ai_composter matches 2 run scoreboard players add @s AI 1
#Усталость
scoreboard players add @s RestTimeAI 90

#Запуск работы
execute as @e[type=chest_minecart, tag=initComposter, distance=..1.5] run function dc:gu/generate
execute as @e[type=chest_minecart, tag=initComposter, distance=..1.5] at @s run function dsb:constructions/composter/init with storage gu:main