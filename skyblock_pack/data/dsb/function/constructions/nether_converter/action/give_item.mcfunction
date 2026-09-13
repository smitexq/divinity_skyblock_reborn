playsound minecraft:entity.experience_orb.pickup
item replace entity @s weapon.mainhand with air

#Определяем кол-во опыта, чтобы отнять
$scoreboard players set *var1 variables $(lvl)
execute store result storage dsb:temp lvl int 1 run scoreboard players operation *var1 variables *= #2 variables
function dsb:constructions/nether_converter/action/remove_lvl with storage dsb:temp


$summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book", count:1b, components:{"minecraft:stored_enchantments":{"minecraft:$(ench)":$(lvl)}}}}

return 1