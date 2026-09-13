#Проверка хп каждые 1,5 секунды
function dc:get_call {tick:30, command:"function rings:activate_ring/ring_of_disaster/check_health", requirePos:false, requireEntity:true}

#Если текущее здоровье НЕ меньше максимального (может быть на 2 меньше), то повышаем урон
execute store result score *var1 variables run data get entity @s Health 10
execute store result score *var2 variables run attribute @s minecraft:max_health get 10
#Добавляем к текущему 30, чтобы потом сравнить с максимальныем (эта та допустимая разница, чтобы еще можно было добавить урон)
scoreboard players add *var1 variables 30

#Если здоровье меньше чем 2 от максимального, то убираем +1 урон
execute if score *var1 variables < *var2 variables run return run attribute @s minecraft:attack_damage modifier remove damage_disaster

#Иначе добавляем
attribute @s minecraft:attack_damage modifier add damage_disaster 3 add_value