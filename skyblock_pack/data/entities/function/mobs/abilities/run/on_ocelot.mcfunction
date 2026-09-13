effect give @s minecraft:speed infinite 0 true
effect give @s minecraft:invisibility infinite 1 true
data modify entity @s Invulnerable set value 1
data modify entity @s Silent set value 1

function dc:get_call {tick:4, command:"tp @s ~ ~-999.5 ~", requirePos:false, requireEntity:true}

$tag @s add $(out)


function dc:get_call {tick:120, command:"tp @s ~ ~-1000 ~", requirePos:false, requireEntity:true}


$execute as $(out) run function dc:get_call {tick:5, command:"function entities:mobs/abilities/run/tp {out:$(out)}", requirePos:false, requireEntity:true}