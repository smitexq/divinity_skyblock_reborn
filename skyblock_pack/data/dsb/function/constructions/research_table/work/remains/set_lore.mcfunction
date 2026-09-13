#Текстура
execute if items block ~ ~ ~ container.10 minecraft:structure_block[minecraft:item_model="dsb:recipes/build_recipe"] run data modify block 17112022 0 0 Items[0].components."minecraft:item_model" set value "dsb:recipes/build_research"

execute if items block ~ ~ ~ container.10 minecraft:structure_block[minecraft:item_model="dsb:recipes/craft_recipe"] run data modify block 17112022 0 0 Items[0].components."minecraft:item_model" set value "dsb:recipes/craft_research"

execute if items block ~ ~ ~ container.10 minecraft:structure_block[minecraft:item_model="dsb:recipes/ritual_recipe"] run data modify block 17112022 0 0 Items[0].components."minecraft:item_model" set value "dsb:recipes/ritual_research"


#Интеллект для изучения
data modify block 17112022 0 0 Items[0].components."minecraft:lore"[1] set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"[3]


###ПКМ чтобы изучить
execute if items block ~ ~ ~ container.10 minecraft:structure_block[minecraft:item_model="dsb:recipes/build_recipe"] run return run data modify block 17112022 0 0 Items[0].components."minecraft:lore"[-1] set value "{'translate':'dsb.events.r_t.click_rbc','color':'aqua','italic':false}"

execute if items block ~ ~ ~ container.10 minecraft:structure_block[minecraft:item_model="dsb:recipes/craft_recipe"] run return run data modify block 17112022 0 0 Items[0].components."minecraft:lore"[-1] set value "{'translate':'dsb.events.r_t.click_rbc','color':'green','italic':false}"

execute if items block ~ ~ ~ container.10 minecraft:structure_block[minecraft:item_model="dsb:recipes/ritual_recipe"] run return run data modify block 17112022 0 0 Items[0].components."minecraft:lore"[-1] set value "{'translate':'dsb.events.r_t.click_rbc','color':'yellow','italic':false}"