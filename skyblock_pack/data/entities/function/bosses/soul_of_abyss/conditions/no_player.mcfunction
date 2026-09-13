# kill @e[type=marker, tag=SoulOfAbyssArenaMiddle]
tp @e[type=piglin_brute, tag=SoulOfAbyss] ~ ~-1000 ~
bossbar set dsb:boss.soul_of_abyss visible false

function entities:bosses/soul_of_abyss/remove_tasks

tellraw @a {"translate":"dsb.events.bosses.no_players","color":"red"}