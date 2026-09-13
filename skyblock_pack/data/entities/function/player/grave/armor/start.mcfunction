#Добавляем в шалкер броню, которая сейчас есть на игроке
data remove block 17112022 255 0 Items
item replace block 17112022 255 0 container.0 from entity @s weapon.offhand
item replace block 17112022 255 0 container.1 from entity @s armor.feet
item replace block 17112022 255 0 container.2 from entity @s armor.legs
item replace block 17112022 255 0 container.3 from entity @s armor.chest
item replace block 17112022 255 0 container.4 from entity @s armor.head


data remove storage dsb:grave db.TempGraveInv
#Номера слотов для брони это 100+ (для второй руки -106)
###def Замена слотов
execute store result storage dsb:grave db.Index int 1 run scoreboard players set *var1 variables 0
data modify storage dsb:grave db.Numbers set value [-106,100,101,102,103]
data modify storage dsb:grave db.TargetNamespace set value "TempGraveInv"
data modify storage dsb:grave db.SourceNamespace set value "GraveInventory"
data modify storage dsb:grave db.limit set value 4

function entities:player/grave/inv/replace_numbers with storage dsb:grave db
###


###def Перенос предметов (брони) в шалкер
scoreboard players set *var1 variables 99
scoreboard players set *var2 variables 0
data modify storage dsb:grave db.Namespace set value "TempGraveInv"
function entities:player/grave/inv/loop {limit:3}
###

###Перенос из второй руки
function entities:player/grave/inv/macros {TargetSlot: -106, NewSlot: 0, Namespace: "TempGraveInv"}


#Надеваем броню на игрока и во вторую руку предмет
loot replace entity @s weapon.offhand mine 17112022 255 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]