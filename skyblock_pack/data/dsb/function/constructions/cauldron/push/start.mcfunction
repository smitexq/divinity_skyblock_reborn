advancement revoke @s only dsb:interactions/with_cauldron_push

#Получае uuid и удаляем тег ЛКМ
execute as @e[type=minecraft:interaction,tag=initCauldron,nbt={attack:{}}] run function food:cauldron/action/get_uuid {nbt: "attack"}

#Если выполняется переплавка, то не проверяем
function dsb:constructions/cauldron/target/set_stage with storage gu:main
execute if function dsb:constructions/cauldron/target/get_stage run return 0

function dsb:constructions/cauldron/push/on_storage with storage gu:main