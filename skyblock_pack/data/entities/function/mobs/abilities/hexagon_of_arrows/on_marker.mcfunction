#Задаем id для текущего маркера (этот id используется и для стрел)
scoreboard players operation @s use.hexagon_arrows = *global use.hexagon_arrows

#Частицы и звук
particle minecraft:sculk_soul ~ ~ ~ 0.7 0.7 0.7 0.2 6 force
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 2 1.3
#Призыв стрелы через 0,5 секунды
function dc:get_call {tick:10, command:"function entities:mobs/abilities/hexagon_of_arrows/frames/0", requirePos:false, requireEntity:true}