#Проверяем слоты. По итогу записывается последнее кольцо в слотах (если их несколько и они жертвенные)
data modify storage dsb:temp SacrificialRings set from entity @s Inventory[{Slot:11b,components:{"minecraft:custom_data":{SacrificialRing:1b,used:0b}}}]

execute if entity @s[tag=!WearingRingOfAdvancedGUI] run return 0

data modify storage dsb:temp SacrificialRings set from entity @s Inventory[{Slot:12b,components:{"minecraft:custom_data":{SacrificialRing:1b,used:0b}}}]
data modify storage dsb:temp SacrificialRings set from entity @s Inventory[{Slot:13b,components:{"minecraft:custom_data":{SacrificialRing:1b,used:0b}}}]