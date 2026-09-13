#не хватает опыта
$execute unless score #levels variables matches $(1lvl).. run return run title @s actionbar {"translate":"dsb.events.exchanger_pages_fail_xp","color":"red","with":["$(1lvl)"]}

###Подтверждение обмена
tag @s add ExchangerAcceptAction
function dc:get_call {tick:50, command:"tag @s remove ExchangerAcceptAction", requirePos:false, requireEntity:true}
function dc:get_call {tick:50, command:"playsound minecraft:block.beacon.deactivate ambient @s", requirePos:false, requireEntity:true}
###

##Запись в хранилище
function dc:gu/generate

$data modify storage dsb:cts Exchanger.temp set value {ench: "$(ench)"}
function dsb:constructions/nether_converter/action/storage/new_record with storage gu:main

#удаление через время
function dc:get_call {tick:50, command:"function dsb:constructions/nether_converter/action/storage/remove_record", requirePos:false, requireEntity:true}
##

#Сообщение
$execute if score #levels variables matches $(5lvl).. run return run title @s actionbar {"translate":"dsb.events.exchanger.accept_exchange","color":"green","with":[{"translate":"enchantment.minecraft.$(ench)"},"V"]}

$execute if score #levels variables matches $(4lvl).. run return run title @s actionbar {"translate":"dsb.events.exchanger.accept_exchange","color":"green","with":[{"translate":"enchantment.minecraft.$(ench)"},"IV"]}

$execute if score #levels variables matches $(3lvl).. run return run title @s actionbar {"translate":"dsb.events.exchanger.accept_exchange","color":"green","with":[{"translate":"enchantment.minecraft.$(ench)"},"III"]}

$execute if score #levels variables matches $(2lvl).. run return run title @s actionbar {"translate":"dsb.events.exchanger.accept_exchange","color":"green","with":[{"translate":"enchantment.minecraft.$(ench)"},"II"]}

$execute if score #levels variables matches $(1lvl).. run return run title @s actionbar {"translate":"dsb.events.exchanger.accept_exchange","color":"green","with":[{"translate":"enchantment.minecraft.$(ench)"},"I"]}