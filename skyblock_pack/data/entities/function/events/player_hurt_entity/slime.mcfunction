advancement revoke @s only entities:player_hurt_entity/slime

#Определяем тип
execute as @e[type=minecraft:slime,tag=uncommon,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/slime/uncommon/get_damage
execute as @e[type=minecraft:slime,tag=rare,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/slime/rare/get_damage
execute as @e[type=minecraft:slime,tag=mystic,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/slime/mystic/get_damage

#Определяем тип
execute as @e[type=minecraft:magma_cube,tag=uncommon,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/slime/uncommon/get_damage
execute as @e[type=minecraft:magma_cube,tag=rare,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/slime/rare/get_damage
execute as @e[type=minecraft:magma_cube,tag=mystic,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/slime/mystic/get_damage