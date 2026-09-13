data modify entity @s Offers.Recipes append value {maxUses:5, buy:{id:"minecraft:emerald",count:1}, sell:{id:"minecraft:structure_block", count:1}, xp:0}

#Предмет для покупки
loot replace block 17112022 0 0 container.0 loot entities:traders/buyer/buy
execute if items block 17112022 0 0 container.0 #minecraft:logs run data modify block 17112022 0 0 Items[0].count set value 16
data modify entity @s Offers.Recipes[-1].buy set from block 17112022 0 0 Items[0]
#Продажи
loot replace block 17112022 0 0 container.0 loot entities:traders/buyer/sell
data modify entity @s Offers.Recipes[-1].sell set from block 17112022 0 0 Items[0]