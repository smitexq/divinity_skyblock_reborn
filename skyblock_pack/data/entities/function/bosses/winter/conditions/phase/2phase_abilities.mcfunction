execute store result score *var1 variables run random value 1..11 dsb:winter_queen_select_ability_1_phase
#Если номер способности равен предыдущей, то рерол (работает только на freeze и rain, подряд быть НЕ МОЖЕТ)
execute if score *var1 variables = #numberLastAbility WinterQueen run return run function entities:bosses/winter/conditions/phase/2phase_abilities
scoreboard players set #numberLastAbility WinterQueen 0

execute if score *var1 variables matches 1..2 run return run function entities:bosses/winter/abilities/freeze/start
execute if score *var1 variables matches 3..4 run return run function entities:bosses/winter/abilities/lines/start
execute if score *var1 variables matches 5..6 run return run function entities:bosses/winter/abilities/dash/start
execute if score *var1 variables matches 7..8 run return run function entities:bosses/winter/abilities/rain/start
execute if score *var1 variables matches 9..10 run return run function entities:bosses/winter/abilities/grid/start
execute if score *var1 variables matches 11 run return run function entities:bosses/winter/abilities/summon/start