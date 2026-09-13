#Перед запуском проверяется, что нет этого тега
tag @s add StartRedZone

###спавним точки
execute store result score *var1 variables run random value 0..1 dsb:soul_of_abyss_points
execute if score *var1 variables matches 0 run function entities:bosses/soul_of_abyss/abilities/red_zone/spawn_shadow {pos1:"~7 ~ ~7", rot1:"90f,0f", pos2:"~-7 ~ ~-7", rot2:"0f,0f"}
execute if score *var1 variables matches 1 run function entities:bosses/soul_of_abyss/abilities/red_zone/spawn_shadow {pos1:"~-7 ~ ~7", rot1:"-90f,0f", pos2:"~7 ~ ~-7", rot2:"0f,0f"}
###

#Выбор игрока
function entities:bosses/soul_of_abyss/abilities/red_zone/select_player/init


#Чередование преследования и урона
function entities:bosses/soul_of_abyss/abilities/red_zone/states/stalking
function dc:get_call {tick:100, command:"function entities:bosses/soul_of_abyss/abilities/red_zone/states/particle", requirePos:false, requireEntity:true}
function dc:get_call {tick:300, command:"function entities:bosses/soul_of_abyss/abilities/red_zone/states/stalking", requirePos:false, requireEntity:true}
function dc:get_call {tick:450, command:"function entities:bosses/soul_of_abyss/abilities/red_zone/states/particle", requirePos:false, requireEntity:true}
function dc:get_call {tick:700, command:"function entities:bosses/soul_of_abyss/abilities/red_zone/states/stalking", requirePos:false, requireEntity:true}
function dc:get_call {tick:750, command:"function entities:bosses/soul_of_abyss/abilities/red_zone/states/particle", requirePos:false, requireEntity:true}

function dc:get_call {tick:1300, command:"kill @e[type=armor_stand, tag=SoulOfAbyssShadow]", requirePos:false, requireEntity:true}
#Кд способки
function dc:get_call {tick:1500, command:"tag @s remove StartRedZone", requirePos:false, requireEntity:true}



#-327 -306 ~21