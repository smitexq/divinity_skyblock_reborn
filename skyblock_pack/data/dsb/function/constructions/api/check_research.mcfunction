#Есть ли у игрока изучение
$execute if entity @s[tag=!$(recipe)] run title @s actionbar {"translate":"dsb.events.no_recipe_construction","color":"red"}
$execute if entity @s[tag=!$(recipe)] run return run function dsb:constructions/return_items

###Есть изучение, но хватает ли интеллекта для создания
$execute store result score *var1 variables run data get storage dsb:recipes RecipesAI.$(recipe)
execute if score @s AI < *var1 variables run title @s actionbar {"translate":"dsb.events.lack_of_intelligence","with":[{"score":{"objective":"variables","name":"*var1"}}, {"score":{"objective":"AI","name":"@s"}}],"color":"red"}
execute if score @s AI < *var1 variables run return run function dsb:constructions/return_items
###

#Если был использован молот, то нужно определить шанс
scoreboard players set *var1 variables 1
execute if entity @s[tag=buildngHammer] store result score *var1 variables run random value 0..1 dsb:building_hammer
execute if score *var1 variables matches 0 run return run function dsb:constructions/lose_hammer
#если шанс сработал, то сбрасываем счетчик
scoreboard players reset @s dsb.adv.lose_hammer
###

###Шанс не потратить план постройки (если выпит чай с сакурой)
execute if entity @s[tag=buildngPlan] run loot give @s loot dsb:items/sakura_tea_return_plan
###

return 1