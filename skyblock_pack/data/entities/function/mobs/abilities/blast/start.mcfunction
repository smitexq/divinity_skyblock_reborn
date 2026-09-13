#Частицы перед взрывом...

#Высота моба, чтобы spreadplayers не высоко распределял
function entities:mobs/abilities/api/spreadplayers/store_height

#Разрушение блоков в двух случайных местах и в одном месте поджог
scoreboard players set *var1 variables 0
function entities:mobs/abilities/blast/on_marker