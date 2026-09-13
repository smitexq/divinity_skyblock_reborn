advancement revoke @s only gen:interaction_with_hub_ready
playsound minecraft:entity.experience_orb.pickup ambient @s[tag=!hub_ready]

# Удаляем nbt на взаимодействие
data remove entity @e[type=minecraft:interaction, tag=hub_ready_player, limit=1] attack
data remove entity @e[type=minecraft:interaction, tag=hub_ready_player, limit=1] interaction

# Взаимодействие
tag @s add hub_ready

function dc:gu/generate
data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function gen:on_load/hub_text/canceled"
function dc:clear_schedule with storage dsb:dc_remove temp

function dc:get_call {tick:200, command:"function gen:on_load/hub_text/canceled", requirePos:false, requireEntity:true}
#