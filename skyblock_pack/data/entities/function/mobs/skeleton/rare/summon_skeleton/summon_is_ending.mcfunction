#Призыв мобов
$execute if entity @s[type=skeleton] as @e[type=minecraft:marker,tag=$(out)] at @s run summon minecraft:skeleton ~ ~ ~ {Tags:["entity"],attributes:[{Name:"minecraft:max_health",Base:12}],Health:12, HandItems:[{id:"minecraft:bow",count:1},{}]}

$execute if entity @s[type=bogged] as @e[type=minecraft:marker,tag=$(out)] at @s run summon minecraft:bogged ~ ~ ~ {Tags:["entity"],attributes:[{Name:"minecraft:max_health",Base:12}],Health:12, HandItems:[{id:"minecraft:bow",count:1},{}]}

$execute if entity @s[type=stray] as @e[type=minecraft:marker,tag=$(out)] at @s run summon minecraft:stray ~ ~ ~ {Tags:["entity"],attributes:[{Name:"minecraft:max_health",Base:12}],Health:12, HandItems:[{id:"minecraft:bow",count:1},{}]}



#Удаляем метки
$kill @e[type=minecraft:marker,tag=$(out)]

#Возвращаем интеллект мини-боссу
data modify entity @s Invulnerable set value 0
data modify entity @s NoAI set value 0