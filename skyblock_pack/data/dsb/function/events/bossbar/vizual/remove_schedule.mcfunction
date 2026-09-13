data modify storage dsb:dc_remove temp.UUID set from storage dsb:bossbar Init.id

$data modify storage dsb:dc_remove temp.command set value "bossbar set dsb:$(id) visible false"
function dc:clear_schedule with storage dsb:dc_remove temp

$data modify storage dsb:dc_remove temp.command set value "tag @s remove $(bossUUID)"
function dc:clear_schedule with storage dsb:dc_remove temp