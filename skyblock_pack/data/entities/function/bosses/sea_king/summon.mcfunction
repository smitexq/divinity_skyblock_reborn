execute summon minecraft:drowned run function entities:bosses/sea_king/on_summon
# summon marker ~ ~ ~ {Tags:["DrownedArenaMiddle"]}

#Забираем у всех достижение, кто раньше бил босса
advancement revoke @a only entities:player_hurt_entity/bosses_for_reward/drowned_king

bossbar set dsb:boss.drowned_king max 3000
bossbar set dsb:boss.drowned_king value 3000
bossbar set dsb:boss.drowned_king visible true
bossbar set dsb:boss.drowned_king players @a[distance=..40]


# Если еще не было заметки про путешествения на босса - выдать
execute unless score #travel_bosses gameplay matches 1 run tellraw @a {"translate":"dsb.events.bosses.travel", "color":"green"}
execute unless score #travel_bosses gameplay matches 1 as @a at @s run playsound minecraft:entity.experience_orb.pickup
scoreboard players set #travel_bosses gameplay 1 

# добавляем единицу кол-ва вызываемых боссов
scoreboard players add *count_bosses gameplay 1
data remove storage dsb:dc Tasks[{command:"function dsb:events/travel_ring/after_boss_fight_msg"}]