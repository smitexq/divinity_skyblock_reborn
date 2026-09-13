#Частицы создания луча
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust{color:[0f,1f,1f],scale:0.75f} ^0.3541667 ^0.625 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust{color:[0f,1f,1f],scale:0.75f} ^-0.3541667 ^-0.5833333 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust{color:[0f,1f,1f],scale:0.75f} ^0.3541667 ^-0.5833333 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust{color:[0f,1f,1f],scale:0.75f} ^-0.3541667 ^0.625 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust{color:[0f,1f,1f],scale:0.75f} ^-0.6875 ^0 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust{color:[0f,1f,1f],scale:0.75f} ^0.6875 ^0 ^0 0 0 0 0 1 force @a

#32 тика моб прицеливается
scoreboard players add @s use.charged_ray 1

execute facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute if score @s use.charged_ray matches ..7 run return run function dc:get_call {tick:4, command:"function entities:mobs/abilities/charged_ray/sound_step4", requirePos:false, requireEntity:true}

function entities:mobs/abilities/charged_ray/end