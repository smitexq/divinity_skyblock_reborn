advancement revoke @s only entities:bossbar

#Если босса больше нет, то убираем боссбар
function dc:gu/generate
execute unless entity @e[type=#entities:entities_bosses,tag=entity_boss,sort=nearest,nbt={HurtTime:10s}] run return run function dsb:events/bossbar/vizual/remove/kill_boss with storage gu:main

#Узнаем все uuid-шки
data modify storage dsb:bossbar Init set value {}
data modify storage dsb:bossbar Init.id set from storage gu:main out
###Узнаем uuid игрока и мини-босса. Даем игроку тег мини босса, для того, что если другой игрок будет бить этого босса, то боссбар обновится и для этого игрока, который сейчас не наносит урон ему 
execute as @e[type=#entities:entities_bosses,tag=entity_boss,sort=nearest,nbt={HurtTime:10s}] at @s run function dc:gu/generate
data modify storage dsb:bossbar Init.bossUUID set from storage gu:main out
#

#Тег игроку
function dsb:events/bossbar/vizual/add_tag with storage dsb:bossbar Init

#Очистить задачу на удаление видимости боссбара
function dc:gu/generate
function dsb:events/bossbar/vizual/remove_schedule with storage dsb:bossbar Init

#Значения боссбара
execute as @e[type=#entities:entities_bosses,tag=entity_boss,sort=nearest,nbt={HurtTime:10s}] at @s run function dsb:events/bossbar/vizual/on_mob with storage dsb:bossbar Init


function dsb:events/bossbar/vizual/set with storage dsb:bossbar Init