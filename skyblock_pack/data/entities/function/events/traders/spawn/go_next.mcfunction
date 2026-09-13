#Удаляем прогрузку области
forceload remove ~ ~

#Сколько осталось вариантов для спавна
execute store result storage dsb:traders index int 1 store result score *var1 variables run data get storage dsb:traders Pos

#Если закончили варианты, то ошибка по спавну
execute if score *var1 variables matches 0 run return 0

#Выбираем следующие координаты
function entities:events/traders/spawn/get_index with storage dsb:traders