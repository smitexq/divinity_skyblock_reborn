###Кол-во душ
execute store result score *var1 variables run execute if items entity @s container.* minecraft:chain_command_block[minecraft:custom_data~{id: "soul"}]
execute store result score *var2 variables run execute if items entity @s weapon.offhand minecraft:chain_command_block[minecraft:custom_data~{id: "soul"}]
scoreboard players operation *var1 variables += *var2 variables

execute unless score *var1 variables matches 3.. run title @s actionbar {"translate":"dsb.events.exchanger_repair_fail","color":"red"}
execute unless score *var1 variables matches 3.. run return fail
###

#Опыт игрока
execute store result score #levels variables run xp query @s levels
execute unless score #levels variables matches 8.. run title @s actionbar {"translate":"dsb.events.exchanger_pages_fail_xp","color":"red","with":["8"]}
execute unless score #levels variables matches 8.. run return fail

return 1