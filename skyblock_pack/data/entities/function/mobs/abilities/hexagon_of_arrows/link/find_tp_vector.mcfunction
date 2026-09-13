#Создаем точку начала вектора
execute facing entity @p feet positioned ^ ^ ^0.5 summon marker run function entities:mobs/abilities/hexagon_of_arrows/link/set_point

###Далее уменьшаем этот вектор###
#Записываем координаты центрального маркера. Это нужно для того, чтобы у всех стрел был такой же вектор, тогда они направятся на игрока 6-и угольником
data modify storage dsb:temp FindTpVector.Marker set from entity @s Pos

#Создаем вектор для Motion по X
execute store result score *var1 variables run data get storage dsb:temp FindTpVector.Marker[0] 10
execute store result score *var2 variables run data get storage dsb:temp FindTpVector.Vector[0] 10
execute store result storage dsb:temp FindTpVector.Vector[0] double 0.0001 run scoreboard players operation *var2 variables -= *var1 variables
#по Y
execute store result score *var1 variables run data get storage dsb:temp FindTpVector.Marker[1] 10
execute store result score *var2 variables run data get storage dsb:temp FindTpVector.Vector[1] 10
execute store result storage dsb:temp FindTpVector.Vector[1] double 0.0001 run scoreboard players operation *var2 variables -= *var1 variables
#по Z
execute store result score *var1 variables run data get storage dsb:temp FindTpVector.Marker[2] 10
execute store result score *var2 variables run data get storage dsb:temp FindTpVector.Vector[2] 10
execute store result storage dsb:temp FindTpVector.Vector[2] double 0.0001 run scoreboard players operation *var2 variables -= *var1 variables
