#Новая запись
$data modify storage dsb:grave All append value {UUID:$(Grave_UUID)}

#последняя добавленная запись
data modify storage dsb:grave All[-1].Inventory set from storage dsb:temp Grave.GraveInv
data modify storage dsb:grave All[-1].SaveAccessories set from storage dsb:temp Grave.SaveAccessories

#записываем уровень опыта игрока
execute store result storage dsb:grave All[-1].XpLevel int 1 run experience query @s levels
execute store result storage dsb:grave All[-1].XpPoints int 1 run experience query @s points