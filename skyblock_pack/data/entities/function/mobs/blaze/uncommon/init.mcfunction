# tag @s add entity
# tag @s add entity_boss
# tag @s add uncommon

#Урон и скорость
attribute @s minecraft:movement_speed modifier add speed 0.02 add_value
attribute @s minecraft:attack_damage modifier add damage 1 add_value
#Задавать плавающее значение хп
function entities:mobs/abilities/float_health/init {min:30, max:40}

data modify entity @s CustomName set value '{"translate":"dsb.entity.boss.uncommon","color":"green","with":[{"translate":"entity.minecraft.blaze"}]}'
data modify entity @s CustomNameVisible set value 1