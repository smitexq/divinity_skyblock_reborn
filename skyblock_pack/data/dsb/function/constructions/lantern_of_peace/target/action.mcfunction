advancement revoke @s only dsb:interactions/with_lantern_target

###Получае uuid, удаляем тег ПКМ
execute as @e[type=minecraft:interaction,tag=initLanternOfPeace,nbt={interaction:{}}] run function food:cauldron/action/get_uuid {nbt: "interaction"}

###Проверка предмета
execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data={id:"rotten_remains"}] run function dsb:constructions/lantern_of_peace/work/add_rotten with storage gu:main