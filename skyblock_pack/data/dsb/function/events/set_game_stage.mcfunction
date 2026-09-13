execute if entity @a[advancements={dsb:game_stages/wanderer_ring=true}] run scoreboard players set *wanderer_ring GameStage 1
execute if entity @a[advancements={dsb:game_stages/traveler_ring=true}] run scoreboard players set *traveler_ring GameStage 1
execute if entity @a[advancements={dsb:game_stages/scholar_ring=true}] run scoreboard players set *scholar_ring GameStage 1
execute if entity @a[advancements={dsb:game_stages/nether=true}] run scoreboard players set *nether GameStage 1
execute if entity @a[advancements={dsb:game_stages/nether_boss=true}] run scoreboard players set *nether_boss GameStage 1
# execute if entity @a[advancements={dsb:game_stages/eleum_lois=true}] run scoreboard players set *eleum_lois GameStage 1


# Установка максимального этапа путешествий, чтобы в дальнейшем всем установить его во время босс файта
execute unless score *max_level_ring TravelLevel matches 1.. if entity @a[advancements={dsb:game_stages/wanderer_ring=true}] run scoreboard players set *max_level_ring TravelLevel 1

execute unless score *max_level_ring TravelLevel matches 2.. if entity @a[advancements={dsb:game_stages/traveler_ring=true}] run scoreboard players set *max_level_ring TravelLevel 2

execute unless score *max_level_ring TravelLevel matches 3.. if entity @a[advancements={dsb:game_stages/scholar_ring=true}] run scoreboard players set *max_level_ring TravelLevel 3