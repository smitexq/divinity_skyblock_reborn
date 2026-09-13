#Частицы и звук взрыва
playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 2 0.8
particle minecraft:dust{color:[0.7f,0f,0f],scale:0.75f} ~ ~ ~ 1.5 1.5 1.5 100 30 force
particle minecraft:explosion ~ ~1.5 ~

#Каждому игрока в радиусе 3,5 блоков выдаем урон
execute as @a[distance=..3.5] at @s run damage @s 18 minecraft:explosion

#Уничтожение блоков (смещенная вверх, так как динамит на голове)
execute positioned ~ ~0.7 ~ run function entities:mobs/abilities/throw_mini_tnt/blast/main

#Уничтожаем стойку
kill @s