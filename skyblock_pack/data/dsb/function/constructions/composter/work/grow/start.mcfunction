###Проверка на соблюдение условий для работы
execute unless predicate dsb:constructions/composter/work run return run function dsb:constructions/composter/work/grow/stop
###

###Если в слоте 64 земли, то ничего не делаем
execute if items entity @s container.16 minecraft:dirt[count=64] run return run function dsb:constructions/composter/work/grow/stop

###Узнаем текущее кол-во очков
$execute store result score *var1 variables run data get storage dsb:cts Composter.$(out).CountFloraPoints
execute unless score *var1 variables matches 20.. run return run function dsb:constructions/composter/work/grow/stop

#переработка в землю
function dsb:constructions/composter/work/grow/init