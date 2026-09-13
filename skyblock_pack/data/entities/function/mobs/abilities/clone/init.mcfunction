#эффекты
particle sneeze ~ ~1 ~ 2 0.5 2 0.1 50 force
particle sculk_charge{roll:0f} ~ ~1 ~ 3 0.3 3 0 20 force
playsound minecraft:entity.evoker.prepare_summon ambient @a ~ ~1 ~ 2 0.8

#Выдаем дебаффы
effect give @a[distance=..15] minecraft:darkness 3 0 true

#Призыв маркеров и случайное их распределение по территории
summon minecraft:marker ~ ~ ~ {Tags:["this","mobSummon"]}
summon minecraft:marker ~ ~ ~ {Tags:["this","mobSummon"]}
summon minecraft:marker ~ ~ ~ {Tags:["this","mobSummon"]}
summon minecraft:marker ~ ~ ~ {Tags:["this","mobSummon"]}
summon minecraft:marker ~ ~ ~ {Tags:["this","mobSummon"]}
summon minecraft:marker ~ ~ ~ {Tags:["this","mobSummon"]}
$summon minecraft:marker ~ ~ ~ {Tags:["this","mobSummon","myPos$(out)"]}

###Распределение с учетом высоты
function entities:mobs/abilities/api/spreadplayers/store_height
# spreadplayers ~ ~ 3 6 false @e[type=minecraft:marker,tag=this,distance=..1,limit=7]
data modify storage dsb:temp spreadplayers.range set value "3 6"
data modify storage dsb:temp spreadplayers.target set value "@e[type=minecraft:marker,tag=this,distance=..1,limit=7]"
function entities:mobs/abilities/api/spreadplayers/under_height with storage dsb:temp spreadplayers
###


#Делаем моба неуязвимым, невидимым и телепортируем его
data modify entity @s Silent set value 1b
data modify entity @s NoGravity set value 1b
data modify entity @s PersistenceRequired set value 1b
effect give @s minecraft:invisibility infinite 0 true
tp @s ~ ~10000 ~
team join ShadowClone @s
#Убираем его агр с игрока
data modify entity @s NoAI set value 1
data modify entity @s AngerTime set value 0
data remove entity @s AngryAt

#Задержка перед призывом
$execute as @e[type=minecraft:marker, tag=this, tag=!myPos$(out),limit=6] at @s run function dc:get_call {tick:50, command:"function entities:mobs/abilities/clone/prepend_ending {mob:$(mob), out:$(out)}", requirePos:false, requireEntity:true}

#Команда
$function dc:get_call {tick:62, command:"function entities:mobs/abilities/clone/tp {out:$(out)}", requirePos:false, requireEntity:true}
$function dc:get_call {tick:62, command:"function entities:mobs/abilities/clone/team {out:$(out)}", requirePos:false, requireEntity:true}

tag @e[type=minecraft:marker,tag=this,limit=6] remove this