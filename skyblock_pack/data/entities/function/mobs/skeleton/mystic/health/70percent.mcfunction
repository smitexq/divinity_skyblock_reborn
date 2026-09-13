tag @s add less_70percent_hp
playsound minecraft:enchant.thorns.hit ambient @a[distance=..13] ~ ~1 ~

#Призыв
execute if entity @s[type=skeleton] run function entities:mobs/abilities/jump/start {mob:"skeleton"}
execute if entity @s[type=skeleton] run function dc:get_call {tick:30, command:"function entities:mobs/abilities/jump/start {mob:'skeleton'}", requirePos:false, requireEntity:true}
execute if entity @s[type=skeleton] run function dc:get_call {tick:60, command:"function entities:mobs/abilities/jump/start {mob:'skeleton'}", requirePos:false, requireEntity:true}
execute if entity @s[type=skeleton] run return run function dc:get_call {tick:90, command:"function entities:mobs/abilities/jump/start {mob:'skeleton'}", requirePos:false, requireEntity:true}


#Призыв
execute if entity @s[type=bogged] run function entities:mobs/abilities/jump/start {mob:"bogged"}
execute if entity @s[type=bogged] run function dc:get_call {tick:30, command:"function entities:mobs/abilities/jump/start {mob:'bogged'}", requirePos:false, requireEntity:true}
execute if entity @s[type=bogged] run function dc:get_call {tick:60, command:"function entities:mobs/abilities/jump/start {mob:'bogged'}", requirePos:false, requireEntity:true}
execute if entity @s[type=bogged] run return run function dc:get_call {tick:90, command:"function entities:mobs/abilities/jump/start {mob:'bogged'}", requirePos:false, requireEntity:true}


#Призыв
execute if entity @s[type=stray] run function entities:mobs/abilities/jump/start {mob:"stray"}
execute if entity @s[type=stray] run function dc:get_call {tick:30, command:"function entities:mobs/abilities/jump/start {mob:'stray'}", requirePos:false, requireEntity:true}
execute if entity @s[type=stray] run function dc:get_call {tick:60, command:"function entities:mobs/abilities/jump/start {mob:'stray'}", requirePos:false, requireEntity:true}
execute if entity @s[type=stray] run return run function dc:get_call {tick:90, command:"function entities:mobs/abilities/jump/start {mob:'stray'}", requirePos:false, requireEntity:true}