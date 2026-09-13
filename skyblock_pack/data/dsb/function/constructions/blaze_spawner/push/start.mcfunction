advancement revoke @s only dsb:interactions/with_spawner_push

#Получае uuid и удаляем тег ЛКМ
execute as @e[type=minecraft:interaction,tag=initBlazeSpawner,nbt={attack:{}}] run function food:cauldron/action/get_uuid {nbt: "attack"}

#Если выполняется переплавка, то не проверяем
function dsb:constructions/blaze_spawner/target/set_stage with storage gu:main
execute if function dsb:constructions/blaze_spawner/target/get_stage run return 0

function dsb:constructions/blaze_spawner/push/on_storage with storage gu:main