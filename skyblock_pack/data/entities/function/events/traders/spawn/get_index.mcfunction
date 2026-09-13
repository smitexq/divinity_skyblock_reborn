$execute store success score *var2 variables store result score *var1 variables run random value 1..$(index)

#Если оставалось одно значение в списке, то было value 1..1 - выдает ошибку, и ничего не записывает в var1, поэтому ставим вручную
execute if score *var2 variables matches 0 run scoreboard players set *var1 variables 1
#Индекс
execute store result storage dsb:traders index int 1 run scoreboard players remove *var1 variables 1

#Получение координат
function entities:events/traders/spawn/get_coords with storage dsb:traders