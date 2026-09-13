execute as @a unless score @s dsb.adv.chill_guy matches 1.. run advancement grant @a only dsb:skyblock/entities/chill_guy

# Элитры
loot give @a loot dsb:items/recipes/rituals/elytra
execute in minecraft:the_end run setblock 0 67 0 chest{LootTable:"dsb:items/recipes/rituals/elytra"}