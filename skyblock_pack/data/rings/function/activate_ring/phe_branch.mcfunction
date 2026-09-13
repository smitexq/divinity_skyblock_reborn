advancement revoke @s only entities:player_hurt_entity

execute if entity @s[tag=WearingHawkRing] run function rings:activate_ring/hawkring/main
# execute if entity @s[tag=WearingRingOfVampire] run function rings:activate_ring/vampire/by_damage/init