tag @s remove get_nick
tellraw @s {"fallback":"Unfortunate, the grave did not spawn","translate":"dsb.events.grave_fail","color":"red"}

#Очистка хранилища
data remove storage dsb:temp Grave

###Очистка записанных колец
function entities:player/void/clear_storage with storage dsb:grave new
###

#очищаем его уровень опыта
experience set @s 0 levels
experience set @s 0 points

#Отдельно очищаем меню колец, чтобы посчитать, сколько предметов он потерял
clear @s minecraft:gray_stained_glass_pane[minecraft:custom_data~{accessories_font:1b}]
clear @s minecraft:black_stained_glass_pane[minecraft:custom_data~{accessories_font:1b}]
execute store result score *var1 variables run clear @s
##Достижение
execute if score *var1 variables matches 1.. run advancement grant @s only dsb:skyblock/travel/void
##

#Возврат менюшки для открытия слотов колец
function rings:api/return_open_gui_button
tag @s remove BlockInvChanged

###УДАЛИТЬ ТЕГИ С КОЛЬЦАМИ
tag @s remove OpennedGUIRings
tag @s remove WearingRingOfAdvancedGUI

tag @s remove WearingAmuletOfLife
tag @s remove WearingAmuletOfArmor
execute if entity @s[tag=WearingAmuletOfLuck] run function rings:activate_ring/amulet_of_luck/remove
execute if entity @s[tag=WearingAmuletOfIntelligence] run function rings:activate_ring/amulet_of_intelligence/remove
tag @s remove WearingRingOfVampire
tag @s remove WearingNorthernRitualRing
tag @s remove WearingSouthernRitualRing
execute if entity @s[tag=WearingRingOfDisaster] run function rings:activate_ring/ring_of_disaster/remove
tag @s remove WearingAncientRingOfTheSun
tag @s remove WearingHawkRing
tag @s remove WearingRedSunRing
execute if entity @s[tag=WearingSacrificialRing] run function rings:activate_ring/sacrificial/remove

execute if entity @s[tag=WearingScholarRing] run function rings:activate_ring/scholar/remove
execute if entity @s[tag=WearingTravelerRing] run function rings:activate_ring/traveler/remove
execute if entity @s[tag=WearingWandererRing] run function rings:activate_ring/wanderer/remove