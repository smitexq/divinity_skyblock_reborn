advancement revoke @s only entities:player_hurt_entity/skeleton

#Определяем тип
execute as @e[type=minecraft:skeleton,tag=uncommon,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/skeleton/uncommon/get_damage
execute as @e[type=minecraft:skeleton,tag=rare,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/skeleton/rare/get_damage
execute as @e[type=minecraft:skeleton,tag=mystic,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/skeleton/mystic/get_damage

#Определяем тип
execute as @e[type=minecraft:bogged,tag=uncommon,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/skeleton/uncommon/get_damage
execute as @e[type=minecraft:bogged,tag=rare,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/skeleton/rare/get_damage
execute as @e[type=minecraft:bogged,tag=mystic,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/skeleton/mystic/get_damage

#Определяем тип
execute as @e[type=minecraft:stray,tag=uncommon,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/skeleton/uncommon/get_damage
execute as @e[type=minecraft:stray,tag=rare,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/skeleton/rare/get_damage
execute as @e[type=minecraft:stray,tag=mystic,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/skeleton/mystic/get_damage