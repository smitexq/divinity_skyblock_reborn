playsound minecraft:entity.generic.explode ambient @s ~ ~ ~ 1 2

scoreboard players set $strength player_motion.api.launch 19000

execute facing entity @e[type=#entities:entities_bosses, tag=LabelInitKnockback] eyes rotated ~180 -30 run function player_motion:api/launch_looking