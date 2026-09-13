#Призыв мобов
###Зомби
$execute if entity @s[type=zombie] as @e[type=minecraft:marker,tag=$(out),tag=baby] at @s run summon minecraft:zombie ~ ~ ~ {IsBaby:1b,Tags:["entity"],attributes:[{Name:"minecraft:max_health",Base:10}],Health:10}

$execute if entity @s[type=zombie] as @e[type=minecraft:marker,tag=$(out),tag=!baby] at @s run summon minecraft:zombie ~ ~ ~ {IsBaby:0b,Tags:["entity"],attributes:[{Name:"minecraft:max_health",Base:16}],Health:16}

###husk
$execute if entity @s[type=husk] as @e[type=minecraft:marker,tag=$(out),tag=baby] at @s run summon minecraft:husk ~ ~ ~ {IsBaby:1b,Tags:["entity"],attributes:[{Name:"minecraft:max_health",Base:10}],Health:10}

$execute if entity @s[type=husk] as @e[type=minecraft:marker,tag=$(out),tag=!baby] at @s run summon minecraft:husk ~ ~ ~ {IsBaby:0b,Tags:["entity"],attributes:[{Name:"minecraft:max_health",Base:16}],Health:16}

###drowned
$execute if entity @s[type=drowned] as @e[type=minecraft:marker,tag=$(out),tag=baby] at @s run summon minecraft:drowned ~ ~ ~ {IsBaby:1b,Tags:["entity"],attributes:[{Name:"minecraft:max_health",Base:10}],Health:10}

$execute if entity @s[type=drowned] as @e[type=minecraft:marker,tag=$(out),tag=!baby] at @s run summon minecraft:drowned ~ ~ ~ {IsBaby:0b,Tags:["entity"],attributes:[{Name:"minecraft:max_health",Base:16}],Health:16}

#Удаляем метки
$kill @e[type=minecraft:marker,tag=$(out)]

#Возвращаем интеллект мини-боссу
data modify entity @s Invulnerable set value 0
data modify entity @s NoAI set value 0