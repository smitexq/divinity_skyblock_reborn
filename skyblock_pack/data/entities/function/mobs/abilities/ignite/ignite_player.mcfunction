#Спавним над игроком fireball, который и подожжет игрока
summon minecraft:small_fireball ~ ~3 ~ {Motion:[0.0d,-10.0d,0.0d]}
#Добавляем на игрока тег, чтобы он не поджегся еще раз
tag @s add is_ignite

#Через 2 секунды уберем тег
function dc:get_call {tick:40, command:"tag @s remove is_ignite", requirePos:false, requireEntity:true}