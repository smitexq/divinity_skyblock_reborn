#Возвращение душ. Используем 2 шалкера, т.к. один шалкер с таблицей лута не сгенерирован и Items пустой. Команда "loot... mine" генерирует этот лут
setblock 17112022 1 0 minecraft:light_blue_shulker_box{LootTable:"dsb:items/fire_soul"}
setblock 17112022 0 0 minecraft:light_blue_shulker_box
loot insert 17112022 0 0 mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

#Устанавливаем души из хранилище (если там не 0)
$data modify block 17112022 0 0 Items[0].count set from storage dsb:cts BlazeSpawner.$(out).itemCount
$execute unless data storage dsb:cts BlazeSpawner.$(out){itemCount:0} run loot spawn ~ ~ ~ mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

setblock 17112022 0 0 minecraft:air
setblock 17112022 1 0 minecraft:air


$data remove storage dsb:cts BlazeSpawner.$(out)

#Все барьеры
$kill @e[type=interaction, tag=block, tag=$(out)]
#удаляем все отображения
$kill @e[type=#food:display,tag=$(out)]