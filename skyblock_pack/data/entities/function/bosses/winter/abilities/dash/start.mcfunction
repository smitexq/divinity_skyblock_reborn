#Выбирает цель, на игрока накидывается метка. Босс медленным рейкастом быстро перемещается к игрому, если по пути находится какой то игрок или таргетный, то ударяет и уже обычным рейкастом кидается на других игроков
execute unless entity @a[distance=..47] run return 0

tag @p[distance=..47] add WinterQueenTarget

execute as @a[distance=..47] at @s run playsound minecraft:entity.breeze.idle_air ambient @s
execute as @a[distance=..47] at @s run playsound minecraft:entity.bat.takeoff ambient @s ~ ~ ~ 0.3

function entities:bosses/winter/abilities/dash/raycast_set_values
tag @a remove WinterQueenTarget