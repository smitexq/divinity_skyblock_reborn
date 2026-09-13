###Проверки перед созданием
#Если тут уже есть постройка, то возвращаем предметы
execute if entity @e[type=interaction, tag=initLanternOfPeace, distance=..1.5] run return run function dsb:constructions/return_items

#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_LanternOfPeace"}
execute if score #result variables matches 0 run return fail
###

#Усталость
scoreboard players add @s RestTimeAI 180

scoreboard players add @s[advancements={dsb:skyblock/constructions/lantern_of_piece=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/lantern_of_piece
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a[distance=..8]
particle minecraft:happy_villager ~ ~1 ~ 1 0.8 1 0 30

execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {height:1,width:1,Tags:["initLanternOfPeace"]}

#Запуск функции на этой позиции
execute as @e[type=interaction, tag=initLanternOfPeace, distance=..1.5] at @s run function dc:gu/generate
execute as @e[type=interaction, tag=initLanternOfPeace, distance=..1.5] at @s run function dsb:constructions/lantern_of_peace/init with storage gu:main
