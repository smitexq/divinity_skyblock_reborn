execute as @a[predicate=food:sakura_player_team, scores={InitTeam=1..}] at @s run team join PeacefulEntity @e[type=#food:to_peaceful, tag=!Boss, team=, distance=..30]
execute as @a[predicate=food:sakura_player_team, scores={InitTeam=1..}] at @s as @e[type=#food:to_peaceful, tag=!Boss, distance=..30] run data modify entity @s AngerTime set value 0

schedule function food:tea/sakura/team/search_team_player 4s