$data modify storage dsb:cauldrons_tea $(out).CountResult set value 3

$execute as @e[type=text_display,tag=$(out),tag=countTea] run data modify entity @s text set value '{"text":"§6☕☕☕§e☕"}'