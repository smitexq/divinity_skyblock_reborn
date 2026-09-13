#Разрушаем центральный блок
setblock ~ ~ ~ air destroy

#Задаем количество разрушаемых боковых блоков
execute store result score *var2 variables run random value 10..16

#Создаем массив из относительных координат (по одному блоку в каждую сторону). Задаем последний индекс 5
data modify storage dsb:temp BreakBlocks.coords set value [{x:1,y:"",z:""},{x:"",y:1,z:""},{x:"",y:"",z:1},{x:-1,y:"",z:""},{x:"",y:-1,z:""},{x:"",y:"",z:-1},{x:1,y:1,z:""},{x:-1,y:1,z:""},{x:"",y:1,z:1},{x:"",y:1,z:-1},{x:1,y:-1,z:""},{x:-1,y:-1,z:""},{x:"",y:-1,z:1},{x:"",y:-1,z:-1},{x:1,y:"",z:1},{x:-1,y:"",z:1},{x:1,y:"",z:-1},{x:-1,y:"",z:-1}]
execute store result storage dsb:temp BreakBlocks.lastIndex int 1 run scoreboard players set *var1 variables 17

#Выбираем случайный индекс
execute store result storage dsb:temp BreakBlocks.index int 1 run random value 0..17
#Выбираем из массива элемент с этим индексом
function entities:mobs/abilities/throw_mini_tnt/blast/select_destroy_position with storage dsb:temp BreakBlocks

#Очищаем массив
data remove storage dsb:temp BreakBlocks