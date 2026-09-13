advancement revoke @s only dsb:interactions/with_lantern_push

#Получае uuid и удаляем тег ЛКМ
execute as @e[type=minecraft:interaction,tag=initLanternOfPeace,nbt={attack:{}}] run function food:cauldron/action/get_uuid {nbt: "attack"}

function dsb:constructions/lantern_of_peace/push/on_storage with storage gu:main