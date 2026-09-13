#Моб становится одним из клонов (прячется)
data modify entity @s NoAI set value 0
data modify entity @s NoGravity set value 0b
data modify entity @s PersistenceRequired set value 0b
effect clear @s minecraft:invisibility

function dc:get_call {tick:100, command:"data modify entity @s Silent set value 0b", requirePos:false, requireEntity:true}
function dc:get_call {tick:100, command:"team leave @s", requirePos:false, requireEntity:true}

$tp @s @e[type=marker, tag=myPos$(out),limit=1]
$kill @e[type=marker, tag=myPos$(out),limit=1]


#Ему и клонам дается регенерация
execute positioned as @s run function entities:mobs/abilities/regeneration/start