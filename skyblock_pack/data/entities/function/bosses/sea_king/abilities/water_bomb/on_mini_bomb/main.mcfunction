execute as @e[type=minecraft:item,tag=WaterBombAnimation, limit=101] at @s run data modify entity @s CustomName set value '{"color":"yellow","text":"3"}'
execute as @e[type=minecraft:item,tag=WaterBombAnimation, limit=101] at @s run data modify entity @s CustomNameVisible set value 1

execute at @e[type=drowned, tag=drowned_king] run effect give @a[distance=..25] minecraft:blindness 2
execute at @e[type=drowned, tag=drowned_king] as @a[distance=..50] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s

function dc:get_call {tick:8, command:"function entities:bosses/sea_king/abilities/water_bomb/on_mini_bomb/frame_1", requirePos:false, requireEntity:false}