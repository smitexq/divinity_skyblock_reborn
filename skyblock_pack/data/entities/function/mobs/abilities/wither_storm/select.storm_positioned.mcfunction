###Перемещение торнадо змейкой###
#1-ый вариант с меньше амплитудой колебания волны
# $execute if score @s side.wither_storm matches -2 positioned ^-0.$(wither_storm) ^ ^ run function entities:mobs/abilities/wither_storm/inside/on_position
# $execute if score @s side.wither_storm matches -1 positioned ^-1 ^ ^ positioned ^0.$(wither_storm) ^ ^ run function entities:mobs/abilities/wither_storm/inside/on_position
# $execute if score @s side.wither_storm matches 0 positioned ^0.$(wither_storm) ^ ^ run function entities:mobs/abilities/wither_storm/inside/on_position
# $execute if score @s side.wither_storm matches 1 positioned ^1 ^ ^ positioned ^-0.$(wither_storm) ^ ^ run function entities:mobs/abilities/wither_storm/inside/on_position


#2-ой вариант с большей амплитудой колебания волны

$execute if score @s side.wither_storm matches -4 positioned ^-0.$(WitherStorm) ^ ^ run function entities:mobs/abilities/wither_storm/inside/on_position
$execute if score @s side.wither_storm matches -3 positioned ^-1 ^ ^ positioned ^-0.$(WitherStorm) ^ ^ run function entities:mobs/abilities/wither_storm/inside/on_position
$execute if score @s side.wither_storm matches -2 positioned ^-2 ^ ^ positioned ^0.$(WitherStorm) ^ ^ run function entities:mobs/abilities/wither_storm/inside/on_position
$execute if score @s side.wither_storm matches -1 positioned ^-1 ^ ^ positioned ^0.$(WitherStorm) ^ ^ run function entities:mobs/abilities/wither_storm/inside/on_position
$execute if score @s side.wither_storm matches 0 positioned ^0.$(WitherStorm) ^ ^ run function entities:mobs/abilities/wither_storm/inside/on_position
$execute if score @s side.wither_storm matches 1 positioned ^1 ^ ^ positioned ^0.$(WitherStorm) ^ ^ run function entities:mobs/abilities/wither_storm/inside/on_position
$execute if score @s side.wither_storm matches 2 positioned ^2 ^ ^ positioned ^-0.$(WitherStorm) ^ ^ run function entities:mobs/abilities/wither_storm/inside/on_position
$execute if score @s side.wither_storm matches 3 positioned ^1 ^ ^ positioned ^-0.$(WitherStorm) ^ ^ run function entities:mobs/abilities/wither_storm/inside/on_position