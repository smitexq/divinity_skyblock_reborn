$data modify entity @s Offers.Recipes append value {maxUses:9999999, buy:{id:"minecraft:$(id)",count:$(count)}, sell:{id:"minecraft:structure_block", count:1}, xp:0}

$loot replace block 17112022 0 0 container.0 loot entities:traders/cartography/$(path)
data modify entity @s Offers.Recipes[-1].sell set from block 17112022 0 0 Items[0]