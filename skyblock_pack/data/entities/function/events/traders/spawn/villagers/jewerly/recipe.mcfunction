$loot replace block 17112022 0 0 container.0 loot $(path)
$data modify entity @s Offers.Recipes[$(slot)].sell set from block 17112022 0 0 Items[0]

$data modify entity @s Offers.Recipes[$(slot)].buy.count set value $(count)
$data modify entity @s Offers.Recipes[$(slot)].buy.id set value $(id)