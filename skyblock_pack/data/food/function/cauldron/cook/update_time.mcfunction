###Используется 10 делений по 1,5 секунды
scoreboard players add @s CookingTea 1
$execute if score @s CookingTea matches ..9 as @e[type=text_display,tag=$(out),tag=time] run function dc:gu/generate

#Частички
execute positioned ~ ~1 ~ run function food:cauldron/cook/tea_particle {count: 3}
#Текст
execute if score @s CookingTea matches ..9 run function food:cauldron/cook/set_text_time with storage gu:main
execute if score @s CookingTea matches ..9 run return run function dc:get_call {tick:30, command:"function food:cauldron/cook/prepend_update", requirePos:false, requireEntity:true}

###Завершение готовки
tag @s add confirm
scoreboard players reset @s CookingTea
playsound minecraft:event.mob_effect.bad_omen ambient @a ~ ~ ~ 1 1.2


###Разные варианты записи остатков
execute if entity @s[tag=OxeyeDaisyTea] run function food:cauldron/cook/output/oxeye_daisy with storage gu:main
execute if entity @s[tag=GreenTea] run function food:cauldron/cook/output/green with storage gu:main
execute if entity @s[tag=BirchTea] run function food:cauldron/cook/output/birch with storage gu:main
execute if entity @s[tag=BerriesTea] run function food:cauldron/cook/output/berries with storage gu:main
execute if entity @s[tag=BlackTea] run function food:cauldron/cook/output/black with storage gu:main
execute if entity @s[tag=SakuraTea] run function food:cauldron/cook/output/sakura with storage gu:main
#Удаляем предметы с 0 кол-вом
$data remove storage dsb:cauldrons_tea $(out).items[{count:0}]
#Убираем пробелы между предметами
function food:cauldron/hurt/remains with storage gu:main
###


#Обновляем визуал
execute at @s run function food:cauldron/vizual/main with storage gu:main
#Постоянные частицы цветного пара
execute at @s positioned ~ ~1 ~ run function dc:get_call {tick:15, command:"function food:cauldron/cook/stable_particle", requirePos:true, requireEntity:true}

###Кол-во чая + ТЕКСТ
#Если есть эффект тег на увеличение кол-ва чая
$execute if data storage dsb:cauldrons_tea $(out){BuffTea:true} run return run function food:cauldron/cook/summon_text with storage gu:main

#Кол-во чая
$data modify storage dsb:cauldrons_tea $(out).CountResult set value 3

#Если нет предметов, то текст сразу над котлом
$execute unless data storage dsb:cauldrons_tea $(out).items[] run return run summon minecraft:text_display ~ ~1.2 ~ {text:'{"text":"§6☕☕☕"}',billboard:center,see_through:false,view_range:0.17f,Tags:["$(out)","countTea"]}

$summon minecraft:text_display ~ ~1.85 ~ {text:'{"text":"§6☕☕☕"}',billboard:center,see_through:false,view_range:0.17f,Tags:["$(out)","countTea"]}