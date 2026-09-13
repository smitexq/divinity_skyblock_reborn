playsound minecraft:item.shield.break ambient @s ~ ~ ~ 1 0.7
tellraw @s {"translate":"dsb.events.sacrificial_ring.broken","color":"red"}

advancement grant @s only dsb:skyblock/diff/sacrifice

###Так как мы получаем список, а нужен один элемент, то берется какой то из них
execute if entity @s[tag=OpennedGUIRings] run function entities:player/grave/to_break_sacrificial_ring/get_from_player
$execute if entity @s[tag=!OpennedGUIRings] run data modify storage dsb:temp SacrificialRings set from storage dsb:rings $(Player_UUID).SaveRings[{components:{"minecraft:custom_data":{SacrificialRing:1b,used:0b}}}]


###Вставляем этот предмет в шалкер
setblock 17112022 255 0 minecraft:light_blue_shulker_box
data modify block 17112022 255 0 Items append from storage dsb:temp SacrificialRings

data modify storage dsb:temp OutPut.UUID set from storage dsb:grave new.Player_UUID
data modify storage dsb:temp OutPut.Slot set from storage dsb:temp SacrificialRings.Slot
#
function entities:player/grave/to_break_sacrificial_ring/macros with storage dsb:temp OutPut


#Убираем шалкер и тег на блокировку инвентаря
setblock 17112022 255 0 minecraft:air
tag @s remove BlockInvChanged
data remove storage dsb:temp OutPut
data remove storage dsb:temp SacrificialRings


###Если у игрока больше нет активных жертвенных колец, то убираем тег на сохранение инвентаря
$execute if entity @s[tag=!OpennedGUIRings] unless data storage dsb:rings $(Player_UUID).SaveRings[{components:{"minecraft:custom_data":{SacrificialRing:1b,used:0b}}}] run return run tag @s add RemoveSaveInventory
#Если меню закрыто, и команда выше не сработала, значит есть запасные кольца - ничего не делаем.
execute if entity @s[tag=!OpennedGUIRings] run return 0

#Ниже строки означают, что менюшка с кольцами открыта
#Проверяем, если в оставшихся слотах остается активное жертвенное кольцо, то значит ничего не делаем, а иначе удаляем тег на сохранение 
execute if data entity @s Inventory[{Slot:11b, components:{"minecraft:custom_data":{SacrificialRing:1b,used:0b}}}] run return 0
execute if data entity @s[tag=WearingRingOfAdvancedGUI] Inventory[{Slot:12b, components:{"minecraft:custom_data":{SacrificialRing:1b,used:0b}}}] run return 0
execute if data entity @s[tag=WearingRingOfAdvancedGUI] Inventory[{Slot:12b, components:{"minecraft:custom_data":{SacrificialRing:1b,used:0b}}}] run return 0
#Тег, обозначающий, что при следующем возрождении уберется сохранение инвентаря
tag @s add RemoveSaveInventory