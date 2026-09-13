execute as @e[type=minecraft:marker, tag=SummonByWinterBoss] at @s run function entities:bosses/winter/abilities/summon/on_marker

execute as @a[distance=..30] at @s run playsound minecraft:entity.evoker.cast_spell ambient @s