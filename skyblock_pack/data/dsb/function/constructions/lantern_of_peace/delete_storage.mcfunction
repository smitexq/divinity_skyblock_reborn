setblock 17112022 0 0 minecraft:light_blue_shulker_box

#Кол-во останков
$execute store result score *var1 variables run data get storage dsb:cts LanternOfPeace.$(out).itemCount

#Возвращаем предметы
execute if score *var1 variables matches 64.. run function dsb:constructions/lantern_of_peace/return_item {count:64}
execute if score *var1 variables matches 64.. run function dsb:constructions/lantern_of_peace/return_item {count:64}
#Если меньше стака
execute if score *var1 variables matches 1.. store result storage dsb:temp count int 1 run scoreboard players get *var1 variables
execute if score *var1 variables matches 1.. run function dsb:constructions/lantern_of_peace/return_item with storage dsb:temp


setblock 17112022 0 0 minecraft:air

#Удаляем хранилище сущности
$data remove storage dsb:cts LanternOfPeace.$(out)
#удаляем все отображения
$kill @e[type=#food:display,tag=$(out)]