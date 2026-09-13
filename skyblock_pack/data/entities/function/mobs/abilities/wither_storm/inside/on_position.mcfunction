#Частицы торнадо
function entities:mobs/abilities/wither_storm/particles/main
#Частицы душ
particle minecraft:sculk_soul ~ ~1 ~ 0.8 0.8 0.8 0.05 1 force @a
particle minecraft:soul ~ ~1 ~ 0.8 0.8 0.8 0.05 1 force @a

#summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:[storm],Small:1b}

#Если ураган сталкивается с твердой поверхностью, то останавливается
#добавить возможность ТОГО, что ураган обходит препятствия, но уменьшается его дальность
execute unless block ~ ~ ~ #entities:wither_storm/throw run return run function slowcast:stop

#ПРОВЕРКА НА БЛОК
execute if block ~ ~ ~ #entities:wither_storm/wither_storm_replaceable run function entities:mobs/abilities/wither_storm/inside/in_block
execute positioned ^1 ^ ^ if block ~ ~ ~ #entities:wither_storm/wither_storm_replaceable run function entities:mobs/abilities/wither_storm/inside/in_block
execute positioned ^-1 ^ ^ if block ~ ~ ~ #entities:wither_storm/wither_storm_replaceable run function entities:mobs/abilities/wither_storm/inside/in_block
execute positioned ^ ^1 ^ if block ~ ~ ~ #entities:wither_storm/wither_storm_replaceable run function entities:mobs/abilities/wither_storm/inside/in_block

#Эффекты темнота и иссушения
effect give @e[type=#entities:peaceful_mobs,tag=!slowcast.this,tag=!slowcast.caster,distance=..1.9] minecraft:wither 6 1
effect give @a[tag=!slowcast.this,tag=!slowcast.caster,distance=..1.9] minecraft:darkness 4
#Урон сущностям
execute as @e[type=#entities:peaceful_mobs,tag=!slowcast.this,tag=!slowcast.caster,distance=..1.9] run damage @s 14 minecraft:magic
