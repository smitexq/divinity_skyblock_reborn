#Кол-во чая
$data modify storage dsb:cauldrons_tea $(out).CountResult set value 4

#Если нет предметов, то текст сразу над котлом
$execute unless data storage dsb:cauldrons_tea $(out).items[] run return run summon minecraft:text_display ~ ~1.2 ~ {text:'{"text":"§6☕☕☕☕"}',billboard:center,see_through:false,view_range:0.17f,Tags:["$(out)","countTea"]}

$summon minecraft:text_display ~ ~1.85 ~ {text:'{"text":"§6☕☕☕☕"}',billboard:center,see_through:false,view_range:0.17f,Tags:["$(out)","countTea"]}