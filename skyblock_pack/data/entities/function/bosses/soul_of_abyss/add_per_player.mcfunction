$attribute @s minecraft:max_health modifier add max$(num) 0.1 add_multiplied_total
$attribute @s minecraft:armor modifier add max$(num) 0.2 add_multiplied_total
$attribute @s minecraft:attack_damage modifier add max$(num) 0.1 add_multiplied_total

execute store result score *var1 variables store result storage dsb:temp num int 1 run scoreboard players remove *var1 variables 1
execute if score *var1 variables matches 2.. run function entities:bosses/soul_of_abyss/add_per_player with storage dsb:temp