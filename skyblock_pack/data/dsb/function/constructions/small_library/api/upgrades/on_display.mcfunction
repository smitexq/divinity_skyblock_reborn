$data merge entity @s {item:{id:"structure_void"}, Tags:["VizualUpgradeInLibrary"], Rotation:[$(angle).0f, 0.0f], transformation:{scale:[0.3f,0.3f,0.3f]}}
#тег-привязка к самой библиотеки
data modify entity @s Tags append from storage dsb:cts Libraries[-1].UUID

$execute positioned $(offset) positioned ~ ~-0.12 ~ summon minecraft:interaction run function dsb:constructions/small_library/api/upgrades/store_uuid
