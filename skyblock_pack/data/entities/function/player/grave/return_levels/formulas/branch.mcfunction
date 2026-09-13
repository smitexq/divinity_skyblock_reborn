#Ветвление (формула зависит от уровня)
execute if score *levels lvl matches 0..16 run return run function entities:player/grave/return_levels/formulas/0..16
execute if score *levels lvl matches 17..31 run return run function entities:player/grave/return_levels/formulas/17..31
execute if score *levels lvl matches 32.. run return run function entities:player/grave/return_levels/formulas/over_32