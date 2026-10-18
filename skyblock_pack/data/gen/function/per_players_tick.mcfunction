#если игрок был в хабе до начала игры и вышел потом
execute if entity @s[tag=hub] if score #tp_to_overworld gameplay matches 1 in minecraft:overworld run function gen:on_load/player_in_hub_after_start with storage dsb_gen:values SpawnCoords

#Или сверху есть биом (в случае с крепостью), или в радиусе есть метка
execute if function gen:check_if_adventure run tag @s add ToAdventure
#
execute if entity @s[tag=ToAdventure, gamemode=survival] run gamemode adventure @s

#если условия не выполняются
execute if entity @s[tag=ToAdventure, gamemode=adventure] unless function gen:check_if_adventure run gamemode survival @s
execute if entity @s[tag=ToAdventure] unless function gen:check_if_adventure run tag @s remove ToAdventure