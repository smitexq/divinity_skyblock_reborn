#хп
execute store result storage dsb:bossbar Init.max int 1 run attribute @s minecraft:max_health base get 10
execute store result storage dsb:bossbar Init.current int 1 run data get entity @s Health 10

#цвет
execute if entity @s[tag=uncommon] run data modify storage dsb:bossbar Init.color set value "green"
execute if entity @s[tag=rare] run data modify storage dsb:bossbar Init.color set value "yellow"
execute if entity @s[tag=mystic] run data modify storage dsb:bossbar Init.color set value "red"
#название
data modify storage dsb:bossbar Init.name set from entity @s CustomName