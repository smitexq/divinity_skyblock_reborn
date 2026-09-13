#Добавляем этот случайный предмет в итоговый массив
$data modify storage dsb:temp LosingControl.out append from storage dsb:temp LosingControl.Inventory[$(Random)]
#Задаем этому предмету случайно выбранный слот
$data modify storage dsb:temp LosingControl.out[-1].Slot set from storage dsb:temp LosingControl.Slots.StorageNumbers[$(IndexOfNewNumber)]

#Удаляем из прошлого хотбара этот предмет
$data remove storage dsb:temp LosingControl.Inventory[$(Random)]
#Удаляем этот номер слота из списка с номера
$data remove storage dsb:temp LosingControl.Slots.StorageNumbers[$(IndexOfNewNumber)]


#Количество элементов в массиве-хотбаре уменьшилось на 1, как и количество чисел для слотов. (только это индексы, поэтому на 1 меньше чем количество)
execute store result storage dsb:temp LosingControl.PlayerCountSlots int 1 run scoreboard players remove *var1 variables 1
execute store result storage dsb:temp LosingControl.LengthStorageNumbers int 1 run scoreboard players remove *var2 variables 1

#Если в старом хотбаре еще есть предметы, то для следующего предмета запускаем еще раз функцию
execute if score *var1 variables matches 0.. run function entities:mobs/abilities/losing_control/random_slot with storage dsb:temp LosingControl