advancement revoke @s only entities:player_killed_entity

execute if entity @s[tag=WearingRingOfVampire] run function rings:activate_ring/vampire/main
# execute if entity @s[tag=WearingRedSunRing] run function rings:activate_ring/red_sun/main