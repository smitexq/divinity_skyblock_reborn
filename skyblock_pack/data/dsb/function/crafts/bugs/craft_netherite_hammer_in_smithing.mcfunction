advancement revoke @s only dsb:craft_recipe/bugs/craft_netherite_hammer_in_smithing

#выдаем ингридиенты
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot"}}
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_upgrade_smithing_template"}}

loot spawn ~ ~ ~ loot dsb:bugs/craft_netherite_hammer_in_smithing
#

#забираем кирку
clear @s minecraft:netherite_pickaxe[minecraft:custom_data~{id:"diamond_hammer"}]
function dc:get_call {tick:1, command:"kill @e[type=item, nbt={Item:{id:'minecraft:netherite_pickaxe', components:{'minecraft:custom_data':{id:'diamond_hammer'}}}}]", requirePos:false, requireEntity:false}
#


playsound minecraft:entity.villager.no ambient @s
tellraw @s {"translate":"dsb.events.craft_netherite_hammer_in_smithing", "color":"red"}