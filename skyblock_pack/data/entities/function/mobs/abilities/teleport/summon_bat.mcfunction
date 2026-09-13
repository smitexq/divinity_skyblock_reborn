data modify entity @s Invulnerable set value 1b

#Отнимаем 1 из переменной, которая отвечает за количество мышей
scoreboard players remove *var5 variables 1


#0.3 + 0.12; 0.1+0.12;
#Задаем Motion исходя из рандомного вектора
execute store result entity @s Motion[0] double 0.4 run scoreboard players get *var1 variables
execute store result entity @s Motion[1] double 0.12 run scoreboard players get *var2 variables
execute store result entity @s Motion[2] double 0.4 run scoreboard players get *var3 variables

#через 2,5 секунды мышь телепортируется в пропость и появляются частицы
function dc:get_call {tick:50, command:"function entities:mobs/abilities/teleport/bat_teleport", requirePos:false, requireEntity:true}
#Если текущая мышь по номеру меньше тридцатой, то призываем еще мышей
execute if score *var5 variables matches 1.. run function entities:mobs/abilities/teleport/loop
