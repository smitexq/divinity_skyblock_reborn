#Если нет топлива (душ)
$execute store result score *var1 variables run data get storage dsb:cts BlazeSpawner.$(out).itemCount
execute unless score *var1 variables matches 1.. run return run title @s actionbar {"translate":"dsb.events.blaze_spawner.need_souls","color":"gold"}

#Тег
$tag $(out) add work

###-1 прочность у зажигалки
# -1/прочность предмета
function dsb:events/remove_durability {damage: -0.016, max_damage: 64, item:"flint_and_steel"}
###

#Блокировка (решетки)
$execute as $(out) at @s run function dsb:constructions/blaze_spawner/target/blocking_spawner with storage gu:main

#Звуки частицы
setblock ~ ~ ~ light[level=8]
playsound minecraft:entity.blaze.shoot ambient @a
$execute at $(out) run particle minecraft:flame ~ ~0.5 ~ 0.3 0.3 0.3 0.2 10

$execute as $(out) at @s run function dsb:constructions/blaze_spawner/work/loop