advancement revoke @s only dsb:interactions/with_exchanger_target

###Получае uuid, удаляем тег ПКМ
execute as @e[type=minecraft:interaction,tag=NetherConverterExhangeRBC,nbt={interaction:{}}] run function food:cauldron/action/get_uuid {nbt: "interaction"}

#Подтверждение обмена
execute if entity @s[tag=ExchangerAcceptAction] run return run function dsb:constructions/nether_converter/action/api/get_info_about_page {"next_func": "dsb:constructions/nether_converter/action/accept"}

###Проверка предмета
#страницы зачароний
execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{tag:"enchant_pages"}] run return run function dsb:constructions/nether_converter/action/api/get_info_about_page {"next_func":"dsb:constructions/nether_converter/action/get_pages"}
#починка кольца Жертвенности
execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{SacrificialRing:1b, used:1b}] if function dsb:constructions/nether_converter/action/repair_ring/check run function dsb:constructions/nether_converter/action/repair_ring/get_items