advancement revoke @s only dsb:interactions/with_altar_push

#Получае uuid и удаляем тег ЛКМ
execute as @e[type=minecraft:interaction,tag=initAltar,nbt={attack:{}}] run function food:cauldron/action/get_uuid {nbt: "attack"}

#Если выполняется риутал, то не проверяем
execute if function dsb:constructions/altar/target/get_stage run return 0

function dsb:constructions/altar/push/on_storage with storage gu:main