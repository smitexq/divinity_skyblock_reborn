particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a

execute as @a[distance=..30] at @s run playsound minecraft:block.beacon.deactivate ambient @a ~ ~ ~ 2 0.8
execute as @a[distance=..30] at @s run playsound minecraft:entity.allay.death ambient @s ~ ~ ~ 0.35 0.8

#Метка на игроков
tag @a[distance=..30] add WinterBossKnockTarget
#Выбираем направление на каждого игрока
function entities:bosses/winter/abilities/knockback/loop_select

#Меняем оружие на лук
execute if entity @s[tag=bow] run return fail
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/change_weapon/select"}]
function entities:bosses/winter/abilities/change_weapon/select