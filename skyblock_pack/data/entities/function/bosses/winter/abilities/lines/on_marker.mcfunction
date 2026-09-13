#Взгляд на босса
execute facing entity @e[type=stray, tag=WinterBoss] feet run tp @s ~ ~ ~ ~ 0
# execute facing entity @p feet run tp @s ~ ~ ~ ~ 0

##10 точек вправо и влево
scoreboard players set @s WinterQueenLines 10
$execute rotated as @s run function entities:bosses/winter/abilities/lines/new_pos {offset:"$(offset1)"}

scoreboard players set @s WinterQueenLines 10
$execute rotated as @s run function entities:bosses/winter/abilities/lines/new_pos {offset:"$(offset2)"}
##

#центральный луч
execute rotated as @s summon marker run function entities:bosses/winter/abilities/lines/raycast/prepend_loop
kill @s

