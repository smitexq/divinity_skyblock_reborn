function dc:get_call {tick:10, command:"advancement revoke @s only entities:events/use/exploration_map", requirePos:false, requireEntity:true}

playsound minecraft:entity.experience_orb.pickup ambient @s
###Тип карты
execute if items entity @s weapon.* minecraft:filled_map[minecraft:custom_data~{tag:"sea_king"}] run loot spawn ~ ~ ~ loot entities:traders/cartography/get_coords_sea_king
execute if items entity @s weapon.* minecraft:filled_map[minecraft:custom_data~{tag:"old_island"}] run loot spawn ~ ~ ~ loot entities:traders/cartography/get_coords_old_island
execute if items entity @s weapon.* minecraft:filled_map[minecraft:custom_data~{tag:"fortress"}] run loot spawn ~ ~ ~ loot entities:traders/cartography/get_coords_fortress
execute if items entity @s weapon.* minecraft:filled_map[minecraft:custom_data~{tag:"desert_library"}] run loot spawn ~ ~ ~ loot entities:traders/cartography/get_coords_desert_library
execute if items entity @s weapon.* minecraft:filled_map[minecraft:custom_data~{tag:"frozen_castle"}] run loot spawn ~ ~ ~ loot entities:traders/cartography/get_coords_frozen_castle
###


#Убираем предмет
execute if items entity @s weapon.mainhand minecraft:filled_map[minecraft:custom_data~{id:"exploration_map"}] run return run item modify entity @s weapon.mainhand food:remove_item
execute if items entity @s weapon.offhand minecraft:filled_map[minecraft:custom_data~{id:"exploration_map"}] run return run item modify entity @s weapon.offhand food:remove_item