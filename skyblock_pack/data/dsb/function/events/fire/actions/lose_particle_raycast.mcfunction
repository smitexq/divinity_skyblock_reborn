scoreboard players add #loop CreateFire 1
execute if score #loop CreateFire matches 80.. run return run tellraw @s {"translate":"dsb.events.create_fire.in_void","color":"red"}

execute if block ~ ~ ~ #dsb:in_fire run return run function dsb:events/fire/on_player/fail
execute unless block ~ ~ ~ #minecraft:air run return run function dsb:events/fire/on_player/fail

execute positioned ^ ^ ^0.1 run function dsb:events/fire/actions/lose_particle_raycast