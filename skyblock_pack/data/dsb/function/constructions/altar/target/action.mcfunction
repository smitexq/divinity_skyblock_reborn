advancement revoke @s only dsb:interactions/with_altar_target

###Получае uuid, удаляем тег ПКМ
execute as @e[type=minecraft:interaction,tag=initAltar,nbt={interaction:{}}] run function food:cauldron/action/get_uuid {nbt: "interaction"}

#Если риутал работает, то ничего не делаем
execute if function dsb:constructions/altar/target/get_stage run return 0

###Проверка предмета
execute if items entity @s weapon.mainhand minecraft:chain_command_block[minecraft:custom_data={id:"soul"}] run function dsb:constructions/altar/target/add_soul with storage gu:main
execute if items entity @s weapon.mainhand minecraft:flint_and_steel run function dsb:constructions/altar/target/init_work with storage gu:main