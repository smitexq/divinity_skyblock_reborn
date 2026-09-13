kill @s
execute store result score #id Pots run random value 0..9

#40% на мирного моба
execute if score #id Pots matches 0..3 run return run function gen:pots/entities/friendly
#Иначе враждебный
function gen:pots/entities/hostile