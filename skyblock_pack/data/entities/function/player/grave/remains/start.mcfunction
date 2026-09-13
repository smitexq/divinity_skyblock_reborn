#записываем оставшиеся предметы из могилы (хотбар и первые 2 строчки)
data modify block 17112022 255 0 Items set from storage dsb:grave db.GraveInventory
#возвращаем 3 строчки
loot spawn ~ ~ ~ mine 17112022 255 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

#записываем оставшиеся предметы из сохранившихся аксессуаров
data modify block 17112022 255 0 Items set from storage dsb:grave acces.SaveAccessories
#возвращаем их
loot spawn ~ ~ ~ mine 17112022 255 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

###def Замена слотов
data remove storage dsb:grave db.TempGraveInv

execute store result storage dsb:grave db.Index int 1 run scoreboard players set *var1 variables 0
data modify storage dsb:grave db.Numbers set value [27,28,29,30,31,32,33,34,35,100,101,102,103,-106]
data modify storage dsb:grave db.TargetNamespace set value "TempGraveInv"
data modify storage dsb:grave db.SourceNamespace set value "GraveInventory"
data modify storage dsb:grave db.limit set value 13

function entities:player/grave/inv/replace_numbers with storage dsb:grave db
###

data modify block 17112022 255 0 Items set from storage dsb:grave db.TempGraveInv

#возвращаем предметы
loot spawn ~ ~ ~ mine 17112022 255 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]


###Убираем блокировку инвентаря (inventory changed)
tag @s remove BlockInvChanged

#Если меню открыто, то проверяем кольцо напрямую из инвентаря
execute if entity @s[tag=OpennedGUIRings] run return run function rings:check_the_rings/main {source: "entity @s Inventory"}
#Иначе из его облачного хранилища
$function rings:check_the_rings/main {source: "storage dsb:rings $(out).SaveRings"}