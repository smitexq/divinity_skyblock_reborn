#Если у игрока есть предмет в основной руке, то он выпадет
execute if data entity @s SelectedItem run function entities:mobs/abilities/daze/hand {TargetPath:SelectedItem, hand:mainhand}

#Тоже самое, если есть во второй руке
execute if data entity @s Inventory[{Slot:-106b}] run function entities:mobs/abilities/daze/hand {TargetPath:"Inventory[{Slot:-106b}]", hand:offhand}

#Выдаем замедление
effect give @s minecraft:slowness 10 1
playsound minecraft:entity.elder_guardian.hurt ambient @s
#Очищаем хранилище
data remove storage dsb:temp DropItem