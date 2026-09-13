advancement revoke @s only entities:player_hurt_entity/witch

#Определяем тип
execute as @e[type=minecraft:witch,tag=uncommon,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/witch/uncommon/get_damage
execute as @e[type=minecraft:witch,tag=rare,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/witch/rare/get_damage
execute as @e[type=minecraft:witch,tag=mystic,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/witch/mystic/get_damage