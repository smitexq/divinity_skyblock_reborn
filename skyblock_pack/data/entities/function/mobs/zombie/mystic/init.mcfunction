# tag @s add entity
# tag @s add entity_boss
# tag @s add mystic

#Урон и скорость
attribute @s minecraft:movement_speed modifier add speed 0.06 add_value
attribute @s minecraft:attack_damage modifier add damage 2 add_value
#Задавать плавающее значение хп
function entities:mobs/abilities/float_health/init {min:90, max:120}

data modify entity @s[type=zombie] CustomName set value '{"translate":"dsb.entity.boss.mystic","color":"red","with":[{"translate":"entity.minecraft.zombie"}]}'
data modify entity @s[type=husk] CustomName set value '{"translate":"dsb.entity.boss.mystic","color":"red","with":[{"translate":"entity.minecraft.husk"}]}'
data modify entity @s[type=drowned] CustomName set value '{"translate":"dsb.entity.boss.mystic","color":"red","with":[{"translate":"entity.minecraft.drowned"}]}'
data modify entity @s CustomNameVisible set value 1

#каждые 20 сек шанс 40% отравляющего луча
function dc:get_call {tick:400, command:"function entities:mobs/zombie/mystic/run_after_20sec", requirePos:false, requireEntity:true}
#каждые 10 сек буря или призыв
function dc:get_call {tick:200, command:"function entities:mobs/zombie/mystic/run_after_10sec", requirePos:false, requireEntity:true}