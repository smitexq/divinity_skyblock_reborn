#Реагр босса
execute if entity @s[tag=!to_anger] run function entities:bosses/winter/abilities/swap_anger


#звук урона
playsound minecraft:entity.allay.hurt ambient @a ~ ~ ~ 0.5 2

#Процент хп
function entities:mobs/abilities/get_procent_health
function entities:bosses/winter/conditions/bossbar_visible

#2 фаза
# tellraw @a {"score":{"objective":"variables","name":"#hp"}}
execute if entity @s[tag=!2phase] if score #hp variables matches ..50 run return run function entities:bosses/winter/conditions/phase/to_2phase

#Шанс
execute store result score *var1 variables run random value 0..99 dsb:winter_queen_daze_chance

execute if score *var1 variables matches 0..4 as @a[distance=..30] at @s run return run function entities:mobs/abilities/losing_control/start
execute if score *var1 variables matches 5..6 as @a[distance=..30, sort=random, limit=2] at @s run return run function entities:mobs/abilities/daze/start
