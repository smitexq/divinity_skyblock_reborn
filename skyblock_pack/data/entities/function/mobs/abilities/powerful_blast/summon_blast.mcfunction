#fireball, который вызывает взрыв
summon minecraft:fireball ~ ~ ~ {Motion:[0.0d,-1.0d,0.0d],ExplosionPower:3b}

execute as @a[distance=..1.5] run damage @s 10 minecraft:explosion
execute as @a[distance=..6] unless entity @s[distance=..1.5] run damage @s 7 minecraft:explosion
execute as @a[distance=..10] unless entity @s[distance=..6] run damage @s 4 minecraft:explosion


#Частицы
particle lava ~ ~0.7 ~ 0.45 0 0.45 1 9 force
#Убиваем этот маркер
kill @s