advancement revoke @s only dsb:interactions/library_upgrade_push

#Получае uuid и удаляем тег ЛКМ
execute as @e[type=minecraft:interaction,tag=UpgradeInLibrary,nbt={attack:{}}] run function food:cauldron/action/get_uuid {nbt: "attack"}

#
function dsb:constructions/small_library/api/upgrades/push/on_item with storage gu:main