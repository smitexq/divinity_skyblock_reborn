advancement revoke @s only dsb:test

scoreboard players reset @s use.bow


# tag @s add this
# execute as @e[type=minecraft:arrow, distance=..8] if function dsb:test2 run tag @s add this_arrow
# tag @s remove this

# execute as @e[type=minecraft:arrow, tag=this_arrow] at @s run function dsb:arrow