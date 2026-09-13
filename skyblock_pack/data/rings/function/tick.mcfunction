#Удаление стекла из рук
execute as @a if items entity @s weapon.mainhand gray_stained_glass_pane[minecraft:custom_data~{accessories_font:1b}] run item replace entity @s weapon.mainhand with minecraft:air
execute as @a if items entity @s weapon.offhand gray_stained_glass_pane[minecraft:custom_data~{accessories_font:1b}] run item replace entity @s weapon.offhand with minecraft:air

#Фукнция срабатывает только после возрождения, нужна в том случае, если стоит keepinventory или кольцо сохранения. Так как после смерти атрибуты стираются
execute as @a[scores={TimeSinceDeath=1}] run function food:tea/green/clear_effect
execute as @a[scores={TimeSinceDeath=1},tag=SaveInventory] run function rings:save_attributes