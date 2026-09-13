#Имя и звуки
data modify entity @s CustomName set value '{"text":"✇✇","color":"green","extra":[{"text":"✇","color":"gray"}]}'
playsound minecraft:block.note_block.iron_xylophone ambient @a[distance=..20] ~ ~ ~ 2 1

#Частицы создания луча
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust_color_transition{from_color:[0.078f,0.78f,0.06f], to_color:[0.75f,0.86f,0.12f],scale:0.75f} ^0.3541667 ^0.625 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust_color_transition{from_color:[0.078f,0.78f,0.06f], to_color:[0.75f,0.86f,0.12f],scale:0.75f} ^-0.3541667 ^-0.5833333 ^0 0 0 0 0 1 force @a

execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust_color_transition{from_color:[0.078f,0.78f,0.06f], to_color:[0.75f,0.86f,0.12f],scale:0.75f} ^0.3541667 ^-0.5833333 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust_color_transition{from_color:[0.078f,0.78f,0.06f], to_color:[0.75f,0.86f,0.12f],scale:0.75f} ^-0.3541667 ^0.625 ^0 0 0 0 0 1 force @a
#Через секунду третий уровень заряда
function dc:get_call {tick:20, command:"function entities:mobs/abilities/charged_ray_poison/sound_step3", requirePos:false, requireEntity:true}