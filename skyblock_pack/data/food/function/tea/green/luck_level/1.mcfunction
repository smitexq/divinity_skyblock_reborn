tag @s remove GreenTea2
tag @s remove GreenTea3

tag @s add UseGreenTea
tag @s add GreenTea1

effect clear @s minecraft:luck
$effect give @s minecraft:luck $(time) 0 true
$scoreboard players set @s TimeConsumeGreenTea $(time)