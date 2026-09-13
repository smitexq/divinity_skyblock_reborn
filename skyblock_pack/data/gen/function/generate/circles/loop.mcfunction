#Если вышли за линию, то на следующую линию
$execute if score #step gen matches $(maxCount) run return 1
#Номер прогружаемого чанка
scoreboard players add #step gen 1

#Загружаем биом
execute summon marker run function gen:generate/set_coords

#Каждую итерацию меняем позицию на один чанк
$execute positioned $(offset) run function gen:generate/circles/loop with storage dsb_gen:values Circle