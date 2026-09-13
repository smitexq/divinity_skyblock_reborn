#Прогрузка
$forceload add $(x) $(z)

$execute positioned $(x) $(y) $(z) store success score #result gen run function gen:islands/gen with storage dsb_gen:values

$forceload remove $(x) $(z)