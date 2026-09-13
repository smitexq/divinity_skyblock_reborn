#Забираем у всех достижение, кто раньше бил босса
advancement revoke @a only entities:player_hurt_entity/bosses_for_reward/winter_queen

scoreboard players set *summon WinterQueen 1
execute as @a at @s run playsound minecraft:block.end_portal.spawn ambient @s ~ ~ ~ 2

execute summon minecraft:stray run function entities:bosses/winter/on_summon
# summon marker ~ ~ ~ {Tags:["WinterQueenArenaMiddle"]}

bossbar set dsb:boss.winter max 10240
bossbar set dsb:boss.winter value 10240
bossbar set dsb:boss.winter visible true
bossbar set dsb:boss.winter players @a[distance=..200]

# добавляем единицу кол-ва вызываемых боссов
scoreboard players add *count_bosses gameplay 1
data remove storage dsb:dc Tasks[{command:"function dsb:events/travel_ring/after_boss_fight_msg"}]