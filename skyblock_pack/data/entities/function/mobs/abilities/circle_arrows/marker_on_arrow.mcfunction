$summon marker ~$(DivX).$(ModX) ~1 ~$(DivZ).$(ModZ) {Tags:["this"]}

#Записываем координаты этого маркера для стрелы и координаты игрока
data modify storage dsb:temp CircleArrows.Motion.Entity set from entity @e[type=marker,tag=this,limit=1] Pos
data modify storage dsb:temp CircleArrows.Motion.Vector set from entity @p Pos

#Создаем вектор для Motion по X
execute store result score *var1 variables run data get storage dsb:temp CircleArrows.Motion.Entity[0] 1000
execute store result score *var2 variables run data get storage dsb:temp CircleArrows.Motion.Vector[0] 1000
execute store result storage dsb:temp CircleArrows.Motion.Vector[0] double 0.0002 run scoreboard players operation *var2 variables -= *var1 variables
#по Y
execute store result score *var1 variables run data get storage dsb:temp CircleArrows.Motion.Entity[1] 1000
execute store result score *var2 variables run data get storage dsb:temp CircleArrows.Motion.Vector[1] 1000
execute store result storage dsb:temp CircleArrows.Motion.Vector[1] double 0.0002 run scoreboard players operation *var2 variables -= *var1 variables
#по Z
execute store result score *var1 variables run data get storage dsb:temp CircleArrows.Motion.Entity[2] 1000
execute store result score *var2 variables run data get storage dsb:temp CircleArrows.Motion.Vector[2] 1000
execute store result storage dsb:temp CircleArrows.Motion.Vector[2] double 0.0002 run scoreboard players operation *var2 variables -= *var1 variables

#Относительно этого маркера призываем стрелу, с вектором, направленным на игрока
execute as @e[type=marker,tag=this,limit=1] at @s run function entities:mobs/abilities/circle_arrows/arrow_shot_player with storage dsb:temp CircleArrows.Motion