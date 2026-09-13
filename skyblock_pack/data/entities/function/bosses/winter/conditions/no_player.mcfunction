tp @e[type=stray, tag=WinterBoss] ~ ~-1000 ~
function dc:get_call {tick:1, command:"kill @e[type=stray, tag=WinterBoss]", requirePos:true, requireEntity:false}
bossbar set dsb:boss.winter visible false

function entities:bosses/winter/conditions/remove_tasks
scoreboard players set *summon WinterQueen 0
scoreboard players set *prepare_to_teleport gameplay 0

tellraw @a {"translate":"dsb.events.bosses.no_players","color":"red"}