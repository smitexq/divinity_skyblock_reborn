#кол-во предметов по умолчанию все 8
scoreboard players set #4_items Altar 0

###Проверка на существующий рецепт
execute positioned 17112022 0 0 unless function dsb:constructions/altar/work/recipes/get run return 0
###

#Пометка работы
scoreboard players set #work Altar 1

###-1 прочность у зажигалки
# -1/прочность предмета
function dsb:events/remove_durability {damage: -0.016, max_damage: 64, item:"flint_and_steel"}
###

#Блокировка handitems у алтаря
execute as @e[type=armor_stand, tag=AltarShelf] run data modify entity @s DisabledSlots set value 4144959
#Распределение очередности впитывания предметов (случайно)
function dsb:constructions/altar/work/random_queue

#Звуки частицы
playsound minecraft:entity.blaze.shoot ambient @a
$execute at $(out) run particle reverse_portal ~ ~-1 ~ 2 1.5 2 0.5 30 force

$execute as $(out) at @s run function dsb:constructions/altar/work/loop