advancement revoke @s only gen:interaction_with_picture

#Помечаем взаимодействие
tag @e[type=minecraft:interaction, tag=piece_of_picture, nbt={interaction:{}}] add this

#черный кусочек картины
execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{id:"BlackPieceOfPicture"}] at @e[type=minecraft:interaction, tag=this, tag=black] run function gen:in_dungeons/frozen_castle/setblock {block: "black_concrete"}
#голубой кусочек картины
execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{id:"BluePieceOfPicture"}] at @e[type=minecraft:interaction, tag=this, tag=light_blue] run function gen:in_dungeons/frozen_castle/setblock {block: "light_blue_concrete"}
#белый кусочек картины
execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{id:"WhitePieceOfPicture"}] at @e[type=minecraft:interaction, tag=this, tag=white] run function gen:in_dungeons/frozen_castle/setblock {block: "white_concrete"}


###удаляем ДЕЙСТВИЕ
execute as @e[type=minecraft:interaction, tag=this] run function food:cauldron/action/get_uuid {nbt: "interaction"}
tag @e[type=interaction] remove this