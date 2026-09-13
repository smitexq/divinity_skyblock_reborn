tag @s remove GreenTea1
tag @s remove GreenTea2

tag @s add UseGreenTea
tag @s add GreenTea3

effect clear @s minecraft:luck
$effect give @s minecraft:luck $(time) 2 true
$scoreboard players set @s TimeConsumeGreenTea $(time)