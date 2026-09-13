execute if predicate dsb:constructions/float_boat/v2 run data modify entity @s Rotation set value [-90f,0f]
execute if predicate dsb:constructions/float_boat/v3 run data modify entity @s Rotation set value [-180f,0f]
execute if predicate dsb:constructions/float_boat/v4 run data modify entity @s Rotation set value [90f,0f]

execute if predicate dsb:constructions/float_boat/v1 run fill ~-1 ~-1 ~-1 ~1 ~1 ~3 air
execute if predicate dsb:constructions/float_boat/v2 run fill ~-1 ~-1 ~1 ~3 ~1 ~-1 air
execute if predicate dsb:constructions/float_boat/v3 run fill ~1 ~-1 ~1 ~-1 ~1 ~-3 air
execute if predicate dsb:constructions/float_boat/v4 run fill ~1 ~-1 ~1 ~-3 ~1 ~-1 air

data modify entity @s NoGravity set value 1b
tag @s add flying_boat

data modify entity @s CustomNameVisible set value 1b
data modify entity @s CustomName set value '{"translate":"dsb.recipes.constructions.flying_boat","color":"aqua"}'

function dsb:constructions/flying_boat/on_entity
