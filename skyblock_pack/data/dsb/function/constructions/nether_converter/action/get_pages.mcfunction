#проверка кол-ва страниц, должно быть 3
execute store result score *var1 variables run execute if items entity @s weapon.mainhand minecraft:structure_block
execute unless score *var1 variables matches 3.. run return run title @s actionbar {"translate":"dsb.events.exchanger_pages_fail","color":"red"}

#Опыт игрока
execute store result score #levels variables run xp query @s levels

#
function dsb:constructions/nether_converter/action/get_enchant with storage dsb:cts Exchanger.Current