execute as @e[type=minecraft:item,tag=WaterBombAnimation, limit=101] at @s run particle minecraft:cloud ~ ~0.9 ~ 0.5 0.5 0.5 0.1 6 force @a

#Урон
execute as @e[type=minecraft:item,tag=WaterBombAnimation, limit=101] at @s positioned ~-0.9 ~-0.9 ~-0.9 as @a[dx=0.8,dy=0.8,dz=0.8] run damage @s 14 minecraft:explosion
#Дебафы
execute as @e[type=minecraft:item,tag=WaterBombAnimation, limit=101] at @s positioned ~-1.3 ~-1.3 ~-1.3 as @a[dx=1.6,dy=1.6,dz=1.6] run function entities:bosses/sea_king/abilities/water_bomb/on_mini_bomb/debaf_player

kill @e[type=minecraft:item,tag=WaterBombAnimation, limit=101]

execute at @e[type=drowned, tag=drowned_king] as @a[distance=..50] at @s run playsound minecraft:entity.generic.explode ambient @s

