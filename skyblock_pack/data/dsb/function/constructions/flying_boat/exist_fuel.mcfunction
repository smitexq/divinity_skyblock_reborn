scoreboard players set *var3 variables 0

#Сначала проверяем есть ли топливо за открытыми слотами для колец (в сохранненом инвентаре)
function dc:gu/generate
execute if entity @s[tag=OpennedGUIRings] store result score *var3 variables run function dsb:constructions/flying_boat/exist_fuel_in_rings_slot with storage gu:main
#Если есть в инвентаре или во второй руке
execute if items entity @s container.* minecraft:structure_block[minecraft:custom_data={id:"fuel"}] run scoreboard players add *var3 variables 1
execute if items entity @s weapon.offhand minecraft:structure_block[minecraft:custom_data={id:"fuel"}] run scoreboard players add *var3 variables 1

execute if score *var3 variables matches 0 run return fail
return 1