execute store result storage dsb_gen:values CurrentIsland.x int 1 run data get storage dsb_gen:gen Islands[-1][0]
execute store result storage dsb_gen:values CurrentIsland.y int 1 run data get storage dsb_gen:gen Islands[-1][1]
execute store result storage dsb_gen:values CurrentIsland.z int 1 run data get storage dsb_gen:gen Islands[-1][2]
execute store result score #sizeOfIsland gen run data get storage dsb_gen:gen Islands[-1][3]

#на позиции создаем остров
execute in minecraft:the_nether run function gen:generate/nether/on_position with storage dsb_gen:values CurrentIsland
data remove storage dsb_gen:gen Islands[-1]

scoreboard players remove #countNetherIslands gen 1

#сгенерированор островов за тик
scoreboard players add #num gen 1
#до 5 островов без задержки
execute if score #countNetherIslands gen matches 1.. if score #num gen matches ..3 run return run function gen:generate/nether/loop
#иначе есть задержка
scoreboard players set #num gen 0
execute if score #countNetherIslands gen matches 1.. run return run schedule function gen:generate/nether/loop 2t

#если уже был выбран остров для крепости, то создаем все данжи и заканчиваем генерацию
execute if score #isEndGeneration gen matches 1 run return run function gen:end

#Если закончились острова, то создаем крепость
function gen:generate/nether/get_fortress