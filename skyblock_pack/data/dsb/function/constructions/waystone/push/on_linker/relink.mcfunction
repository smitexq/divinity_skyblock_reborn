tag @s remove AcceptReLink

#Мы подтвердили, что ходим поменять связь. Берем link_uuid и, по этому uuid в storage Waystones.$(link_uuid) очищаем поле link uuid и link ставим false

$data modify storage dsb:temp waystoneLink.source set from storage dsb:cts Waystones.$(this_uuid).link_uuid
function dsb:constructions/waystone/push/on_linker/remove_old_link with storage dsb:temp waystoneLink
#И с другим то же самое
$data modify storage dsb:temp waystoneLink.source set from storage dsb:cts Waystones.$(uuid_link).link_uuid
function dsb:constructions/waystone/push/on_linker/remove_old_link with storage dsb:temp waystoneLink
data modify storage dsb:temp waystoneLink set value {}

#Установить связь
function dsb:constructions/waystone/push/on_linker/add_link with storage dsb:temp waystone