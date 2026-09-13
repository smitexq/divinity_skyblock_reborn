#Тег на подтверждение релинка
tag @s add AcceptReLink
function dc:get_call {tick:100, command:"tag @s remove AcceptReLink", requirePos:false, requireEntity:true}

$execute as $(PLuuid) run tellraw @s {"translate":"dsb.events.waystone.accept_link","color":"red"}
$execute as $(PLuuid) run playsound minecraft:entity.villager.no ambient @s