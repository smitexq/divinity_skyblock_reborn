tag @s add DecideTask
#Включаем тригер для игрока
scoreboard players set @s TaskAnswer -2147483648
scoreboard players enable @s TaskAnswer

###Определяем тип задания
#Сколько сколько "вопросов" не решенных у игрока
$execute store result score *var1 variables run data get storage dsb:library_tasks All.$(out)

#Если не осталось вопросов, тогда создаем пример
execute if score *var1 variables matches 0 run return run function dsb:events/library_tasks/example/start

#Иначе 50/50 что выпадет
execute store result score *var1 variables run random value 0..1 dsb:get/library/task
execute if score *var1 variables matches 0 run return run function dsb:events/library_tasks/example/start

$data modify storage dsb:temp temp set from storage dsb:library_tasks All.$(out)
execute if score *var1 variables matches 1 run return run function dsb:events/library_tasks/question/start