advancement revoke @s only entities:player_hurt_entity/spider

#Определяем тип
execute as @e[type=minecraft:spider,tag=uncommon,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/spider/uncommon/get_damage
execute as @e[type=minecraft:spider,tag=rare,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/spider/rare/get_damage
execute as @e[type=minecraft:spider,tag=mystic,sort=nearest,nbt={HurtTime:10s}] at @s run return run function entities:mobs/spider/mystic/get_damage