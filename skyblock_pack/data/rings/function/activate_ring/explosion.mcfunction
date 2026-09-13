#Призыв огненного шара, звуки и частицы взрыва
execute at @s run summon minecraft:small_fireball ~ ~2.5 ~ {Motion:[0.0d,-10.0d,0.0d]}
playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 1.25
particle minecraft:lava ~ ~0.5 ~ 0.3 0.3 0.3 1 4 force
damage @s 10 minecraft:explosion
