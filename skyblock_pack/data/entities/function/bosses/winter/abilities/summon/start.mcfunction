#Кол-во мобов на призыв
execute store result score *var1 variables run random value 2..3 dsb:winter_boss_count_mobsummon
# Прибавляем за количество игроков
execute store result score *var2 variables run list
scoreboard players operation *var1 variables += *var2 variables

#призыв
function entities:bosses/winter/abilities/summon/create_marker

#распределение
spreadplayers ~ ~ 3 6 false @e[type=minecraft:marker, tag=SummonByWinterBoss]
execute as @e[type=minecraft:marker, tag=SummonByWinterBoss] run data modify entity @s Pos[1] set from entity @e[type=stray, tag=WinterBoss, limit=1] Pos[1]


execute as @a[distance=..30] at @s run playsound minecraft:entity.evoker.prepare_summon ambient @s
function dc:get_call {tick:50, command:"function entities:bosses/winter/abilities/summon/after_time", requirePos:true, requireEntity:false}