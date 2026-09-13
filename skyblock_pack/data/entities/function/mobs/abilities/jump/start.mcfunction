#Тег на то, что нельзя юзать телепорт
tag @s add no.use.teleport
function dc:get_call {tick:25, command:"tag @s remove no.use.teleport", requirePos:false, requireEntity:true}

#Прыжок и выдача неуязвимости
data modify entity @s Motion[1] set value 0.9
data modify entity @s Invulnerable set value 1

#Возврат неуязвимости
function dc:get_call {tick:25, command:"data modify entity @s Invulnerable set value 0", requirePos:false, requireEntity:true}

#Маркер на призыв моба
$execute summon marker run function entities:mobs/abilities/jump/on_marker {mob:$(mob)}