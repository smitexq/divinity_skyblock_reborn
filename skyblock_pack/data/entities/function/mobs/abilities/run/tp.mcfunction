execute if entity @s[tag=!startRun] run return 0

$tp @s @e[type=ocelot, tag=$(out), limit=1]

$function dc:get_call {tick:2, command:"function entities:mobs/abilities/run/tp {out:$(out)}", requirePos:false, requireEntity:true}