#Записываем каждый предмет из инвентаря в хранилище
$data modify storage dsb:rings $(out).SaveInventory set value []

$data modify storage dsb:rings $(out).SaveInventory append from entity @s Inventory[{Slot:10b}]
$data modify storage dsb:rings $(out).SaveInventory append from entity @s Inventory[{Slot:11b}]
$execute if entity @s[tag=WearingRingOfAdvancedGUI] run data modify storage dsb:rings $(out).SaveInventory append from entity @s Inventory[{Slot:12b}]
$execute if entity @s[tag=WearingRingOfAdvancedGUI] run data modify storage dsb:rings $(out).SaveInventory append from entity @s Inventory[{Slot:13b}]