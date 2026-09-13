advancement revoke @s only food:use_bone_meal

execute store result score #rand TeaScore run random value 0..9 dsb:return_bone_meal

execute if entity @s[tag=BirchTea1] if score #rand TeaScore matches 0..1 run return run summon item ~ ~ ~ {Item:{id:"minecraft:bone_meal",count:1}}
execute if entity @s[tag=BirchTea2] if score #rand TeaScore matches 0..4 run return run summon item ~ ~ ~ {Item:{id:"minecraft:bone_meal",count:1}}
execute if entity @s[tag=BirchTea3] if score #rand TeaScore matches 0..5 run return run summon item ~ ~ ~ {Item:{id:"minecraft:bone_meal",count:1}}