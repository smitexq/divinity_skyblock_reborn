execute store result score #current CalcDay run time query daytime

# Если перешли - день закончился
execute if score #current CalcDay < #previous CalcDay run scoreboard players add #day CalcDay 1

# Перерасчет времени
scoreboard players operation #previous CalcDay = #current CalcDay