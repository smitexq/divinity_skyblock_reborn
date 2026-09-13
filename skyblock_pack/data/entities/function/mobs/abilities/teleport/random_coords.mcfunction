#Задаем случайные координаты
execute store result score *var1 variables run random value -4..4
execute store result score *var2 variables run random value 1..10
execute store result score *var3 variables run random value -4..4

#Перед вычислением корня обнуляем входящую переменную
scoreboard players set in math 0

#Вычисляем длинну от моба до конца вектора по формуле l = sqrt(x^2 + y^2 + z^2)
#Для X
scoreboard players operation *var4 variables = *var1 variables
scoreboard players operation *var4 variables *= *var4 variables
scoreboard players operation in math += *var4 variables
#Для Y
scoreboard players operation *var4 variables = *var2 variables
scoreboard players operation *var4 variables *= *var4 variables
scoreboard players operation in math += *var4 variables
#Для Z
scoreboard players operation *var4 variables = *var3 variables
scoreboard players operation *var4 variables *= *var4 variables
scoreboard players operation in math += *var4 variables

#Математическое исчесление корня
function math:root

#константа
scoreboard players set *var6 variables 200

#out возвращает корень из числа, умноженный на 100. Значит, чтобы l>2 нужно l*100>200
#И если длина вектора меньше двух блоков, то запускаем рандом еще раз
execute unless score out math >= *var6 variables run function entities:mobs/abilities/teleport/random_coords