advancement revoke @s only dsb:interactions/with_cauldron_target

###Получае uuid, удаляем тег ПКМ
execute as @e[type=minecraft:interaction,tag=initCauldron,nbt={interaction:{}}] run function food:cauldron/action/get_uuid {nbt: "interaction"}

#Если выполняется переплавка, то не проверяем
function dsb:constructions/cauldron/target/set_stage with storage gu:main
execute if function dsb:constructions/cauldron/target/get_stage run return 0

###Проверка предмета
execute if items entity @s weapon.mainhand #food:buckets run return run function dsb:constructions/cauldron/target/fill_water with storage gu:main
execute if items entity @s weapon.mainhand minecraft:flint_and_steel run return run function dsb:constructions/cauldron/target/init_work with storage gu:main
execute if items entity @s weapon.mainhand minecraft:cobblestone run function dsb:constructions/cauldron/work/add_stone with storage gu:main