#частицы призыва луча
execute anchored eyes positioned ^ ^-0.4 ^0.7 run particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.005 10 force

scoreboard players reset @s use.charged_ray
#tag @s remove use.charged_ray
tag @s remove modify.name

#Старт raycast
function entities:mobs/abilities/charged_ray_poison/raycast/set_values