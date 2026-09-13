setblock 17112022 0 0 light_blue_shulker_box

###Устанавливаем теги
#Позиция вейстоуна
$execute at $(out) summon marker run function dsb:constructions/waystone/target/get_pos
#Сам предмет
loot insert 17112022 0 0 loot dsb:items/link_crystal_linked
#uuid привязки
$data modify block 17112022 0 0 Items[0].components."minecraft:custom_data".link_uuid set value $(out)


playsound minecraft:block.respawn_anchor.charge ambient @s
particle minecraft:enchant ~ ~1 ~ 1.5 1 1.5 1 40
#Выдаем обычный кристалл
item modify entity @s weapon.mainhand food:remove_item
loot spawn ~ ~ ~ mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

setblock 17112022 0 0 air