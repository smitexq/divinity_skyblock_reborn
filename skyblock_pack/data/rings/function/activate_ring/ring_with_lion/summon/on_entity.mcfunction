# [[0,0,1],[0,0,-1],[1,0,0],[-1,0,0]]

execute unless function rings:activate_ring/ring_with_lion/summon/check_position run return 0
execute positioned ~1 ~ ~ unless function rings:activate_ring/ring_with_lion/summon/check_position run return 0
execute positioned ~-1 ~ ~ unless function rings:activate_ring/ring_with_lion/summon/check_position run return 0
execute positioned ~ ~ ~1 unless function rings:activate_ring/ring_with_lion/summon/check_position run return 0
execute positioned ~ ~ ~-1 unless function rings:activate_ring/ring_with_lion/summon/check_position run return 0

execute summon marker run function rings:activate_ring/ring_with_lion/summon/store_position