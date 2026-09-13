# Заметка
tellraw @s {"translate":"dsb.events.add_new_note.recipe","color":"green"}

### Если один игрок поймал тригер, значит ВСЕМ нужно дать заметку
execute if entity @a[advancements={dsb:notes/recipes/cauldron=true}] run advancement grant @a only dsb:notes/recipes/cauldron

execute if entity @a[advancements={dsb:notes/recipes/advanced_gui=true}] run advancement grant @a only dsb:notes/recipes/advanced_gui

execute if entity @a[advancements={dsb:notes/recipes/altar=true}] run advancement grant @a only dsb:notes/recipes/altar

execute if entity @a[advancements={dsb:notes/recipes/ancient_sun_ring=true}] run advancement grant @a only dsb:notes/recipes/ancient_sun_ring

execute if entity @a[advancements={dsb:notes/recipes/base_end_frame=true}] run advancement grant @a only dsb:notes/recipes/base_end_frame

execute if entity @a[advancements={dsb:notes/recipes/exchanger=true}] run advancement grant @a only dsb:notes/recipes/exchanger

execute if entity @a[advancements={dsb:notes/recipes/fuel=true}] run advancement grant @a only dsb:notes/recipes/fuel

execute if entity @a[advancements={dsb:notes/recipes/lantern=true}] run advancement grant @a only dsb:notes/recipes/lantern

execute if entity @a[advancements={dsb:notes/recipes/lighting_charge=true}] run advancement grant @a only dsb:notes/recipes/lighting_charge

execute if entity @a[advancements={dsb:notes/recipes/lumberjack_axe=true}] run advancement grant @a only dsb:notes/recipes/lumberjack_axe

execute if entity @a[advancements={dsb:notes/recipes/scythe_of_souls=true}] run advancement grant @a only dsb:notes/recipes/scythe_of_souls

execute if entity @a[advancements={dsb:notes/recipes/small_library=true}] run advancement grant @a only dsb:notes/recipes/small_library