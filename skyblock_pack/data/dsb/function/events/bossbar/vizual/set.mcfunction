$bossbar set dsb:$(id) visible true

$bossbar set dsb:$(id) color $(color)
$bossbar set dsb:$(id) max $(max)
$bossbar set dsb:$(id) value $(current)
$bossbar set dsb:$(id) name $(name)


#Удаляем тег мини босса на игроке
$function dc:get_call {tick:100, command:"bossbar set dsb:$(id) visible false", requirePos:false, requireEntity:true}
$function dc:get_call {tick:100, command:"tag @s remove $(bossUUID)", requirePos:false, requireEntity:true}


#У игроков, у которых есть еще тег мини босса, то их боссбар тоже нужно обновить
tag @s add this
$execute as @a[tag=$(bossUUID),tag=!this] run function dsb:events/bossbar/vizual/update
tag @s remove this