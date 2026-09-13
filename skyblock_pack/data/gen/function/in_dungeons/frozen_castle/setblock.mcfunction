item modify entity @s weapon.mainhand food:remove_item

$setblock ~ ~ ~ $(block)

#убиваем крест и взаимодействие
kill @e[type=text_display, tag=x_piece_of_picture, sort=nearest, limit=1]
kill @e[type=interaction, tag=this, sort=nearest, limit=1]


#кол-во вставленных фрагментов
scoreboard players add *count_pp gameplay 1

execute if score *count_pp gameplay matches 4 run function gen:in_dungeons/frozen_castle/activate_picture