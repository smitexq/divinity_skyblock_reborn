advancement revoke @s only dsb:events/ride_flying_boat
#Если в инвентаре нет топлива, то скидываем игрока с лодки
execute unless function dsb:constructions/flying_boat/exist_fuel run return run function dsb:constructions/flying_boat/no_fuel

#Если есть, то добавляем тег лодке
function dc:gu/generate
execute positioned as @s positioned ~ ~-0.5 ~ as @e[type=#minecraft:boat, tag=flying_boat, sort=nearest, limit=1] run function dsb:constructions/flying_boat/on_boat/init with storage gu:main

#Забираем топливо постепенно
function dc:gu/generate
function dsb:constructions/flying_boat/on_player with storage gu:main