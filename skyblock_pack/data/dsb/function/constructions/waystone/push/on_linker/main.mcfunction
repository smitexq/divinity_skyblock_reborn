#Проверяем не связаны ли они уже
$execute if data storage dsb:cts Waystones.$(this_uuid){link_uuid:$(uuid_link)} run return run title @s actionbar {"translate":"dsb.events.waystone.exist_link","color":"red"}

#Проверяется есть ли на этом вейстоуне тег подтверждения линка И ОЧИЩАЕМ ВСЕ зависимости у обоих вейстоунов
$execute as $(this_uuid) if entity @s[tag=AcceptReLink] run return run function dsb:constructions/waystone/push/on_linker/relink with storage dsb:temp waystone

#Если один из вейстоунов уже имеет связь, то выдается предупреждение и добавляется тег, чтобы подтвердить связь и очистить старую (функция выше). Тег удаляется через 5 секунд
$execute if data storage dsb:cts Waystones.$(this_uuid){link:true} as $(this_uuid) run return run function dsb:constructions/waystone/push/on_linker/exist_link with storage dsb:temp waystone
$execute if data storage dsb:cts Waystones.$(uuid_link){link:true} as $(this_uuid) run return run function dsb:constructions/waystone/push/on_linker/exist_link with storage dsb:temp waystone


function dsb:constructions/waystone/push/on_linker/add_link with storage dsb:temp waystone