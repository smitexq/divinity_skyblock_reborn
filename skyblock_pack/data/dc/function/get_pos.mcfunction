#Записываем координаты именно маркера. Так как, для примера, при запросе отложенного запуска сущность могла находится в одном месте, а перед run мы поменяли позицию
data modify storage dsb:dc init.Pos set from entity @s Pos

#Узнаем направление взгляда
execute rotated ~ ~ run tp @s ~ ~ ~ ~ ~
data modify storage dsb:dc init.RotationX set from entity @s Rotation[0]
data modify storage dsb:dc init.RotationY set from entity @s Rotation[1]
#
kill @s