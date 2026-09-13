#Узнаем все uuid-шки
function dc:gu/generate
data modify storage dsb:bossbar Init set value {}
data modify storage dsb:bossbar Init.id set from storage gu:main out
###Узнаем uuid игрока и мини-босса.
execute as @e[type=#entities:entities_bosses,tag=entity_boss,sort=nearest,nbt={HurtTime:10s}] at @s run function dc:gu/generate
data modify storage dsb:bossbar Init.bossUUID set from storage gu:main out
#

#Значения боссбара
execute as @e[type=#entities:entities_bosses,tag=entity_boss,sort=nearest,nbt={HurtTime:10s}] at @s run function dsb:events/bossbar/vizual/on_mob with storage dsb:bossbar Init


function dsb:events/bossbar/vizual/set_update with storage dsb:bossbar Init