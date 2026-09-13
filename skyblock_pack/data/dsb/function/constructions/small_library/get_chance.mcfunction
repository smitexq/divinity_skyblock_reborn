#source_uuid - uuid библиотеки для нахождения кол-ва фолиантов

### % = 1500/AI + 35 + 12 * attribute.luck + 4 * wisdom

#1500/AI
scoreboard players set #chance variables 15000
scoreboard players operation #chance variables /= @s AI

# + 35
scoreboard players add #chance variables 350

# 12 * luck
execute store result score *var1 variables run attribute @s minecraft:luck get
scoreboard players operation *var1 variables *= #120 variables

# + 12*luck
scoreboard players operation #chance variables += *var1 variables

# 4 * wisdom
$scoreboard players operation *var1 variables = $(source_uuid) library.tome_of_wisdom
scoreboard players operation *var1 variables *= #40 variables

# output chance
scoreboard players operation #chance variables += *var1 variables

# делим на 10 с учетом округления
scoreboard players operation *var1 variables = #chance variables
scoreboard players operation *var1 variables %= #10 variables

scoreboard players operation #chance variables /= #10 variables
execute if score *var1 variables matches 5.. run scoreboard players add #chance variables 1
#для отображения процентов при выводе в actionbar
execute if score #chance variables matches 101.. run scoreboard players set #chance variables 100

# tellraw @s {"score":{"objective":"variables","name":"#chance"},"color":"gold"}

#ролим вероятность
execute store result score *var2 variables run random value 1..100 dsb:get_chance_for_ai
#Если шанс подошел
execute if score *var2 variables <= #chance variables run return 1
return 0