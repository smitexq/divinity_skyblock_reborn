#Счетчик количества маркеров
scoreboard players add @s use.ignite 1
#В зависимости от номера маркера выставляем ему нужное направление взгляда
execute if score @s use.ignite matches 1 run summon marker ~ ~ ~ {Tags:["ignite"],Rotation:[0.0f,0.0f]}
execute if score @s use.ignite matches 2 run summon marker ~ ~ ~ {Tags:["ignite"],Rotation:[90.0f,0.0f]}
execute if score @s use.ignite matches 3 run summon marker ~ ~ ~ {Tags:["ignite"],Rotation:[-90.0f,0.0f]}
execute if score @s use.ignite matches 4 run summon marker ~ ~ ~ {Tags:["ignite"],Rotation:[180.0f,0.0f]}

execute if score @s use.ignite matches ..3 run function entities:mobs/abilities/ignite/summon_markers