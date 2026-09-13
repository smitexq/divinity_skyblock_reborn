summon armor_stand ~ ~ ~ {Small:1b, Tags:["this"]}

data modify entity @e[type=armor_stand, tag=this, limit=1] Rotation set from entity @s Rotation
data modify entity @e[type=armor_stand, tag=this, limit=1] Motion set from entity @s Motion

kill @s