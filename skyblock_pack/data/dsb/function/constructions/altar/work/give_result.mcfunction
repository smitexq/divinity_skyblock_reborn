execute if score #ender_eye Altar matches 1.. run return run function dsb:constructions/altar/work/take_ai_and_souls {item:"ender_eye", souls:1}

execute if score #base_end_frame Altar matches 1.. run return run function dsb:constructions/altar/work/take_ai_and_souls {item:"structure_block[minecraft:custom_data={id:\"base_end_frame\"}, minecraft:custom_model_data=1, minecraft:custom_name='{\"translate\":\"dsb.recipes.rituals.base_end_frame\", \"italic\":false}', minecraft:rarity=uncommon]", souls:1}

execute if score #end_frame Altar matches 1.. run return run function dsb:constructions/altar/work/take_ai_and_souls {item:"end_portal_frame", souls:3}

execute if score #netherite_ingot Altar matches 1.. run return run function dsb:constructions/altar/work/take_ai_and_souls_func {souls:8, cmd:"function dsb:constructions/altar/work/recipes/netherite_ingot"}

execute if score #diamond Altar matches 1.. run return run function dsb:constructions/altar/work/take_ai_and_souls {item:"diamond", souls:1}

execute if score #saplings Altar matches 1.. run return run function dsb:constructions/altar/work/take_ai_and_souls_func {souls:0, cmd:"loot replace entity @s weapon.mainhand loot dsb:recipes/altar_saplings"}

execute if score #totem Altar matches 1.. run return run function dsb:constructions/altar/work/take_ai_and_souls {item:"totem_of_undying", souls:3}

execute if score #ender_chest Altar matches 1.. run function dsb:constructions/altar/work/take_ai_and_souls {item:"ender_chest", souls:10}

execute if score #elytra Altar matches 1.. run function dsb:constructions/altar/work/take_ai_and_souls {item:"elytra", souls:30}