#Выдаем слепоту игрокам
effect give @a[distance=..10] darkness 6
playsound minecraft:block.respawn_anchor.deplete ambient @a ~ ~ ~ 0.8 1.2

#Очищаем хранилище с данными
data remove storage dsb:temp WebWeaver.NumberOfPosX
#Выбираем направление для первого вектора
execute summon marker run function entities:mobs/abilities/web_weaver/select_direction