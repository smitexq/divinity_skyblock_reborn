#Проверка хп каждые 15 тиков
function dc:get_call {tick:15, command:"function rings:activate_ring/northern_ritual_ring/check_health", requirePos:false, requireEntity:true}

#Получаем максимальное HP (70% от него)
scoreboard players set #7 variables 7
scoreboard players set #10 variables 10
execute store result score *var1 variables run attribute @s minecraft:max_health get 10
scoreboard players operation *var1 variables *= #7 variables
scoreboard players operation *var1 variables /= #10 variables

#И текущее
execute store result score *var2 variables run data get entity @s Health 10

#Если здоровье меньше или равно 70% (умноженное на 10), то выдаем урон/защиту
execute if score *var2 variables <= *var1 variables run return run attribute @s minecraft:attack_damage modifier add damage_northern 1 add_value

#Иначе убираем
attribute @s minecraft:attack_damage modifier remove damage_northern