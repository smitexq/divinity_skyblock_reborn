function dc:get_call {tick:10, command:"advancement revoke @s only dsb:events/use/research", requirePos:false, requireEntity:true}

#проверяем изучен ли уже этот рецепт
data modify storage dsb:temp id set from entity @s SelectedItem.components."minecraft:custom_data".id
execute store success score *var1 variables run function dsb:events/research_recipe/check_tag with storage dsb:temp

#Если уже изучен рецепт
execute if score *var1 variables matches 0 run playsound entity.villager.no ambient @s
execute if score *var1 variables matches 0 run return run tellraw @s {"translate":"dsb.events.research_recipe.fail.learn_yet","color":"red"}

#Узнаем нужное кол-во интеллекта для изучения
function dsb:events/research_recipe/get_ai with storage dsb:temp
function dsb:events/research_recipe/success with storage dsb:temp