# вычитаем единицу из кол-ва вызываемых боссов через 1.5 минуты
function dc:get_call {tick:1400, command:"scoreboard players remove *count_bosses gameplay 1", requirePos:false, requireEntity:false}
# через минуту предупреждаем о том, что скоро пройдет эффект
function dc:get_call {tick:1200, command:"function dsb:events/travel_ring/after_boss_fight_msg", requirePos:false, requireEntity:false}
#


bossbar set dsb:boss.winter color blue
scoreboard players set #numberLastAbility WinterQueen 0


kill @e[type=marker, tag=SummonByWinterBoss]
kill @e[type=minecraft:marker, tag=WinterQueenRainMarker]
kill @e[tag=WinterQueenMob]


tag @a remove TargetFromWinterQueen
scoreboard players reset @e WinterQueenDashPlayers

data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/dash/to_next_player"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/lines/raycast/set_values_loop"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/rain/drop/on_point"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/rain/summon"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/rain/drop/particles/2"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/rain/drop/particles/3"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/rain/drop/particles/4"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/rain/drop/particles/5"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/rain/drop/particles/6"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/rain/drop/damage"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/rain/drop/start"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/summon/after_time"}]

data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/conditions/phase/select_ability"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/conditions/time"}]

data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/abilities/change_weapon/select"}]
