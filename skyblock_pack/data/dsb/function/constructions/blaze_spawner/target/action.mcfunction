advancement revoke @s only dsb:interactions/with_spawner_target

###Получае uuid, удаляем тег ПКМ
execute as @e[type=minecraft:interaction,tag=initBlazeSpawner,nbt={interaction:{}}] run function food:cauldron/action/get_uuid {nbt: "interaction"}

#Если спавнер работает, то ничего не делаем
function dsb:constructions/blaze_spawner/target/set_stage with storage gu:main
execute if function dsb:constructions/blaze_spawner/target/get_stage run return 0

###Проверка предмета
execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data={id:"fire_soul"}] run function dsb:constructions/blaze_spawner/work/add_soul with storage gu:main
execute if items entity @s weapon.mainhand minecraft:flint_and_steel run function dsb:constructions/blaze_spawner/target/init_work with storage gu:main