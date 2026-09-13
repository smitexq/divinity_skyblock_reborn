#Частицы создания луча
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust_color_transition{from_color:[0.078f,0.78f,0.06f], to_color:[0.75f,0.86f,0.12f],scale:0.75f} ^0.3541667 ^0.625 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust_color_transition{from_color:[0.078f,0.78f,0.06f], to_color:[0.75f,0.86f,0.12f],scale:0.75f} ^-0.3541667 ^-0.5833333 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust_color_transition{from_color:[0.078f,0.78f,0.06f], to_color:[0.75f,0.86f,0.12f],scale:0.75f} ^0.3541667 ^-0.5833333 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust_color_transition{from_color:[0.078f,0.78f,0.06f], to_color:[0.75f,0.86f,0.12f],scale:0.75f} ^-0.3541667 ^0.625 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust_color_transition{from_color:[0.078f,0.78f,0.06f], to_color:[0.75f,0.86f,0.12f],scale:0.75f} ^-0.6875 ^0 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust_color_transition{from_color:[0.078f,0.78f,0.06f], to_color:[0.75f,0.86f,0.12f],scale:0.75f} ^0.6875 ^0 ^0 0 0 0 0 1 force @a

#32 тика моб прицеливается
scoreboard players add @s use.charged_ray 1

execute facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute if score @s use.charged_ray matches ..7 run return run function dc:get_call {tick:4, command:"function entities:mobs/abilities/charged_ray_poison/sound_step4", requirePos:false, requireEntity:true}

function entities:mobs/abilities/charged_ray_poison/end