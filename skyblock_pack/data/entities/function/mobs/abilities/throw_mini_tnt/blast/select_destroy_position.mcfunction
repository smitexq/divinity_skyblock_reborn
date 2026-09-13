#На случайно выбранных относительных координатах разрушаем блок
$execute align xyz positioned ~0.5 ~0.5 ~0.5 run function entities:mobs/abilities/blast/destroy with storage dsb:temp BreakBlocks.coords[$(index)]

#Удаляем этот элемент (координаты) из массива
$data remove storage dsb:temp BreakBlocks.coords[$(index)]
#Уменьшаем последний индекс на 1
execute store result storage dsb:temp BreakBlocks.lastIndex int 1 run scoreboard players remove *var1 variables 1
#Выбираем новый случайный индекс исходя из того, какой номер у последнего
function entities:mobs/abilities/blast/random_index with storage dsb:temp BreakBlocks

#Если еще должны сломать блоки
scoreboard players remove *var2 variables 1
execute if score *var2 variables matches 1.. run function entities:mobs/abilities/throw_mini_tnt/blast/select_destroy_position with storage dsb:temp BreakBlocks