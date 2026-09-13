#Если сверху есть биом или в радиусе данж
execute if biome ~ 255 ~ minecraft:the_void run return 1
execute as @e[type=minecraft:marker, tag=middles] if predicate entities:dungeons/near run return 1

return fail