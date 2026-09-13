$item modify entity @s weapon.mainhand [{"function":"set_damage", "damage": $(damage), "add": true}]

#Если предмет НЕ сломался то скип
$execute unless items entity @s weapon.mainhand minecraft:$(item)[minecraft:damage=$(max_damage)] run return 0

$execute anchored eyes run particle item{item:"minecraft:$(item)"} ^ ^-0.4 ^1 0.2 0.2 0.2 0 4
item replace entity @s weapon.mainhand with air
playsound minecraft:entity.item.break ambient @s