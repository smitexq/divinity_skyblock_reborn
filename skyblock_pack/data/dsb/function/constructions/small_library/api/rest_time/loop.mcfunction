#*var1 - кол-во раз/книг
#*var2 - исходное время

#Если книг нет
execute if score *var1 variables matches ..0 run return run scoreboard players operation *var2 variables /= #100 variables

scoreboard players remove *var1 variables 1

#Логика вычитания процентов (процент от числа x это x*2/10)
scoreboard players operation #percent variables = *var2 variables
scoreboard players operation #percent variables *= #2 variables
scoreboard players operation #percent variables /= #10 variables

scoreboard players operation *var2 variables -= #percent variables


#цикл вычитания
function dsb:constructions/small_library/api/rest_time/loop