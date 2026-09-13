#удаление метки
$tag @s remove Exchange.$(ench)

#
$execute if score #levels variables matches $(5lvl).. run return run function dsb:constructions/nether_converter/action/give_item {ench:$(ench), lvl:5}

$execute if score #levels variables matches $(4lvl).. run return run function dsb:constructions/nether_converter/action/give_item {ench:$(ench), lvl:4}

$execute if score #levels variables matches $(3lvl).. run return run function dsb:constructions/nether_converter/action/give_item {ench:$(ench), lvl:3}

$execute if score #levels variables matches $(2lvl).. run return run function dsb:constructions/nether_converter/action/give_item {ench:$(ench), lvl:2}

$execute if score #levels variables matches $(1lvl).. run return run function dsb:constructions/nether_converter/action/give_item {ench:$(ench), lvl:1}

#потратил опыт за 2.5 секунды пока было ожидание подтверждения
return fail