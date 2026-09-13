# tag @s add entity
# tag @s add entity_boss
# tag @s add uncommon

#Урон и скорость
attribute @s minecraft:movement_speed modifier add speed 0.02 add_value
attribute @s minecraft:attack_damage modifier add damage 1 add_value
#Задавать плавающее значение хп
function entities:mobs/abilities/float_health/init {min:30, max:40}

data modify entity @s[type=skeleton] CustomName set value '{"translate":"dsb.entity.boss.uncommon","color":"green","with":[{"translate":"entity.minecraft.skeleton"}]}'
data modify entity @s[type=bogged] CustomName set value '{"translate":"dsb.entity.boss.uncommon","color":"green","with":[{"translate":"entity.minecraft.bogged"}]}'
data modify entity @s[type=stray] CustomName set value '{"translate":"dsb.entity.boss.uncommon","color":"green","with":[{"translate":"entity.minecraft.stray"}]}'
data modify entity @s CustomNameVisible set value 1

function dc:get_call {tick:300, command:"function entities:mobs/skeleton/uncommon/run_after_15sec", requirePos:false, requireEntity:true}