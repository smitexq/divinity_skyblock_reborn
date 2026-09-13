setblock 17112022 0 0 air

#Если есть в 10-ом слоте топливо
$execute if data storage dsb:rings $(out).SaveInventory[{Slot:10b,components:{"minecraft:custom_data":{id:"fuel"}}}] run return run function dsb:constructions/flying_boat/remove_fuel/remove_in_rings {out:$(out), slot:10}

$execute if data storage dsb:rings $(out).SaveInventory[{Slot:11b,components:{"minecraft:custom_data":{id:"fuel"}}}] run return run function dsb:constructions/flying_boat/remove_fuel/remove_in_rings {out:$(out), slot:11}


#
execute if entity @s[tag=!WearingRingOfAdvancedGUI] run return 0

$execute if data storage dsb:rings $(out).SaveInventory[{Slot:12b,components:{"minecraft:custom_data":{id:"fuel"}}}] run return run function dsb:constructions/flying_boat/remove_fuel/remove_in_rings {out:$(out), slot:12}

$execute if data storage dsb:rings $(out).SaveInventory[{Slot:13b,components:{"minecraft:custom_data":{id:"fuel"}}}] run return run function dsb:constructions/flying_boat/remove_fuel/remove_in_rings {out:$(out), slot:13}
