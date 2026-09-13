#Тег на то, что нельзя юзать телепорт
tag @s add no.use.teleport
function dc:get_call {tick:80, command:"tag @s remove no.use.teleport", requirePos:false, requireEntity:true}

#кол-во летучих мышей
scoreboard players set *var5 variables 30

#Делаем моба неуязвимым, невидимым и телепортируем его
data modify entity @s NoGravity set value 1b
data modify entity @s PersistenceRequired set value 1b
effect give @s minecraft:invisibility infinite 0 true
tp @s ~ ~10000 ~
#Частицы
particle explosion ~ ~1 ~ 0 0 0 0 1 force
particle large_smoke ~ ~1 ~ 0.35 0.5 0.35 0.15 30 force

#Маркер для тп назад
function dc:gu/generate
execute summon marker run function entities:mobs/abilities/teleport/set_marker with storage gu:main

#Цикличный призыв летучих мышей
function entities:mobs/abilities/teleport/loop