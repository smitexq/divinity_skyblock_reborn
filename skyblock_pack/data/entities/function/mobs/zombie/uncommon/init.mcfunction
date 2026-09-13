# tag @s add entity
# tag @s add entity_boss
# tag @s add uncommon

#Урон и скорость
attribute @s minecraft:movement_speed modifier add speed 0.02 add_value
attribute @s minecraft:attack_damage modifier add damage 1 add_value
#Задавать плавающее значение хп
function entities:mobs/abilities/float_health/init {min:30, max:40}

data modify entity @s[type=zombie] CustomName set value '{"translate":"dsb.entity.boss.uncommon","color":"green","with":[{"translate":"entity.minecraft.zombie"}]}'
data modify entity @s[type=husk] CustomName set value '{"translate":"dsb.entity.boss.uncommon","color":"green","with":[{"translate":"entity.minecraft.husk"}]}'
data modify entity @s[type=drowned] CustomName set value '{"translate":"dsb.entity.boss.uncommon","color":"green","with":[{"translate":"entity.minecraft.drowned"}]}'
data modify entity @s CustomNameVisible set value 1

#Шанс подпрыгнуть каждые 12 сек
function dc:get_call {tick:240, command:"function entities:mobs/zombie/uncommon/run_after_12sec", requirePos:false, requireEntity:true}