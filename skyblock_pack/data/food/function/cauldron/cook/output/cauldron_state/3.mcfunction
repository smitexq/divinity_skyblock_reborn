setblock ~ ~ ~ minecraft:water_cauldron[level=2]
$data modify storage dsb:cauldrons_tea $(out).CountResult set value 2

#Если НЕТ тега на увеличенное кол-во чая
$execute if data storage dsb:cauldrons_tea $(out){BuffTea:false} as @e[type=text_display,tag=$(out),tag=countTea] run return run data modify entity @s text set value '{"text":"§6☕☕§e☕"}'


$execute as @e[type=text_display,tag=$(out),tag=countTea] run return run data modify entity @s text set value '{"text":"§6☕☕§e☕☕"}'