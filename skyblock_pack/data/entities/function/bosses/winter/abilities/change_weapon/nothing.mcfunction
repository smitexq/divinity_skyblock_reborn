tag @s remove bow
tag @s add nothing

#
execute as @a[distance=..30] at @s run playsound minecraft:entity.blaze.shoot ambient @s

particle minecraft:raid_omen ~ ~1 ~ 0.8 0.8 0.8 1 15 force

item replace entity @s weapon.mainhand with air