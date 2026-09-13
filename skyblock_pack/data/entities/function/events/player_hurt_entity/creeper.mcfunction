advancement revoke @s only entities:player_hurt_entity/creeper

#Определяем тип
execute as @e[type=minecraft:creeper,tag=uncommon,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/creeper/uncommon/get_damage
execute as @e[type=minecraft:creeper,tag=rare,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/creeper/rare/get_damage
execute as @e[type=minecraft:creeper,tag=mystic,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/creeper/mystic/get_damage