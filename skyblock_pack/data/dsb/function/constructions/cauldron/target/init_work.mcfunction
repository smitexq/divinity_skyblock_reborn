#Если нет воды
$execute at $(out) unless block ~ ~ ~ minecraft:water_cauldron[level=3] run return run title @s actionbar {"text":"Для приготовления нужен полный воды котел","color":"red"}

#Если нет 30 булыги
$execute store result score *var1 variables run data get storage dsb:cts Cauldron.$(out).itemCount
execute unless score *var1 variables matches 30.. run return run title @s actionbar {"translate":"dsb.events.cauldron.need_cobbleston","color":"red"}

#Если нет огня
$execute at $(out) unless block ~ ~-1 ~ minecraft:fire run return run title @s actionbar {"text":"Для приготовления нужен огонь под котлом!","color":"red"}

#Тег
$tag $(out) add cook

###-1 прочность у зажигалки
# -1/прочность предмета
function dsb:events/remove_durability {damage: -0.016, max_damage: 64, item:"flint_and_steel"}
###

#Звуки частицы
playsound minecraft:entity.blaze.death ambient @a ~ ~ ~ 0.5 2
$execute at $(out) run particle minecraft:flame ~ ~0.5 ~ 0.3 0.3 0.3 0.2 10

$execute as $(out) at @s run function dsb:constructions/cauldron/work/loop