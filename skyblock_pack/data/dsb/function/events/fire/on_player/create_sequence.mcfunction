###Устанавливаем 8 значений для взаимодействий
#Изначально все действия равны 0, то есть ни ЛКМ ни ПКМ, то есть ничего не делаеть
$data modify storage dsb:cts Fire.$(out).act set value {bit1:0, bit2:0, bit3:0, bit4:0, bit5:0, bit6:0, bit7:0, bit8:0,}

#0 - ничего не надо делать, 1 - ПКМ, 2 - ЛКМ
execute store result score *var1 variables run random value 0..2 dsb:fire
$execute if score *var1 variables matches 0 run data modify storage dsb:cts Fire.$(out).text.bit1 set value "§7■"
$execute if score *var1 variables matches 1..2 run data modify storage dsb:cts Fire.$(out).text.bit1 set value "§6■"
$execute if score *var1 variables matches 1 run data modify storage dsb:cts Fire.$(out).act.bit1 set value 1
$execute if score *var1 variables matches 2 run data modify storage dsb:cts Fire.$(out).act.bit1 set value -1

execute store result score *var1 variables run random value 0..2 dsb:fire
$execute if score *var1 variables matches 0 run data modify storage dsb:cts Fire.$(out).text.bit2 set value "§7■"
$execute if score *var1 variables matches 1..2 run data modify storage dsb:cts Fire.$(out).text.bit2 set value "§6■"
$execute if score *var1 variables matches 1 run data modify storage dsb:cts Fire.$(out).act.bit2 set value 1
$execute if score *var1 variables matches 2 run data modify storage dsb:cts Fire.$(out).act.bit2 set value -1

execute store result score *var1 variables run random value 0..2 dsb:fire
$execute if score *var1 variables matches 0 run data modify storage dsb:cts Fire.$(out).text.bit3 set value "§7■"
$execute if score *var1 variables matches 1..2 run data modify storage dsb:cts Fire.$(out).text.bit3 set value "§6■"
$execute if score *var1 variables matches 1 run data modify storage dsb:cts Fire.$(out).act.bit3 set value 1
$execute if score *var1 variables matches 2 run data modify storage dsb:cts Fire.$(out).act.bit3 set value -1

execute store result score *var1 variables run random value 0..2 dsb:fire
$execute if score *var1 variables matches 0 run data modify storage dsb:cts Fire.$(out).text.bit4 set value "§7■"
$execute if score *var1 variables matches 1..2 run data modify storage dsb:cts Fire.$(out).text.bit4 set value "§6■"
$execute if score *var1 variables matches 1 run data modify storage dsb:cts Fire.$(out).act.bit4 set value 1
$execute if score *var1 variables matches 2 run data modify storage dsb:cts Fire.$(out).act.bit4 set value -1

execute store result score *var1 variables run random value 0..2 dsb:fire
$execute if score *var1 variables matches 0 run data modify storage dsb:cts Fire.$(out).text.bit5 set value "§7■"
$execute if score *var1 variables matches 1..2 run data modify storage dsb:cts Fire.$(out).text.bit5 set value "§6■"
$execute if score *var1 variables matches 1 run data modify storage dsb:cts Fire.$(out).act.bit5 set value 1
$execute if score *var1 variables matches 2 run data modify storage dsb:cts Fire.$(out).act.bit5 set value -1

execute store result score *var1 variables run random value 0..2 dsb:fire
$execute if score *var1 variables matches 0 run data modify storage dsb:cts Fire.$(out).text.bit6 set value "§7■"
$execute if score *var1 variables matches 1..2 run data modify storage dsb:cts Fire.$(out).text.bit6 set value "§6■"
$execute if score *var1 variables matches 1 run data modify storage dsb:cts Fire.$(out).act.bit6 set value 1
$execute if score *var1 variables matches 2 run data modify storage dsb:cts Fire.$(out).act.bit6 set value -1

execute store result score *var1 variables run random value 0..2 dsb:fire
$execute if score *var1 variables matches 0 run data modify storage dsb:cts Fire.$(out).text.bit7 set value "§7■"
$execute if score *var1 variables matches 1..2 run data modify storage dsb:cts Fire.$(out).text.bit7 set value "§6■"
$execute if score *var1 variables matches 1 run data modify storage dsb:cts Fire.$(out).act.bit7 set value 1
$execute if score *var1 variables matches 2 run data modify storage dsb:cts Fire.$(out).act.bit7 set value -1

execute store result score *var1 variables run random value 0..2 dsb:fire
$execute if score *var1 variables matches 0 run data modify storage dsb:cts Fire.$(out).text.bit8 set value "§7■"
$execute if score *var1 variables matches 1..2 run data modify storage dsb:cts Fire.$(out).text.bit8 set value "§6■"
$execute if score *var1 variables matches 1 run data modify storage dsb:cts Fire.$(out).act.bit8 set value 1
$execute if score *var1 variables matches 2 run data modify storage dsb:cts Fire.$(out).act.bit8 set value -1

#Вывод на экран
$function dsb:events/fire/on_player/title with storage dsb:cts Fire.$(out).text
#дальше проверка действий
function dsb:events/fire/actions/start