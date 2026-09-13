###Если несколько ведер лежит, то ведро с водой выкидываем
execute store result score *var1 variables run data get block ~ ~ ~ Items[{Slot:13b}].count

execute if score *var1 variables matches 2.. run summon minecraft:item ~ ~1.2 ~ {Item:{id:"minecraft:water_bucket",count:1}}
execute if score *var1 variables matches 2.. run item modify block ~ ~ ~ container.13 food:remove_item

execute if score *var1 variables matches 1 run item replace block ~ ~ ~ container.13 with minecraft:water_bucket
###

#Очистка меню
function dsb:constructions/water_collector/work/remove

playsound minecraft:item.bucket.fill ambient @a ~ ~ ~ 1

#Шанс на высохшую листву 15%
execute store result score *var1 variables run random value 0..99 dsb:dry_leaves
execute if score *var1 variables matches 0..14 run setblock ~ ~2 ~ minecraft:mangrove_roots