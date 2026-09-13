#Звук поджигания тнт
playsound minecraft:entity.tnt.primed ambient @a ~ ~ ~ 2
#Записываем позицию ближайшего игрока и запускаем в его сторону вектор
data modify storage dsb:temp ThrowTnt.Player set from entity @p Pos
execute facing entity @p[distance=..45] feet run function entities:mobs/abilities/throw_mini_tnt/select_player

#Очищаем хранилище
data remove storage dsb:temp ThrowTnt