data remove block 17112022 0 0 Items
loot insert 17112022 0 0 loot dsb:items/rotten_remains

$data modify block 17112022 0 0 Items[0].count set value $(count)
$scoreboard players remove *var1 variables $(count)

loot spawn ~ ~0.8 ~ mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

data remove block 17112022 0 0 Items