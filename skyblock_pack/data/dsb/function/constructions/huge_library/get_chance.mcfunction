#source_uuid - uuid библиотеки для нахождения кол-ва фолиантов

### % = AI * (-0.3 + wisdom/50) + 120 + 8 * attribute.luck
### % = (AI * (-30 + 2*wisdom) + 12000 + 800 * attribute.luck) / 100

# 4 * wisdom
$scoreboard players operation #chance variables = $(source_uuid) library.tome_of_wisdom
scoreboard players operation #chance variables *= #2 variables

# 4 * wisdom - 30
scoreboard players remove #chance variables 30

# * AI
scoreboard players operation #chance variables *= @s AI

# + 1200
scoreboard players add #chance variables 12000

# 800 * luck
execute store result score *var1 variables run attribute @s minecraft:luck get
scoreboard players operation *var1 variables *= #800 variables

# +
scoreboard players operation #chance variables += *var1 variables


# делим на 100 с учетом округления
scoreboard players operation *var1 variables = #chance variables
scoreboard players operation *var1 variables %= #100 variables

scoreboard players operation #chance variables /= #100 variables
execute if score *var1 variables matches 50.. run scoreboard players add #chance variables 1
#для отображения процентов при выводе в actionbar
execute if score #chance variables matches 101.. run scoreboard players set #chance variables 100

# tellraw @a {"score":{"objective":"variables","name":"#chance"},"color":"gold"}

#ролим вероятность
execute store result score *var2 variables run random value 1..100 dsb:get_chance_for_ai
#Если шанс подошел
execute if score *var2 variables <= #chance variables run return 1
return 0