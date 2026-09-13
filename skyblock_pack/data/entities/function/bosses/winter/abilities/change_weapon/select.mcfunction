execute store result score *var1 variables run random value 12..20 dsb:winter_queen_change_weapon

scoreboard players set *var2 variables 20
execute store result storage dsb:temp WinterQueen.timeToSelect int 1 run scoreboard players operation *var1 variables *= *var2 variables

function entities:bosses/winter/abilities/change_weapon/schedule with storage dsb:temp WinterQueen



###Шанс на смену оружия (МОЖЕТ ДОБАВИТЬ)
execute if entity @s[tag=nothing] run return run function entities:bosses/winter/abilities/change_weapon/to_bow
execute if entity @s[tag=bow] run return run function entities:bosses/winter/abilities/change_weapon/nothing