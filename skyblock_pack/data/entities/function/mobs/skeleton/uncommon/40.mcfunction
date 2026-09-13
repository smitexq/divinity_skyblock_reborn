tag @s add less_40percent_hp

execute if entity @s[type=skeleton] run function entities:mobs/abilities/jump/start {mob:"skeleton"}
execute if entity @s[type=skeleton] run return run function dc:get_call {tick:40, command:"function entities:mobs/abilities/jump/start {mob:'skeleton'}", requirePos:false, requireEntity:true}


execute if entity @s[type=bogged] run function entities:mobs/abilities/jump/start {mob:"bogged"}
execute if entity @s[type=bogged] run return run function dc:get_call {tick:40, command:"function entities:mobs/abilities/jump/start {mob:'bogged'}", requirePos:false, requireEntity:true}


execute if entity @s[type=stray] run function entities:mobs/abilities/jump/start {mob:"stray"}
execute if entity @s[type=stray] run return run function dc:get_call {tick:40, command:"function entities:mobs/abilities/jump/start {mob:'stray'}", requirePos:false, requireEntity:true}