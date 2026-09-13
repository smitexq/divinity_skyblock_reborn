advancement revoke @s only entities:player_hurt_entity/zombie

#Определяем тип
execute as @e[type=minecraft:zombie,tag=uncommon,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/zombie/uncommon/get_damage
execute as @e[type=minecraft:zombie,tag=rare,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/zombie/rare/get_damage
execute as @e[type=minecraft:zombie,tag=mystic,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/zombie/mystic/get_damage

#Определяем тип
execute as @e[type=minecraft:husk,tag=uncommon,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/zombie/uncommon/get_damage
execute as @e[type=minecraft:husk,tag=rare,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/zombie/rare/get_damage
execute as @e[type=minecraft:husk,tag=mystic,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/zombie/mystic/get_damage

#Определяем тип
execute as @e[type=minecraft:drowned,tag=uncommon,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/zombie/uncommon/get_damage
execute as @e[type=minecraft:drowned,tag=rare,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/zombie/rare/get_damage
execute as @e[type=minecraft:drowned,tag=mystic,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/zombie/mystic/get_damage