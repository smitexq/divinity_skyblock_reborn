#Имя и звуки
data modify entity @s CustomName set value '{"text":"✇✇","color":"blue","extra":[{"text":"✇","color":"white"}]}'
playsound minecraft:block.note_block.iron_xylophone ambient @a[distance=..10] ~ ~ ~ 2 1

#Частицы создания луча
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust{color:[0f,1f,1f],scale:0.75f} ^0.3541667 ^0.625 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust{color:[0f,1f,1f],scale:0.75f} ^-0.3541667 ^-0.5833333 ^0 0 0 0 0 1 force @a

execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust{color:[0f,1f,1f],scale:0.75f} ^0.3541667 ^-0.5833333 ^0 0 0 0 0 1 force @a
execute anchored eyes positioned ^ ^-0.5 ^0.7 run particle minecraft:dust{color:[0f,1f,1f],scale:0.75f} ^-0.3541667 ^0.625 ^0 0 0 0 0 1 force @a
#Через секунду третий уровень заряда
function dc:get_call {tick:20, command:"function entities:mobs/abilities/charged_ray/sound_step3", requirePos:false, requireEntity:true}