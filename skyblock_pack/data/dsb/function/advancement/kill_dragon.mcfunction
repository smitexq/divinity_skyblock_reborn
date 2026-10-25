execute as @a unless score @s dsb.adv.chill_guy matches 1.. run advancement grant @s only dsb:skyblock/entities/chill_guy

#Для финального достижения на всех боссов
scoreboard players set #kill_dragon gameplay 1
#

# Элитры
loot give @a loot dsb:items/recipes/rituals/elytra
execute in minecraft:the_end run setblock 0 70 0 chest{LootTable:"dsb:items/recipes/rituals/elytra"}