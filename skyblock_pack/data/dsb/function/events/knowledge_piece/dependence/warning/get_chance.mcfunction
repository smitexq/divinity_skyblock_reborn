###Вычисляем сколько времени нужно подождать (узнаем gametime последней задачи на вычитание из скорборда)
data modify storage dsb:temp temp set value []
$data modify storage dsb:temp temp append from storage dsb:dc Tasks[{command:"scoreboard players remove @s know.piece_to_dependence 1", UUID:"$(out)"}]

execute store result score *var1 variables run data get storage dsb:temp temp[-1].time
execute store result score *var2 variables run time query gametime

scoreboard players operation *var1 variables -= *var2 variables
scoreboard players operation *var1 variables /= #20 variables
###

playsound minecraft:entity.witch.hurt ambient @s ~ ~ ~ 0.4
title @s actionbar {"translate":"dsb.events.warning_dependence", "color":"red", "with":[{"score":{"objective":"variables", "name":"*var1"}}]}