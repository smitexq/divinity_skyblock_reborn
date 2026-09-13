data modify storage dsb:temp CorrectPositions append value {X:0, Y:0, Z:0}

execute store result storage dsb:temp CorrectPositions[-1].X int 1 run data get entity @s Pos[0]
execute store result storage dsb:temp CorrectPositions[-1].Y int 1 run data get entity @s Pos[1]
execute store result storage dsb:temp CorrectPositions[-1].Z int 1 run data get entity @s Pos[2]

kill @s