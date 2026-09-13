#Возвращение душ
setblock 17112022 0 0 minecraft:light_blue_shulker_box{Items:[{Slot:0b, id:"minecraft:structure_block", count:1, components:{"minecraft:item_model": "dsb:fire_soul", "minecraft:custom_data": "{id:\"fire_soul\"}", "minecraft:enchantment_glint_override": true, "minecraft:custom_name": "{\"translate\":\"dsb.items.fire_soul\",\"color\":\"white\",\"italic\":false}"}}]}

#Устанавливаем души из хранилище (если там не 0)
$data modify block 17112022 0 0 Items[0].count set from storage dsb:cts BlazeSpawner.$(out).itemCount
$execute unless data storage dsb:cts BlazeSpawner.$(out){itemCount:0} run loot spawn ~ ~ ~ mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

setblock 17112022 0 0 minecraft:air


$data remove storage dsb:cts BlazeSpawner.$(out)

#Все барьеры
$kill @e[type=interaction, tag=block, tag=$(out)]
#удаляем все отображения
$kill @e[type=#food:display,tag=$(out)]