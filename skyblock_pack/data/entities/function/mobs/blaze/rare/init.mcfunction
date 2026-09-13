# tag @s add entity
# tag @s add entity_boss
# tag @s add rare

#Урон и скорость
attribute @s minecraft:movement_speed modifier add speed 0.035 add_value
attribute @s minecraft:attack_damage modifier add damage 1.5 add_value
#Задавать плавающее значение хп
function entities:mobs/abilities/float_health/init {min:45, max:70}

data modify entity @s CustomName set value '{"translate":"dsb.entity.boss.rare","color":"gold","with":[{"translate":"entity.minecraft.blaze"}]}'
data modify entity @s CustomNameVisible set value 1