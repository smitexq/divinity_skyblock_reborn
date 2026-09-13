#Выбираем рандомную вазу из трех
execute store result score *var1 variables run random value 1..3 gen:get_id_pot


execute if score *var1 variables matches 1 run return run setblock ~ ~ ~ minecraft:decorated_pot[cracked=true]{LootTable:"gen:pots/blocks/base",sherds:["minecraft:air","minecraft:air","minecraft:air","minecraft:friend_pottery_sherd"]}

execute if score *var1 variables matches 2 run return run setblock ~ ~ ~ minecraft:decorated_pot[cracked=true]{LootTable:"gen:pots/potions/base",sherds:["minecraft:air","minecraft:air","minecraft:air","minecraft:brewer_pottery_sherd"]}

execute if score *var1 variables matches 3 run return run setblock ~ ~ ~ minecraft:decorated_pot[cracked=true]{LootTable:"gen:pots/trash/base",sherds:["minecraft:air","minecraft:air","minecraft:air","minecraft:sheaf_pottery_sherd"]}