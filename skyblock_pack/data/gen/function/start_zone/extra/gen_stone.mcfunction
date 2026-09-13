#Если область не пустая, то удаляем из списка и пробуем новую область
$execute unless predicate gen:empty_zone run data remove storage dsb_gen:islands AdditionalStones[$(Pos)]
execute unless predicate gen:empty_zone run return run function gen:islands/extra/new_attempt
#Помечаем игрока
tag @s add toNewStoneIsland

#С шансом 10% остров не появится
execute store result score #rand gen run random value 0..9 dsb:gen_chance_to_spawn_add_stone
execute if score #rand gen matches 0 run return 0 

tellraw @a {"translate":"dsb.events.start_game.additional_stone","color":"gold","with":[{"selector":"@s"}]}
execute as @a at @s run playsound minecraft:block.beacon.activate
particle minecraft:gust_emitter_small ~ ~2 ~ 1 2 1 0 2 force
particle minecraft:trial_spawner_detection ~ ~2 ~ 1 2 1 0 50 force

#Удаление позиции
$data remove storage dsb_gen:islands AdditionalStones[$(Pos)]
#Вариация каменных
forceload add ~ ~

execute store result score #rand gen run random value 1..4 dsb:gen_random_add_stone
execute if score #rand gen matches 1 run place jigsaw gen:islands/start/1 gen:island/init 1
execute if score #rand gen matches 2 run place jigsaw gen:islands/start/2 gen:island/init 1
execute if score #rand gen matches 3 run place jigsaw gen:islands/start/3 gen:island/init 1
execute if score #rand gen matches 4 run place jigsaw gen:islands/start/4 gen:island/init 1

forceload remove ~ ~
