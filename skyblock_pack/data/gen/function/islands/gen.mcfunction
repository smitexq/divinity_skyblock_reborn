###Если это особый квестовый, то пока откладываем генерацию
#Элеум Лойс
$execute if score #sizeOfIsland gen matches 400.. run return run function gen:islands/on_biome/quests/init {Index:$(Index), score:400, predicate:"winter_id", namespace:"FrozenCastle"}

$execute if score #sizeOfIsland gen matches 300.. run return run function gen:islands/on_biome/quests/init {Index:$(Index), score:300, predicate:"desert_id", namespace:"DesertLibrary"}

$execute if score #sizeOfIsland gen matches 200.. run return run function gen:islands/on_biome/quests/init {Index:$(Index), score:200, predicate:"ocean_id", namespace:"SeaKing"}
#сколько сгенерировано
scoreboard players add *gen_overworld gen 1

execute if score #sizeOfIsland gen matches 100.. positioned ~ ~-10 ~ run return run place jigsaw gen:traders/quest_villager gen:island/init 1
###

#вишневый остров
execute if score #sizeOfIsland gen matches 50..52 run return run function gen:islands/on_biome/spawn_cherry_grove

#пещерные острова
execute if score #sizeOfIsland gen matches -1 positioned ~ ~-10 ~ run return run function gen:islands/on_biome/init {range:"1..5", path:"caves/cave"}

#Обычные
execute if score #sizeOfIsland gen matches 0 run return run function gen:islands/on_size/small
execute if score #sizeOfIsland gen matches 1 run return run function gen:islands/on_size/medium
execute if score #sizeOfIsland gen matches 2 run return run function gen:islands/on_size/large