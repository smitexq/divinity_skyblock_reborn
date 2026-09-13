advancement revoke @s only food:interaction_hurt
#Получае uuid и удаляем тег ЛКМ
execute as @e[type=minecraft:interaction,tag=CauldronTea,nbt={attack:{}}] run function food:cauldron/action/get_uuid {nbt: "attack"}

#Если выполняется готовка, то не проверяем
function food:cauldron/hurt/set_stage with storage gu:main
execute if function food:cauldron/action/get_stage run return 0

function food:cauldron/hurt/on_storage with storage gu:main
tag @e[type=minecraft:interaction,tag=CauldronTea,tag=UpdateVizual] remove UpdateVizual