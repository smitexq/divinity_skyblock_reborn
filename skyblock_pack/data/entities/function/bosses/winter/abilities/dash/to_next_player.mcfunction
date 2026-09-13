#Если не попал в игрока, то не делаем змейку
execute unless entity @s[tag=TargetPlayer] run return 0

#Кол-во игроков, задетых этой способностью
scoreboard players add @s WinterQueenDashPlayers 1
#Если больше возможного кол-ва, то заканчиваем
execute if score @s WinterQueenDashPlayers matches 5 run return run function entities:bosses/winter/abilities/dash/reset

#Переход к следующему игроку
function entities:bosses/winter/abilities/dash/target_next_player