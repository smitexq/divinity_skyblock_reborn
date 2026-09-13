#Очищаем шалкер
data remove block 17112023 255 0 Items
#Закидываем в него все предметы для инвентаря
$data modify block 17112023 255 0 Items set from storage dsb:rings $(out).SaveInventory

#Поочередно вставляем их в слоты
item replace entity @s inventory.1 from block 17112023 255 0 container.10
item replace entity @s inventory.2 from block 17112023 255 0 container.11
item replace entity @s[tag=WearingRingOfAdvancedGUI] inventory.3 from block 17112023 255 0 container.12
item replace entity @s[tag=WearingRingOfAdvancedGUI] inventory.4 from block 17112023 255 0 container.13