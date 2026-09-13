#Стрелы должны попадать в окружность, а значит выбранная позиция должна удовлетворять неравенству (x^2 + y^2 <= 25)
#Будем работать не с целыми x и y, а с дробными
#Случайные X и Y
execute store result score *var1 variables run random value -50..50
execute store result score *var2 variables run random value -50..50
#Квадраты этих чисел
scoreboard players operation *var5 variables = *var1 variables
scoreboard players operation *var5 variables *= *var5 variables
scoreboard players operation *var6 variables = *var2 variables
scoreboard players operation *var6 variables *= *var6 variables
#сумма этих квадратов
scoreboard players operation *var3 variables = *var5 variables
scoreboard players operation *var3 variables += *var6 variables

#Если сумма больше 2500, значит выбираем новую позицию
scoreboard players set *var4 variables 2500
execute unless score *var3 variables <= *var4 variables run return run function entities:mobs/abilities/circle_arrows/select_position


#так как координата умножена на 10, то мы записываем целую и дробную часть
scoreboard players set *var4 variables 10
scoreboard players operation *var3 variables = *var1 variables
execute store result storage dsb:temp CircleArrows.DivX int 1 run scoreboard players operation *var3 variables /= *var4 variables

scoreboard players operation *var3 variables = *var1 variables
execute store result storage dsb:temp CircleArrows.ModX int 1 run scoreboard players operation *var3 variables %= *var4 variables

#Тоже самое для Z
scoreboard players set *var4 variables 10
scoreboard players operation *var3 variables = *var2 variables
execute store result storage dsb:temp CircleArrows.DivZ int 1 run scoreboard players operation *var3 variables /= *var4 variables

scoreboard players operation *var3 variables = *var2 variables
execute store result storage dsb:temp CircleArrows.ModZ int 1 run scoreboard players operation *var3 variables %= *var4 variables


#Шанс 25%, что стрела полетит в игрока и 75%, что полетит в землю
execute store result score *var1 variables run random value 1..4
execute if score *var1 variables matches 1 run return run function entities:mobs/abilities/circle_arrows/marker_on_arrow with storage dsb:temp CircleArrows

function entities:mobs/abilities/circle_arrows/arrow with storage dsb:temp CircleArrows