tag @s add less_50percent_hp

#эффекты
particle minecraft:damage_indicator ~ ~1.2 ~ 0.15 0.05 0.15 0.3 7 normal
playsound minecraft:enchant.thorns.hit ambient @a ~ ~1 ~ 1

#Выдаем дебаффы
effect give @a[distance=..10] minecraft:darkness 2 0 true
effect give @a[distance=..10] minecraft:slowness 12 0
effect give @a[distance=..10] minecraft:weakness 3 0

#Призыв маркеров и случайное их распределение по территории
$summon minecraft:marker ~ ~ ~ {Tags:["spread","$(out)","mobSummon"]}
$summon minecraft:marker ~ ~ ~ {Tags:["spread","$(out)","mobSummon"]}
$summon minecraft:marker ~ ~ ~ {Tags:["spread","$(out)","mobSummon"]}
$summon minecraft:marker ~ ~ ~ {Tags:["spread","$(out)","mobSummon"]}
spreadplayers ~ ~ 4 4 false @e[type=minecraft:marker,tag=spread,distance=..1,limit=4]


#Замораживаем моба (делаем его неузвимым)
data modify entity @s Invulnerable set value 1
data modify entity @s NoAI set value 1
#Звук
playsound minecraft:entity.evoker.prepare_summon ambient @a ~ ~1 ~ 2

#Задержка перед призывом
$function dc:get_call {tick:50, command:"function entities:mobs/skeleton/rare/summon_skeleton/prepend_ending {out:$(out)}", requirePos:false, requireEntity:true}