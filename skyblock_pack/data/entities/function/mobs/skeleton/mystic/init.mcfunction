# tag @s add entity
# tag @s add entity_boss
# tag @s add mystic

#Урон и скорость
attribute @s minecraft:movement_speed modifier add speed 0.06 add_value
attribute @s minecraft:attack_damage modifier add damage 2 add_value
#Задавать плавающее значение хп
function entities:mobs/abilities/float_health/init {min:90, max:120}

data modify entity @s[type=skeleton] CustomName set value '{"translate":"dsb.entity.boss.mystic","color":"red","with":[{"translate":"entity.minecraft.skeleton"}]}'
data modify entity @s[type=bogged] CustomName set value '{"translate":"dsb.entity.boss.mystic","color":"red","with":[{"translate":"entity.minecraft.bogged"}]}'
data modify entity @s[type=stray] CustomName set value '{"translate":"dsb.entity.boss.mystic","color":"red","with":[{"translate":"entity.minecraft.stray"}]}'

data modify entity @s CustomNameVisible set value 1

function dc:get_call {tick:200, command:"function entities:mobs/skeleton/mystic/run_after_10sec", requirePos:false, requireEntity:true}
function dc:get_call {tick:140, command:"function entities:mobs/skeleton/mystic/run_after_30sec", requirePos:false, requireEntity:true}
