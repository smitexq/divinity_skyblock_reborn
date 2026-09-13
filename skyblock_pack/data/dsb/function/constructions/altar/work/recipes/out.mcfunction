#Если для ритуала нужно время суток конкретное или моб
execute if predicate dsb:recipes/ritual/ender_chest run scoreboard players set #night Altar 1
execute if predicate dsb:recipes/ritual/saplings run scoreboard players set #day Altar 1
execute if predicate dsb:recipes/ritual/elytra run scoreboard players set #chicken Altar 1
execute if predicate dsb:recipes/ritual/elytra run scoreboard players set #night Altar 1
#

setblock 17112022 0 0 air

#Если нет изучения
$execute if entity @s[tag=!RecipeOf_$(name)] run title @s actionbar {"translate":"dsb.events.no_recipe_ritual","color":"red"}
$execute if entity @s[tag=!RecipeOf_$(name)] run return fail

#Если не хватает интеллекта
$execute unless score @s AI matches $(ai_need).. run title @s actionbar {"translate":"dsb.events.lack_of_intelligence","with":["$(ai_need)",{"score":{"objective":"AI","name":"@s"}}],"color":"red"}
$execute unless score @s AI matches $(ai_need).. run return fail

#Если не хватает душ
execute store result score *var1 variables run data get storage dsb:cts Altar.SoulsCount
$execute unless score *var1 variables matches $(soul).. run title @s actionbar {"translate":"dsb.events.ritual.need_souls","color":"red"}
$execute unless score *var1 variables matches $(soul).. run return fail


###Если для рецепта нужен день/ночь
execute store result score *var1 variables run time query daytime

execute if score #night Altar matches 1 unless score *var1 variables matches 13500..22500 run return run function dsb:constructions/altar/work/recipes/error {msg:"dsb.events.altar.night"} 
execute if score #day Altar matches 1 unless score *var1 variables matches 1000..12000 run return run function dsb:constructions/altar/work/recipes/error {msg:"dsb.events.altar.day"}

execute if score #chicken Altar matches 1 unless function dsb:constructions/altar/work/recipes/check_entity run return fail
###


$scoreboard players set #$(name) Altar 1
#Если делается эндер глаз, то меньше времени
execute if score #ender_eye Altar matches 1 run scoreboard players set #4_items Altar 1
#Отнимаем интеллект
$scoreboard players remove @s AI $(ai)

return 1