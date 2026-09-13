# для достижения
scoreboard players operation #count dsb.adv.true_compost = *var1 variables

#Берем текущее кол-во очков в компостере
$execute store result score *var2 variables run data get storage dsb:cts Composter.$(uuid).CountFloraPoints

#Умножение кол-во на скаляр
$scoreboard players set *var3 variables $(multiply)
scoreboard players operation *var1 variables *= *var3 variables


### Достижение на лучший компост
execute if score *var3 variables matches 6 run scoreboard players operation *adv dsb.adv.true_compost += #count dsb.adv.true_compost
execute if score *adv dsb.adv.true_compost matches 64.. run advancement grant @a only dsb:skyblock/constructions/true_compost
###

#Записываем обратно новое кол-во очков
$execute store result storage dsb:cts Composter.$(uuid).CountFloraPoints int 1 run scoreboard players operation *var2 variables += *var1 variables

#Убираем предмет из слота
$item replace entity @s container.$(slot) with minecraft:air