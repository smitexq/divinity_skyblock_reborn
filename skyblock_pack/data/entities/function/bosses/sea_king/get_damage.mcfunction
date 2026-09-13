#Реагр босса
execute if entity @s[tag=!to_anger] run function entities:bosses/sea_king/abilities/swap_anger

#Процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}
function entities:bosses/sea_king/conditions/bossbar_visible

execute if entity @s[tag=!2phase] if score #hp variables matches ..50 run return run function entities:bosses/sea_king/2phase

execute store result score *var1 variables run random value 0..9 dsb:drowned_king_abilities
execute if score *var1 variables matches 0..1 run function entities:mobs/abilities/powerful_jump/start


execute store result score *var1 variables run random value 0..99 dsb:drowned_king_abilities
execute if score *var1 variables matches 0..4 as @a[distance=..25] run return run function entities:mobs/abilities/daze/start
execute if score *var1 variables matches 5..12 as @a[distance=..25] run return run function entities:mobs/abilities/losing_control/start
