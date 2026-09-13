# tag @s add entity
# tag @s add entity_boss
# tag @s add mystic

#Урон и скорость
attribute @s minecraft:movement_speed modifier add speed 0.06 add_value
attribute @s minecraft:attack_damage modifier add damage 2 add_value
#Задавать плавающее значение хп
function entities:mobs/abilities/float_health/init {min:90, max:120}

data modify entity @s[type=minecraft:slime] CustomName set value '{"translate":"dsb.entity.boss.mystic","color":"red","with":[{"translate":"entity.minecraft.slime"}]}'
data modify entity @s[type=minecraft:magma_cube] CustomName set value '{"translate":"dsb.entity.boss.mystic","color":"red","with":[{"translate":"entity.minecraft.magma_cube"}]}'

data modify entity @s CustomNameVisible set value 1
data modify entity @s Size set value 2

function dc:get_call {tick:240, command:"function entities:mobs/slime/mystic/run_after_12sec", requirePos:false, requireEntity:true}
