# tag @s add entity
# tag @s add entity_boss
# tag @s add rare

#Урон и скорость
attribute @s minecraft:movement_speed modifier add speed 0.035 add_value
attribute @s minecraft:attack_damage modifier add damage 1.5 add_value
#Задавать плавающее значение хп
function entities:mobs/abilities/float_health/init {min:45, max:70}

data modify entity @s CustomName set value '{"translate":"dsb.entity.boss.rare","color":"gold","with":[{"translate":"entity.minecraft.creeper"}]}'
data modify entity @s CustomNameVisible set value 1
data modify entity @s Fuse set value 50

function dc:get_call {tick:40, command:"function entities:mobs/creeper/rare/run_after_2sec", requirePos:false, requireEntity:true}
function dc:get_call {tick:300, command:"function entities:mobs/creeper/rare/run_after_15sec", requirePos:false, requireEntity:true}
function dc:get_call {tick:400, command:"function entities:mobs/creeper/rare/run_after_20sec", requirePos:false, requireEntity:true}
