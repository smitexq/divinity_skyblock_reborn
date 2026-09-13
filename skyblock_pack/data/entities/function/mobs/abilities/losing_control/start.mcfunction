#Создаем пустой массив хотбара игрока
data modify storage dsb:temp LosingControl.Inventory set value []
#Получаем хотбар игрока
data modify storage dsb:temp LosingControl.Inventory append from entity @s Inventory[{Slot:0b}]
data modify storage dsb:temp LosingControl.Inventory append from entity @s Inventory[{Slot:1b}]
data modify storage dsb:temp LosingControl.Inventory append from entity @s Inventory[{Slot:2b}]
data modify storage dsb:temp LosingControl.Inventory append from entity @s Inventory[{Slot:3b}]
data modify storage dsb:temp LosingControl.Inventory append from entity @s Inventory[{Slot:4b}]
data modify storage dsb:temp LosingControl.Inventory append from entity @s Inventory[{Slot:5b}]
data modify storage dsb:temp LosingControl.Inventory append from entity @s Inventory[{Slot:6b}]
data modify storage dsb:temp LosingControl.Inventory append from entity @s Inventory[{Slot:7b}]
data modify storage dsb:temp LosingControl.Inventory append from entity @s Inventory[{Slot:8b}]

#var1 отвечает за индекс последнего элемента в массиве. Таким образом мы можем рандомно брать слот от 0 до var1
execute store result score *var1 variables run data get storage dsb:temp LosingControl.Inventory
execute store result storage dsb:temp LosingControl.PlayerCountSlots byte 1 run scoreboard players remove *var1 variables 1

#Если хотбар игрока был пустой, то заканчиваем функцию
execute if score *var1 variables matches -1 run return -1

#Частицы и звук
particle minecraft:elder_guardian
playsound minecraft:entity.evoker.cast_spell ambient @s

#Задаем массив из чисел. Этот массив отвечает за то, чтобы каждому предмету задать новый номер слота. И когда один номер используется, то он удаляется из массива, чтобы не было повторов
data modify storage dsb:temp LosingControl.Slots.StorageNumbers set value [I; 0,1,2,3,4,5,6,7,8]


#var2 отвечает за индекс последнего элемента в массиве c числами свободных слотов. Таким образом мы можем рандомно брать слот от 0 до var2, потом удалять этот номер из массива, чтобы он не использовался еще раз
execute store result score *var2 variables run data get storage dsb:temp LosingControl.Slots.StorageNumbers
execute store result storage dsb:temp LosingControl.LengthStorageNumbers byte 1 run scoreboard players remove *var2 variables 1

#Выбираем случайный слот
function entities:mobs/abilities/losing_control/random_slot with storage dsb:temp LosingControl


#Ставим шалкер, в него копируем новый полученный хотбар, а после этого копируем из шалкера в инвентарь игрока
setblock 17112023 253 0 light_blue_shulker_box
data modify block 17112023 253 0 Items set from storage dsb:temp LosingControl.out
loot replace entity @s hotbar.0 9 mine 17112023 253 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
setblock 17112023 253 0 light_blue_shulker_box

#Очищаем временное хранилище
data remove storage dsb:temp LosingControl