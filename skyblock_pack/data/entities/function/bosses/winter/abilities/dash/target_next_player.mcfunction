#Если нет рядом игроков подходящих, то обнуляем способку
# execute unless entity @p[distance=..20, tag=!TargetFromWinterQueen] run tag @a remove TargetFromWinterQueen
# execute unless entity @p[distance=..20, tag=!TargetFromWinterQueen] run tag @e remove TargetPlayer
# execute unless entity @p[distance=..20, tag=!TargetFromWinterQueen] run say reset
# execute unless entity @p[distance=..20, tag=!TargetFromWinterQueen] run return run scoreboard players reset @e WinterQueenDashPlayers
execute unless entity @a[distance=..20, tag=!TargetFromWinterQueen] run return run function entities:bosses/winter/abilities/dash/reset

#Иначе деш на других игроков
scoreboard players reset @s RecursionDepth
execute facing entity @p[distance=..20, tag=!TargetFromWinterQueen] eyes rotated ~ 0 run function entities:bosses/winter/abilities/dash/next_player/go

# tag @p[distance=..20, tag=!TargetFromWinterQueen] add TargetFromWinterQueen