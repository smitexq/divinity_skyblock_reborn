#Очищаем временный массив
data remove storage dsb:temp DropItem
#Задаем предмет из руки (передади данные из аргумента)
$data modify storage dsb:temp DropItem.item set from entity @s $(TargetPath)

#Задаем случайное изменение направления выпадения по оси X и шансом 50% с отрицательным вектором
execute store result storage dsb:temp DropItem.dx int 1 run random value 1..7
#направление (+ или -)
execute store result score *result randomizer run random value 1..2
execute if score *result randomizer matches 1 run data modify storage dsb:temp DropItem.signX set value ""
execute if score *result randomizer matches 2 run data modify storage dsb:temp DropItem.signX set value "-"

#Вектор по Y
execute store result storage dsb:temp DropItem.dy int 1 run random value 10..35

#Задаем случайное изменение направления выпадения по оси Z и шансом 50% с отрицательным вектором
execute store result storage dsb:temp DropItem.dz int 1 run random value 1..7
execute store result score *result randomizer run random value 1..2
execute if score *result randomizer matches 1 run data modify storage dsb:temp DropItem.signZ set value ""
execute if score *result randomizer matches 2 run data modify storage dsb:temp DropItem.signZ set value "-"

#Спавн предмета с нужным вектором Motion
function entities:mobs/abilities/daze/summon_with_motion with storage dsb:temp DropItem
#Удаляем предмет из руки
$item replace entity @s weapon.$(hand) with air