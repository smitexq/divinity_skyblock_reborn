execute store result score #chance variables run random value 1..10

execute if score #babyCount variables matches 0 if score #chance variables matches 1..4 run return run function entities:mobs/zombie/uncommon/health/baby
execute if score #babyCount variables matches 1 if score #chance variables matches 1..2 run return run function entities:mobs/zombie/uncommon/health/baby
execute if score #babyCount variables matches 2 if score #chance variables matches 1 run return run function entities:mobs/zombie/uncommon/health/baby