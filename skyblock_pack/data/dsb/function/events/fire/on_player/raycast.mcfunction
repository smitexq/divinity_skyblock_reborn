scoreboard players add #loop CreateFire 1
execute if score #loop CreateFire matches 80.. run return run tellraw @s {"translate":"dsb.events.create_fire.in_void","color":"red"}

#Если это блок в котором можно развести костер (например трава), то поджигаем
execute if block ~ ~ ~ #dsb:in_fire run return run function dsb:events/fire/on_player/success_fire {offset:0}
#Иначе это плотный и пытаемся над ним
execute unless block ~ ~ ~ #minecraft:air run return run function dsb:events/fire/on_player/success_fire {offset:1}

execute positioned ^ ^ ^0.1 run function dsb:events/fire/on_player/raycast