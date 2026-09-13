#Добавляем тег, чтобы функция не сработала еще раз
tag @s add less_15percent_hp

#эффекты
particle minecraft:damage_indicator ~ ~1.2 ~ 0.15 0.05 0.15 0.3 7 normal
playsound minecraft:enchant.thorns.hit ambient @a ~ ~1 ~ 1

#Выдаем дебаффы
effect give @a[distance=..10] minecraft:darkness 2 0 true
effect give @a[distance=..10] minecraft:slowness 15 0
effect give @a[distance=..10] minecraft:weakness 5 0

#Призыв маркеров и случайное их распределение по территории
$summon minecraft:marker ~ ~ ~ {Tags:["spread","$(out)","mobSummon"]}
$summon minecraft:marker ~ ~ ~ {Tags:["spread","$(out)","mobSummon"]}
$summon minecraft:marker ~ ~ ~ {Tags:["spread","$(out)","mobSummon"]}
$summon minecraft:marker ~ ~ ~ {Tags:["spread","$(out)","mobSummon"]}
spreadplayers ~ ~ 4 4 false @e[type=minecraft:marker,tag=spread,distance=..1,limit=4]

#Количество маленьких
scoreboard players set #babyCount variables 0
#помечаем тегами для призыва
$execute as @e[type=minecraft:marker,tag=spread, tag=$(out), sort=random] at @s run function entities:mobs/zombie/uncommon/health/summon


#Замораживаем моба (делаем его неузвимым)
data modify entity @s Invulnerable set value 1
data modify entity @s NoAI set value 1
#Звук
playsound minecraft:entity.evoker.prepare_summon ambient @a ~ ~1 ~ 2

#Задержка перед призывом
$function dc:get_call {tick:50, command:"function entities:mobs/zombie/uncommon/summon_zombies/prepend_ending {out:$(out)}", requirePos:false, requireEntity:true}