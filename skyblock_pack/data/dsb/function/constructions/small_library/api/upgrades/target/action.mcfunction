advancement revoke @s only dsb:interactions/library_upgrade_target

###Получае uuid, удаляем тег ПКМ
execute as @e[type=minecraft:interaction,tag=UpgradeInLibrary,nbt={interaction:{}}] run function food:cauldron/action/get_uuid {nbt: "interaction"}

###Проверка предмета
execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{tag:"tomes"}] run function dsb:constructions/small_library/api/upgrades/target/on_item with storage gu:main