###Узнаем кол-во предмета
$execute store result score *var1 variables run data get storage dsb:cts Temp[{Slot:$(slot)b}].count

###В зависимости от типа будет разное умножение
$execute if items entity @s container.$(slot) #dsb:compost/1_points run return run function dsb:constructions/composter/work/add_points {multiply: 1, slot:$(slot), uuid:$(uuid)}

$execute if items entity @s container.$(slot) #dsb:compost/2_points run return run function dsb:constructions/composter/work/add_points {multiply: 2, slot:$(slot), uuid:$(uuid)}

$execute if items entity @s container.$(slot) #dsb:compost/3_points run return run function dsb:constructions/composter/work/add_points {multiply: 3, slot:$(slot), uuid:$(uuid)}

$execute if items entity @s container.$(slot) minecraft:wheat run return run function dsb:constructions/composter/work/add_points {multiply: 4, slot:$(slot), uuid:$(uuid)}

$execute if items entity @s container.$(slot) #dsb:compost/6_points run return run function dsb:constructions/composter/work/add_points {multiply: 6, slot:$(slot), uuid:$(uuid)}


$execute if items entity @s container.$(slot) minecraft:structure_block[minecraft:custom_data={id:"tea_leaves"}] run return run function dsb:constructions/composter/work/add_points {multiply: 3, slot:$(slot), uuid:$(uuid)}
$execute if items entity @s container.$(slot) minecraft:structure_block[minecraft:custom_data={id:"black_tea_leaves"}] run return run function dsb:constructions/composter/work/add_points {multiply: 3, slot:$(slot), uuid:$(uuid)}