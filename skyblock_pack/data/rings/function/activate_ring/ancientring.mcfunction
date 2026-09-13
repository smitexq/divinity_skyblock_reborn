advancement revoke @s only entities:entity_hurt_player

#Шанс 30% что атакующему нанесется урон (взрыв от кольцо Древнего Солнца)
execute store result score *var1 variables run random value 0..9 dsb:ancient_sun_ring
execute if score *var1 variables matches 0..2 on attacker run function rings:activate_ring/explosion
execute if score *var1 variables matches 0..2 run effect give @s minecraft:absorption 6 0