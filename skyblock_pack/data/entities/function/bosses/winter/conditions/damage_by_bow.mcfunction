advancement revoke @s only entities:player_hurt_entity/bosses/winter_queen_bow

#шанс слепоты и урона
execute store result score *var1 variables run random value 0..9 dsb:winter_queen_damaged
execute unless score *var1 variables matches 0..7 run return fail

effect give @s minecraft:blindness 6
damage @s 5 minecraft:starve
playsound minecraft:enchant.thorns.hit ambient @s