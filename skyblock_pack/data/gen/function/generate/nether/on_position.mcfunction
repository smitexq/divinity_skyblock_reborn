#Прогрузка
$forceload add $(x) $(z)

$execute positioned $(x) $(y) $(z) positioned ~ ~-6 ~ run function gen:generate/nether/check_pos

$forceload remove $(x) $(z)