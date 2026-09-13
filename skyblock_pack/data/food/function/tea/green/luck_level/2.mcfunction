tag @s remove GreenTea1
tag @s remove GreenTea3

tag @s add UseGreenTea
tag @s add GreenTea2

effect clear @s minecraft:luck
$effect give @s minecraft:luck $(time) 1 true
$scoreboard players set @s TimeConsumeGreenTea $(time)