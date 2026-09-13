execute store result score *var1 variables run random value 1..5 gen:dungeon/desert_archives/random_spawner

execute if score *var1 variables matches 1 run return run function gen:in_dungeons/desert_archives/spider_spawner
execute if score *var1 variables matches 2 run return run function gen:in_dungeons/desert_archives/poison_spider_spawner
execute if score *var1 variables matches 3 run return run function gen:in_dungeons/desert_archives/priest_spawner
execute if score *var1 variables matches 4 run return run function gen:in_dungeons/desert_archives/guardian_spawner
execute if score *var1 variables matches 5 run return run function gen:in_dungeons/desert_archives/curse_guardian_spawner