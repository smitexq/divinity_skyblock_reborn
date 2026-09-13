scoreboard players set *summon SeaKing 0

# вычитаем единицу из кол-ва вызываемых боссов через 1.5 минуты
function dc:get_call {tick:1400, command:"scoreboard players remove *count_bosses gameplay 1", requirePos:false, requireEntity:false}
# через минуту предупреждаем о том, что скоро пройдет эффект
function dc:get_call {tick:1200, command:"function dsb:events/travel_ring/after_boss_fight_msg", requirePos:false, requireEntity:false}
#

bossbar set dsb:boss.drowned_king visible false


# удаление сущностей
kill @e[type=armor_stand, tag=water_bomb]
kill @e[type=armor_stand, tag=WaterBombAnimation]


data remove storage dsb:dc Tasks[{command:"function entities:bosses/sea_king/conditions/time"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/sea_king/abilities/1_phase_10_sec"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/sea_king/abilities/1_phase_15_sec"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/sea_king/abilities/2_phase_8_sec"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/sea_king/abilities/2_phase_18_sec"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/sea_king/abilities/2_phase_4_sec"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/sea_king/abilities/1_phase_4_sec"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/sea_king/abilities/1_phase_20_sec"}]

#Удаление задач
execute as @e[type=drowned, tag=drowned_king] run function dc:gu/generate
data modify storage dsb:dc_remove temp.UUID set from storage gu:main out

data modify storage dsb:dc_remove temp.command set value "kill @s"
function dc:clear_schedule with storage dsb:dc_remove temp
#

tp @e[type=drowned, tag=drowned_king] ~ ~-1000 ~