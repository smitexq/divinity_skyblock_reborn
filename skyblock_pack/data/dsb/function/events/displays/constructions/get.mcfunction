##тип конструкции
scoreboard players operation *var1 variables = @s VizualConstruction

#запоминаем последнюю визуал. чтобы потом можно было ею воспользоваться на первой страницеЫ
scoreboard players operation @s last_vizual = @s VizualConstruction

scoreboard players reset @s VizualConstruction
scoreboard players enable @s VizualConstruction
##

execute store result storage dsb:temp Vizual.time int 20 run scoreboard players get @s settings_vizual_time
execute store result storage dsb:temp Vizual.id int 1 run random value 1..2147483647 dsb:vizual_cst_id


execute if score *var1 variables matches 100 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/composter with storage dsb:temp Vizual

execute if score *var1 variables matches 101 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/sieve with storage dsb:temp Vizual

execute if score *var1 variables matches 102 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/research_table with storage dsb:temp Vizual

execute if score *var1 variables matches 103 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/water_collector with storage dsb:temp Vizual

execute if score *var1 variables matches 104 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/cauldron with storage dsb:temp Vizual

execute if score *var1 variables matches 105 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/small_library with storage dsb:temp Vizual

execute if score *var1 variables matches 106 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/tea_cauldron with storage dsb:temp Vizual

execute if score *var1 variables matches 107 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/lantern with storage dsb:temp Vizual

execute if score *var1 variables matches 108 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/flying_boat with storage dsb:temp Vizual

execute if score *var1 variables matches 109 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/waystone with storage dsb:temp Vizual

execute if score *var1 variables matches 110 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/exchanger with storage dsb:temp Vizual

execute if score *var1 variables matches 111 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/huge_library with storage dsb:temp Vizual

execute if score *var1 variables matches 112 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/blaze_spawner with storage dsb:temp Vizual

execute if score *var1 variables matches 113 at @s align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:events/displays/constructions/altar with storage dsb:temp Vizual

