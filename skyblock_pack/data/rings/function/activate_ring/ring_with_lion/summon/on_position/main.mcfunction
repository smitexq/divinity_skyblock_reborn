#tp @s $(X) $(Y) $(Z)
#Типа моба (шанс на появление)
#23% на каждого обычного, и еще по 4% на эндера и ведьму
execute store result score *var3 variables run random value 1..100

execute if score *var3 variables matches 1..23 positioned $(X) $(Y) $(Z) run return run function rings:activate_ring/ring_with_lion/summon/on_position/types/zombie
execute if score *var3 variables matches 24..46 positioned $(X) $(Y) $(Z) run return run ... skeleton
execute if score *var3 variables matches 47..69 run return run summon spider $(X) $(Y) $(Z)
execute if score *var3 variables matches 70..92 positioned $(X) $(Y) $(Z) run return run ... creeper
execute if score *var3 variables matches 93..96 positioned $(X) $(Y) $(Z) run return run ... witch
execute if score *var3 variables matches 97..100 positioned $(X) $(Y) $(Z) run return run ... enderman

# [[0,0,0],[0,0,1],[0,0,-1],[1,0,0],[-1,0,0]]