#Проверить подходит ли область для спавна крепости, если да, то добавить корды в список. При это ничего не генерируем (return)
execute if score #sizeOfIsland gen matches 100.. run return run function gen:generate/nether/add_fortress_cords

#сколько сгенерировано
scoreboard players add *gen_nether gen 1

#Проверяем размер
execute if score #sizeOfIsland gen matches 0 run return run function gen:generate/nether/on_size/small
execute if score #sizeOfIsland gen matches 1 run return run function gen:generate/nether/on_size/medium
execute if score #sizeOfIsland gen matches 2 run return run function gen:generate/nether/on_size/large