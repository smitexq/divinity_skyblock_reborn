#Если хотбар
$execute if score *var1 variables matches 0..8 run return run loot replace entity @s container.$(Slot) loot dsb:items/used/sea_cup
#Иначе только левая рука
loot replace entity @s weapon.offhand loot dsb:items/used/sea_cup