advancement revoke @s only entities:player_hurt_entity/blaze

#Определяем тип
execute as @e[type=minecraft:blaze,tag=uncommon,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/blaze/uncommon/get_damage
execute as @e[type=minecraft:blaze,tag=rare,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/blaze/rare/get_damage
execute as @e[type=minecraft:blaze,tag=mystic,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/blaze/mystic/get_damage