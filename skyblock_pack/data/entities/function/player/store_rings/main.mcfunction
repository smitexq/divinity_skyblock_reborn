#$(out) - uuid игрока
#Записываем в хранилище инвентарь для манипуляции с ним
data modify storage dsb:temp Grave.GraveInv set from entity @s Inventory
data remove storage dsb:temp Grave.GraveInv[{components:{"minecraft:custom_data":{accessories_font:1b}}}]

#Если gui открыто, то записываем кольца. А предметы из хранилища инвентаря игрока (которое появляется вместо фона меню колец) записываем ему обратно (возвращаем)
execute if entity @s[tag=OpennedGUIRings] run return run function entities:player/store_rings/openned_gui with storage dsb:grave new

#Если gui закрыто, то все предметы и так сохранятся в могиле, нужно сохранить только кольца
$data modify storage dsb:temp Grave.SaveAccessories set from storage dsb:rings $(Player_UUID).SaveRings
data remove storage dsb:temp Grave.SaveAccessories[{components:{"minecraft:custom_data":{accessories_font:1b}}}]

#Очищаем хранилище с сохранением колец и инвентарем игрока (то что для сохранения колец)
$data modify storage dsb:rings $(Player_UUID).SaveRings set value []
$data modify storage dsb:rings $(Player_UUID).SaveInventory set value []
