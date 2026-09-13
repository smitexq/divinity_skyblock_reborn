tag @s add WearingSacrificialRing
#Если кольцо сломано, то тег на сохранение инва не добавляем, частицы тоже
execute unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,SacrificialRing:1b,used:0b}}}] run playsound minecraft:entity.villager.no ambient @s
execute unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,SacrificialRing:1b,used:0b}}}] run return 0

playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 2 1.3
particle cherry_leaves ~ ~1 ~ 0.5 0.65 0.5 0 15 force
tag @s add SaveInventory