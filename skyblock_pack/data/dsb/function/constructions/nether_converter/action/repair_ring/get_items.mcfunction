###Подтверждение обмена
tag @s add ExchangerAcceptAction
tag @s add Exchange.SacrRing

function dc:get_call {tick:50, command:"tag @s remove ExchangerAcceptAction", requirePos:false, requireEntity:true}
function dc:get_call {tick:50, command:"tag @s remove Exchange.SacrRing", requirePos:false, requireEntity:true}
function dc:get_call {tick:50, command:"playsound minecraft:block.beacon.deactivate ambient @s", requirePos:false, requireEntity:true}

#вывод сообщения
title @s actionbar {"translate":"dsb.events.exchanger.accept_repair","color":"green"}