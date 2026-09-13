#Заметка
tellraw @s {"translate":"dsb.events.add_new_note","color":"aqua"}

###Если один игрок поймал тригер, значит ВСЕМ нужно дать заметку
execute if entity @a[advancements={dsb:notes/tea=true}] run advancement grant @a only dsb:notes/tea

execute if entity @a[advancements={dsb:notes/wanderer_ring=true}] run advancement grant @a only dsb:notes/wanderer_ring

execute if entity @a[advancements={dsb:notes/mob_farm=true}] run advancement grant @a only dsb:notes/mob_farm
execute if entity @a[advancements={dsb:notes/cartography_2=true}] run advancement grant @a only dsb:notes/cartography_2

execute if entity @a[advancements={dsb:notes/flying_boat=true}] run advancement grant @a only dsb:notes/flying_boat
execute if entity @a[advancements={dsb:notes/cartography_1=true}] run advancement grant @a only dsb:notes/cartography_1
execute if entity @a[advancements={dsb:notes/copper_bulb=true}] run advancement grant @a only dsb:notes/copper_bulb

execute if entity @a[advancements={dsb:notes/go_to_nether=true}] run advancement grant @a only dsb:notes/go_to_nether

execute if entity @a[advancements={dsb:notes/void_key=true}] run advancement grant @a only dsb:notes/void_key
execute if entity @a[advancements={dsb:notes/waystone=true}] run advancement grant @a only dsb:notes/waystone

execute if entity @a[advancements={dsb:notes/desert_temple=true}] run advancement grant @a only dsb:notes/desert_temple

execute if entity @a[advancements={dsb:notes/find_eleum_lois=true}] run advancement grant @a only dsb:notes/find_eleum_lois

execute if entity @a[advancements={dsb:notes/end_portal=true}] run advancement grant @a only dsb:notes/end_portal

execute if entity @a[advancements={dsb:notes/ender_dragon=true}] run advancement grant @a only dsb:notes/ender_dragon