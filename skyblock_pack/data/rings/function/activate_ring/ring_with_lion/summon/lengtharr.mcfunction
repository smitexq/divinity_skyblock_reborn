#Новая длина массива
execute store result score *var2 run data get storage dsb:temp CorrectPositions
execute store storage dsb:temp LenArray int 1 run scoreboard players remove *var2 variables 1

#Выбираем случайный индекс (вычитаем еще 1, так как индексация с 0)
#Если длина массива будет 1, то random 1..1 не сработает
$execute if score *var2 variables matches 1.. score store result score *var2 run random value 1..$(LenArray)
#Значение по умолчанию
data modify storage dsb:temp Index set value 0
#Тут же меняем значение, если длина массива больше 1
execute if score *var2 variables matches 1.. store storage dsb:temp Index int 1 run scoreboard players remove *var2 variables 1



function ...get_index with storage dsb:temp
	{
		execute summon marker run function ...on_position/main with storage dsb:temp CorrectPositions[$(Index)]
		data remove storage dsb:temp CorrectPositions[$(Index)]
	}

#Еще одно исключение
#Если мы вытащиши последний элемент из списка позиций (*var2 = 0), а исходя из того, что нам НУЖНО (*var1) еще позиции, то заканчиваем функцию
execute if score *var2 variables matches 0 if score *var1 variables > *var2 variables run return 0

scoreboard players remove *var1 variables 1
execute if score *var1 variables matches 1.. run function rings:activate_ring/ring_with_lion/summon/lengtharr with storage dsb:temp