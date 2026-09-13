$execute store result score #expected CreateFire run data get storage dsb:cts Fire.$(uuid).act.bit$(id)

#Если есть тег таргета, но нет атаки то это ПКМ, иначе это ЛКМ, иначе это ничего
$execute if entity @e[type=interaction, tag=$(uuid), tag=target, tag=!attack] run return run scoreboard players set #real CreateFire 1
$execute if entity @e[type=interaction, tag=$(uuid), tag=attack, tag=!target] run return run scoreboard players set #real CreateFire -1
scoreboard players set #real CreateFire 0