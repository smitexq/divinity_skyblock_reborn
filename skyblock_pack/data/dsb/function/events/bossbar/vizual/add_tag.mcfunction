#Удаляем тег с uuid старого босса
$function dsb:events/bossbar/vizual/remove/delete_tag with storage dsb:bossbar SaveForPlayer.$(id)

#uuid возможно нового босса
$tag @s add $(bossUUID)

#Сохраняем uuid мини босса для этого игрока (чтобы потом, если босса убили, то боссбар очистился для всех)
$data modify storage dsb:bossbar SaveForPlayer.$(id).sourceBoss set value $(bossUUID)