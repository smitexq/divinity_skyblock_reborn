#Тег на то, что нельзя юзать телепорт
tag @s add no.use.teleport
function dc:get_call {tick:80, command:"tag @s remove no.use.teleport", requirePos:false, requireEntity:true}

# /execute as ENT at @s run function entities:mobs/abilities/hexagon_of_arrows/start
#Тег, нужен для определения сущности
tag @s add UseHexagonArrows
function dc:get_call {tick:70, command:"tag @s remove UseHexagonArrows", requirePos:false, requireEntity:true}

#Задаем id использования этой способности
scoreboard players add *global use.hexagon_arrows 1
scoreboard players operation @s use.hexagon_arrows = *global use.hexagon_arrows
#Призываем маркер выше и относительно него будем выполнять призыв стрел 
execute positioned ~ ~4 ~ summon marker run function entities:mobs/abilities/hexagon_of_arrows/on_marker