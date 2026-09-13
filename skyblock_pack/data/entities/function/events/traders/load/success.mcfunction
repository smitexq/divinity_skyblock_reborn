#Записываем номер дня
execute store result score #previousDay variables run time query day
#С шансом 50% прибавим к нему один день, то есть разница между спавном будет 5 дней, вместо 4-х
execute store result score *var1 variables run random value 0..9 dsb:traders/spawn/get_chance_for_additional_day
execute if score *var1 variables matches 0..4 run scoreboard players add #previousDay variables 1
#И еще шанс 30% на +1 день
execute store result score *var1 variables run random value 0..9 dsb:traders/spawn/get_chance_for_additional_day
execute if score *var1 variables matches 0..2 run scoreboard players add #previousDay variables 1

function entities:events/traders/spawn/start