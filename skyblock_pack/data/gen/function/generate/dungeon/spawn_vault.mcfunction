particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute as @a at @s run playsound minecraft:block.anvil.place ambient @s ~ ~ ~ 2 2
execute as @a at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a ~ ~ ~ 2

#тег метка
tag @s add Vault

#Случайная позиция на арене
spreadplayers ~ ~ 1 10 false @s

###Для хранилища предмет нужен с ПОЛНЫМ описанием всех компонентов, поэтому копируем ключ полностью из таблицы лута
setblock 17112005 0 0 minecraft:shulker_box
loot insert 17112005 0 0 loot dsb:items/tools/sea_king_key

execute at @s run setblock ~ ~ ~ minecraft:vault[ominous=true]{config:{key_item:{}, loot_table:"gen:dungeon/sea_king"}}
execute at @s run data modify block ~ ~ ~ config.key_item set from block 17112005 0 0 Items[0]

setblock 17112005 0 0 minecraft:air
###


scoreboard players set *var1 variables 0
execute as @a[advancements={entities:player_hurt_entity/bosses_for_reward/drowned_king=true}] run scoreboard players add *var1 variables 1
advancement revoke @a only entities:player_hurt_entity/bosses_for_reward/drowned_king
##Кол-во выданных ключей
scoreboard players operation @s CountPlayersKillingBoss = *var1 variables


#Забираем у всех достижение, кто бил босса
advancement revoke @a only entities:player_hurt_entity/bosses_for_reward/drowned_king