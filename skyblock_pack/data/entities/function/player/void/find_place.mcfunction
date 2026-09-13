#Ищем максимальное по высоте место
spreadplayers ~ ~ 1 15 false @s

#Если нашлось место
execute at @s unless predicate entities:in_void run return run function entities:player/void/spawn
#Если не нашлось, то просто спавним где-то сверху
execute positioned ~ 40 ~ run function entities:player/void/loop