bossbar set dsb:boss.winter color yellow
tag @s add 2phase

attribute @s minecraft:attack_damage base set 24
attribute @s minecraft:armor base set 14

particle minecraft:end_rod ~ ~2 ~ 1.5 1.5 1.5 0 50 force
particle minecraft:witch ~ ~2 ~ 1.5 1.5 1.5 0 30 force
particle minecraft:sculk_soul ~ ~2 ~ 1.5 1.5 1.5 0 20 force

execute as @a[distance=..100] at @s run playsound minecraft:entity.wither.spawn ambient @s
function dc:get_call {tick:7, command:"execute as @a at @s run playsound minecraft:entity.ghast.hurt ambient @s ~ ~ ~ 1 1.2", requirePos:true, requireEntity:false}

function entities:bosses/winter/abilities/knockback/start