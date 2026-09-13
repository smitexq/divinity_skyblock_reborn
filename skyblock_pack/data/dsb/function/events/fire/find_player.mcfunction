#Ищем игрока на шифте и с двумя палками
execute as @a[tag=!initFire] if predicate dsb:events/for_fire at @s run function dsb:events/fire/init

schedule function dsb:events/fire/find_player 2s