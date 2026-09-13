#от функции tick
#Если это было последнее кольцо жертвенности (определяется в player/grave/to_break_.../start), то убираем тег сохранения инвентаря
execute if entity @s[tag=RemoveSaveInventory] run tag @s remove SaveInventory
tag @s remove RemoveSaveInventory


execute if entity @s[tag=WearingAmuletOfLife] run attribute @s minecraft:max_health modifier add health_amulet 0.1 add_multiplied_total
execute if entity @s[tag=WearingAmuletOfArmor] run attribute @s minecraft:armor modifier add armor_amulet 1 add_value