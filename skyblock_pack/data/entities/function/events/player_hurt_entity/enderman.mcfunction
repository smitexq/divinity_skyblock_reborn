advancement revoke @s only entities:player_hurt_entity/enderman

#Определяем тип
execute as @e[type=minecraft:enderman,tag=uncommon,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/enderman/uncommon/get_damage
execute as @e[type=minecraft:enderman,tag=rare,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/enderman/rare/get_damage
execute as @e[type=minecraft:enderman,tag=mystic,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/enderman/mystic/get_damage