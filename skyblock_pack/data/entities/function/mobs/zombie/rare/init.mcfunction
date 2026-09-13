# tag @s add entity
# tag @s add entity_boss
# tag @s add rare

#Урон и скорость
attribute @s minecraft:movement_speed modifier add speed 0.035 add_value
attribute @s minecraft:attack_damage modifier add damage 1.5 add_value
#Задавать плавающее значение хп
function entities:mobs/abilities/float_health/init {min:45, max:70}

data modify entity @s[type=zombie] CustomName set value '{"translate":"dsb.entity.boss.rare","color":"gold","with":[{"translate":"entity.minecraft.zombie"}]}'
data modify entity @s[type=husk] CustomName set value '{"translate":"dsb.entity.boss.rare","color":"gold","with":[{"translate":"entity.minecraft.husk"}]}'
data modify entity @s[type=drowned] CustomName set value '{"translate":"dsb.entity.boss.rare","color":"gold","with":[{"translate":"entity.minecraft.drowned"}]}'
data modify entity @s CustomNameVisible set value 1

#каждые 13 сек шанс бури или ошеломления
function dc:get_call {tick:400, command:"function entities:mobs/zombie/rare/run_after_13sec", requirePos:false, requireEntity:true}