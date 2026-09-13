#Тег на блокирование спавна мобов
$tag $(out) add BlockingBossSpawn

#Узнаем текущее кол-во предметов
$execute store result score *var1 variables run data get storage dsb:cts LanternOfPeace.$(out).itemCount
execute if score *var1 variables matches 150.. run return run title @s actionbar {"translate":"dsb.events.lantern_of_peace.overflowing","color":"gold"}

#Звук
$execute if score *var1 variables matches 0 as $(out) at @s run function dsb:constructions/lantern_of_peace/work/activate

#Кол-во предметов в руке игрока
execute store result score *var2 variables run execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data={id:"rotten_remains"}]

### Убираем из руки, при этом блокируем обновление колец, дабы не вызвать конфликт gu:main
tag @s add BlockInvChanged

execute unless predicate dsb:events/is_sneaking run item modify entity @s weapon.mainhand food:remove_item
execute if predicate dsb:events/is_sneaking run item replace entity @s weapon.mainhand with minecraft:air

tag @s remove BlockInvChanged
###

#Добавляем к количеству
execute unless predicate dsb:events/is_sneaking run scoreboard players add *var1 variables 1
execute if predicate dsb:events/is_sneaking run scoreboard players operation *var1 variables += *var2 variables


#Если больше 150, значит нужно вернуть остатки
execute if score *var1 variables matches 151.. run function dsb:constructions/lantern_of_peace/work/remains

#Записываем предметы обратно в хранилище котла
$execute store result storage dsb:cts LanternOfPeace.$(out).itemCount int 1 run scoreboard players get *var1 variables

#Виузал
$execute as $(out) at @s run function dsb:constructions/lantern_of_peace/work/vizual with storage gu:main