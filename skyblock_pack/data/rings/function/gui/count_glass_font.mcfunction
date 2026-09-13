execute store result score *var2 variables run data get entity @s Inventory[{Slot:10b,components:{"minecraft:custom_data":{accessories_font:1b}}}].count
scoreboard players operation *var1 variables = *var2 variables

execute store result score *var2 variables run data get entity @s Inventory[{Slot:11b,components:{"minecraft:custom_data":{accessories_font:1b}}}].count
scoreboard players operation *var1 variables += *var2 variables

execute if entity @s[tag=!WearingRingOfAdvancedGUI] run return run scoreboard players get *var1 variables

execute store result score *var2 variables run data get entity @s Inventory[{Slot:12b,components:{"minecraft:custom_data":{accessories_font:1b}}}].count
scoreboard players operation *var1 variables += *var2 variables

execute store result score *var2 variables run data get entity @s Inventory[{Slot:13b,components:{"minecraft:custom_data":{accessories_font:1b}}}].count
scoreboard players operation *var1 variables += *var2 variables