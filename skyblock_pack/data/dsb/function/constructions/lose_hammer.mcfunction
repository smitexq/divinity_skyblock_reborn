playsound minecraft:item.shield.break ambient @a[distance=..7]
particle minecraft:crit ~ ~0.3 ~ 0.2 0.2 0.2 0.5 15

tellraw @s {"translate":"dsb.events.failed_to_create_construction","color":"red"}


#достижение
scoreboard players add @s dsb.adv.lose_hammer 1
execute if score @s dsb.adv.lose_hammer matches 3.. run advancement grant @s only dsb:skyblock/constructions/stupid

return fail