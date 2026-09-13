#Записываем каждый артефакт в хранилище
$data modify storage dsb:rings $(out).SaveRings set value []

$data modify storage dsb:rings $(out).SaveRings append from entity @s Inventory[{Slot:10b}]
$data modify storage dsb:rings $(out).SaveRings append from entity @s Inventory[{Slot:11b}]
$execute if entity @s[tag=WearingRingOfAdvancedGUI] run data modify storage dsb:rings $(out).SaveRings append from entity @s Inventory[{Slot:12b}]
$execute if entity @s[tag=WearingRingOfAdvancedGUI] run data modify storage dsb:rings $(out).SaveRings append from entity @s Inventory[{Slot:13b}]