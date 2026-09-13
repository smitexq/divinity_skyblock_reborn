#Действия
scoreboard players set #stage CookingTea 0
$execute as $(out) if entity @s[tag=cooking, tag=!confirm] run return run scoreboard players set #stage CookingTea 1

###Сначала проверяем, что интеракт должен висеть тег завершения готовки. Если его нет, то не проверяем, иначе выполняет ф-ия относительно ИГРОКА
$execute as $(out) if entity @s[tag=!confirm] run return 0

scoreboard players set #stage CookingTea 2
function food:cauldron/cook/get_tea with storage gu:main