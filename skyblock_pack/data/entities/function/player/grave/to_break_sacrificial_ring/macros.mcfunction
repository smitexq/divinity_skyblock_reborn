#Заменяем кольцо на поломанное
$loot replace block 17112022 255 0 container.$(Slot) loot dsb:items/rings/sacrificial_ring_broken

#Если меню было закрыто, то кольцо кидаем в хранилище с аксами
$execute if entity @s[tag=!OpennedGUIRings] run return run data modify storage dsb:rings $(UUID).SaveRings[{Slot:$(Slot)b}] set from block 17112022 255 0 Items[0]

#Иначе в инвентарь того же слота, только перед этим поставим предмет в первый слот шалкера
data modify block 17112022 255 0 Items[0].Slot set value 0b
$loot replace entity @s container.$(Slot) 1 mine 17112022 255 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]