#Выбираем способ лечение (моментальное или регенарация)
execute store result score *var1 variables run random value 1..2
#Если выпал моментальный, то нижние команды не выполняются
execute if score *var1 variables matches 1 run return run function entities:mobs/abilities/regeneration/instant_heal

#Выбираем сколько отхилить от 8 до 20
tag @s add ActiveHealing
execute store result score @s RecursionDepth run random value 8..20
function entities:mobs/abilities/regeneration/slow_heal