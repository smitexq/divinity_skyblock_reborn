#Красный крест
execute align xyz run summon minecraft:text_display ~0.5 ~0.3 ~0.5 {Tags:["x_piece_of_picture"], text:'{"text":"x", "color":"red"}', billboard:center, transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[2.0,2.0,2.0]}}

$execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {Tags:["piece_of_picture", "$(tag)"]}

setblock ~ ~ ~ air