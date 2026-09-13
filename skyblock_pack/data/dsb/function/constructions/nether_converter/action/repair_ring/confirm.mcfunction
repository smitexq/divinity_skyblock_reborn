#метка на обмен
tag @s remove Exchange.SacrRing

playsound minecraft:entity.experience_orb.pickup
loot replace entity @s weapon.mainhand loot dsb:items/rings/sacrificial_ring
#
xp add @s -8 levels
#очищаем души
clear @s minecraft:chain_command_block[minecraft:custom_data~{id: "soul"}] 3

advancement grant @s only dsb:skyblock/constructions/devil