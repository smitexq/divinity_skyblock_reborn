#Шанс 15% что нанесется крит урон
execute store result score *var1 variables run random value 0..9 dsb:hawk_ring
#Если шанс не сработал, то заканчиваем функцию
execute unless score *var1 variables matches 0..1 run return -1

#Выбираем сколько урона нанести
execute store result storage dsb:temp Amount int 1 run random value 1..4
function rings:activate_ring/hawkring/dealt_damage with storage dsb:temp
data remove storage dsb:temp Amount