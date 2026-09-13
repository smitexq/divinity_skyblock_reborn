#Дополнительные стрелы в этой итерации
scoreboard players remove *var1 variables 1
execute if score *var1 variables matches 1.. run function entities:mobs/abilities/circle_arrows/set_count_arrows

#Позиция для стрелы
function entities:mobs/abilities/circle_arrows/select_position