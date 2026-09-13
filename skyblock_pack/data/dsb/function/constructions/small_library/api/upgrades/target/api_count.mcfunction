###Добавление очков в скорборд
#записываем сколько всего томов мудрости
data modify storage dsb:temp temp set value []
$data modify storage dsb:temp temp append from storage dsb:cts Libraries[{Upgrades:[{UUID:$(out)}]}].Upgrades[{item:{components:{"minecraft:custom_data":{id: "tome_of_wisdom"}}}}]
execute store result score #wisdom library.tome_of_wisdom run data get storage dsb:temp temp


#записываем сколько всего томов рун
data modify storage dsb:temp temp set value []
$data modify storage dsb:temp temp append from storage dsb:cts Libraries[{Upgrades:[{UUID:$(out)}]}].Upgrades[{item:{components:{"minecraft:custom_data":{id: "tome_of_rune"}}}}]
execute store result score #rune library.tome_of_rune run data get storage dsb:temp temp
data remove storage dsb:temp temp

#В скорборд от ИМЕНИ библиотеки записываем кол-во
$function dsb:constructions/small_library/api/upgrades/target/store_score with storage dsb:cts Libraries[{Upgrades:[{UUID:$(out)}]}]
###