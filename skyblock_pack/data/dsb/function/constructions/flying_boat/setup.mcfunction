###Проверки перед созданием
#проверка рецепта и интеллекта
execute store success score #result variables run function dsb:constructions/api/check_research {recipe: "RecipeOf_FlyingBoat"}
execute if score #result variables matches 0 run return fail
###

#Усталость
scoreboard players add @s RestTimeAI 200

scoreboard players add @s[advancements={dsb:skyblock/constructions/flying_boat=false}] dsb.adv.constructions_count 1
advancement grant @s only dsb:skyblock/constructions/flying_boat
#Частицы + звук
playsound minecraft:entity.player.levelup ambient @a
particle minecraft:happy_villager ~ ~1 ~ 1.2 1 1.2 0 50

#Запуск функции на этой позиции
execute summon minecraft:dark_oak_boat run function dsb:constructions/flying_boat/init
