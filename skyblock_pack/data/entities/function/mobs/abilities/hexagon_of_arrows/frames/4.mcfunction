particle minecraft:dust{color:[0.13f,0.96f,0.97f],scale:1.5f} ^0.75 ^-1.3 ^ 0 0 0 0 1 force
particle minecraft:dust{color:[0.13f,0.96f,0.97f],scale:1.5f} ^1.5 ^ ^ 0 0 0 0 1 force
particle minecraft:dust{color:[0.13f,0.96f,0.97f],scale:1.5f} ^0.75 ^1.3 ^ 0 0 0 0 1 force
particle minecraft:dust{color:[0.13f,0.96f,0.97f],scale:1.5f} ^-0.75 ^1.3 ^ 0 0 0 0 1 force
particle minecraft:dust{color:[0.13f,0.96f,0.97f],scale:1.5f} ^-1.5 ^ ^ 0 0 0 0 1 force
particle minecraft:dust{color:[0.13f,0.96f,0.97f],scale:1.5f} ^-0.75 ^ ^-1.3 0 0 0 0 1 force

execute positioned ^-1.5 ^ ^ run summon arrow ~ ~ ~ {NoGravity:1b,Tags:["this","hexagon","5"], damage:3.5}
scoreboard players operation @e[type=arrow,tag=this] use.hexagon_arrows = @s use.hexagon_arrows
tag @e[type=arrow,tag=this] remove this

playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 1 0.8

#Функция, которая телепортирует стрелы к сущности, которая использовала эти способности
function entities:mobs/abilities/hexagon_of_arrows/link/tp

function dc:get_call {tick:10, command:"function entities:mobs/abilities/hexagon_of_arrows/frames/5", requirePos:false, requireEntity:true}