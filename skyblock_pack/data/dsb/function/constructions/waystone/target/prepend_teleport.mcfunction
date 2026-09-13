#Позиция телепорта
$data modify storage dsb:temp waystoneTp.x set from storage dsb:cts Waystones.$(link_uuid).Pos[0]
$data modify storage dsb:temp waystoneTp.y set from storage dsb:cts Waystones.$(link_uuid).Pos[1]
$data modify storage dsb:temp waystoneTp.z set from storage dsb:cts Waystones.$(link_uuid).Pos[2]
$data modify storage dsb:temp waystoneTp.dimension set from storage dsb:cts Waystones.$(link_uuid).dimension

#Звуки перед тп
function dc:get_call {tick:20, command:"particle minecraft:portal ~ ~1 ~ 0.3 0.3 0.3 1 50 force @a", requirePos:false, requireEntity:true}
playsound minecraft:block.portal.trigger ambient @s
#После тп
function dc:get_call {tick:80, command:"playsound minecraft:block.end_portal.spawn ambient @s ~ ~ ~ 0.6 2", requirePos:false, requireEntity:true}
function dc:get_call {tick:80, command:"particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 1 30 force @a", requirePos:false, requireEntity:true}

#шанс потратить эндер перл
function dsb:constructions/waystone/target/chance_to_lose_pearl

function dsb:constructions/waystone/target/teleport with storage dsb:temp waystoneTp