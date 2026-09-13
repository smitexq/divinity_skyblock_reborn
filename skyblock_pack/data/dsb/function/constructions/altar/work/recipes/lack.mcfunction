execute if items entity @e[type=armor_stand, tag=AltarPodium, tag=middle, limit=1] weapon.mainhand minecraft:ender_pearl run return run title @s actionbar {"translate":"dsb.events.altar.lack_of_items","color":"gold", "with":[{"translate":"item.minecraft.ender_eye"}]}

execute if items entity @e[type=armor_stand, tag=AltarPodium, tag=middle, limit=1] weapon.mainhand minecraft:end_crystal run return run title @s actionbar {"translate":"dsb.events.altar.lack_of_items","color":"gold", "with":[{"translate":"dsb.recipes.rituals.base_end_frame"}]}

execute if items entity @e[type=armor_stand, tag=AltarPodium, tag=middle, limit=1] weapon.mainhand minecraft:structure_block[minecraft:custom_data={id:"base_end_frame"}] run return run title @s actionbar {"translate":"dsb.events.altar.lack_of_items","color":"gold", "with":[{"translate":"block.minecraft.end_portal_frame"}]}

execute if items entity @e[type=armor_stand, tag=AltarPodium, tag=middle, limit=1] weapon.mainhand minecraft:iron_ingot run return run title @s actionbar {"translate":"dsb.events.altar.lack_of_items","color":"gold", "with":[{"translate":"item.minecraft.netherite_ingot"}]}

execute if items entity @e[type=armor_stand, tag=AltarPodium, tag=middle, limit=1] weapon.mainhand minecraft:piston run return run title @s actionbar {"translate":"dsb.events.altar.lack_of_items","color":"gold", "with":[{"translate":"item.minecraft.diamond"}]}

execute if items entity @e[type=armor_stand, tag=AltarPodium, tag=middle, limit=1] weapon.mainhand #minecraft:saplings run return run title @s actionbar {"translate":"dsb.events.altar.lack_of_items","color":"gold", "with":[{"translate":"dsb.recipes.rituals.sapling"}]}

execute if items entity @e[type=armor_stand, tag=AltarPodium, tag=middle, limit=1] weapon.mainhand minecraft:shroomlight run return run title @s actionbar {"translate":"dsb.events.altar.lack_of_items","color":"gold", "with":[{"translate":"item.minecraft.totem_of_undying"}]}

# execute if items entity @e[type=armor_stand, tag=AltarPodium, tag=middle, limit=1] weapon.mainhand minecraft:book run return run title @s actionbar {"translate":"Для создания Стола зачарования не хватает предметов или есть лишние","color":"gold"}

execute if items entity @e[type=armor_stand, tag=AltarPodium, tag=middle, limit=1] weapon.mainhand minecraft:ender_eye run return run title @s actionbar {"translate":"dsb.events.altar.lack_of_items","color":"gold", "with":[{"translate":"block.minecraft.ender_chest"}]}

execute if items entity @e[type=armor_stand, tag=AltarPodium, tag=middle, limit=1] weapon.mainhand minecraft:totem_of_undying run return run title @s actionbar {"translate":"dsb.events.altar.lack_of_items","color":"gold", "with":[{"translate":"item.minecraft.elytra"}]}
