particle minecraft:explosion_emitter

#Записываем координаты моба
data modify storage dsb:temp PowerfulJump.Mob set from entity @s Pos
#Относительно каждой мирной сущности рядом КРОМЕ ИГРОКА, выполняем отбрасывание
execute as @e[type=#entities:peaceful_mobs, type=!minecraft:player, distance=..6] at @s run function entities:mobs/abilities/knockback/on_entity


tag @s add LabelInitKnockback
#Для игроков
execute as @a[distance=..6] at @s run function entities:mobs/abilities/knockback/on_player
tag @s remove LabelInitKnockback

#Очищаем хранилище
data remove storage dsb:temp PowerfulJump