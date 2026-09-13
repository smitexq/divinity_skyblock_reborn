#Время в секундах через которое выбирается способность
execute if entity @s[tag=!2phase] store result score *var1 variables run random value 10..13 dsb:winter_queen_select_time_ability
execute if entity @s[tag=2phase] store result score *var1 variables run random value 8..10 dsb:winter_queen_select_time_ability

scoreboard players set *var2 variables 20
execute store result storage dsb:temp WinterQueen.timeToSelect int 1 run scoreboard players operation *var1 variables *= *var2 variables

function entities:bosses/winter/conditions/phase/schedule with storage dsb:temp WinterQueen

execute if entity @s[tag=2phase] run return run function entities:bosses/winter/conditions/phase/2phase_abilities
function entities:bosses/winter/conditions/phase/1phase_abilities