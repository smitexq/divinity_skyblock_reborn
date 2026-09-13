execute in gen:void_dimension run tp @s 0 500 0
effect give @s minecraft:slow_falling 1 1 true

$execute in gen:void_dimension run spawnpoint @s $(x) $(y) $(z)
$execute in gen:void_dimension run tp @s $(x) $(y) $(z)