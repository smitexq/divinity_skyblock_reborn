#Тег на то, что нельзя юзать телепорт
tag @s add no.use.teleport
function dc:get_call {tick:120, command:"tag @s remove no.use.teleport", requirePos:false, requireEntity:true}


function entities:mobs/abilities/regeneration/start
particle minecraft:poof ~ ~1 ~ 0.8 0.8 0.8 0 70


function dc:gu/generate
execute positioned ~ ~1000 ~ summon ocelot run function entities:mobs/abilities/run/on_ocelot with storage gu:main

tag @s add startRun

function dc:get_call {tick:119, command:"tag @s remove startRun", requirePos:false, requireEntity:true}