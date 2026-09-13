#проверяем если держит в руках всё тот же предмет
#записываем предмет id страницы, которую держал до этого
$data modify storage dsb:cts Exchanger.temp.ench set from storage dsb:cts Exchanger.PlayerOrder[{uuid:"$(owner)"}].ench
#пытаемся записать сюда же текущий id, если не получится, значит страницы одинаковые
$execute store success score *var1 variables run data modify storage dsb:cts Exchanger.temp.ench set value "$(ench)"


execute if score *var1 variables matches 0 if items entity @s weapon.mainhand minecraft:structure_block[minecraft:count=3] run return run function dsb:constructions/nether_converter/action/confirm with storage dsb:cts Exchanger.Current

#Иначе неудачная попытка
return fail