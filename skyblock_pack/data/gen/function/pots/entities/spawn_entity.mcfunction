kill @s
execute store result score #id Pots run random value 0..9

#70% на мирного моба
execute if score #id Pots matches 0..6 run return run function gen:pots/entities/friendly
#Иначе враждебный
function gen:pots/entities/hostile