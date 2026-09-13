#Забираем у всех достижение, кто раньше бил босса
advancement revoke @a only entities:player_hurt_entity/bosses_for_reward/soul_of_abyss


scoreboard players set *summon SoulOfAbyss 1
execute as @a at @s run playsound minecraft:block.end_portal.spawn ambient @s ~ ~ ~ 1 0.8

execute summon minecraft:piglin_brute run function entities:bosses/soul_of_abyss/on_summon
# summon marker ~ ~ ~ {Tags:["SoulOfAbyssArenaMiddle"]}

bossbar set dsb:boss.soul_of_abyss max 7000
bossbar set dsb:boss.soul_of_abyss value 7000
bossbar set dsb:boss.soul_of_abyss visible true
bossbar set dsb:boss.soul_of_abyss players @a[distance=..50]


# Если еще не было заметки про путешествения на босса - выдать
execute unless score #travel_bosses gameplay matches 1 run tellraw @s {"translate":"dsb.events.bosses.travel", "color":"green"}
execute unless score #travel_bosses gameplay matches 1 run playsound minecraft:entity.experience_orb.pickup
scoreboard players set #travel_bosses gameplay 1 

# добавляем единицу кол-ва вызываемых боссов
scoreboard players add *count_bosses gameplay 1
data remove storage dsb:dc Tasks[{command:"function dsb:events/travel_ring/after_boss_fight_msg"}]