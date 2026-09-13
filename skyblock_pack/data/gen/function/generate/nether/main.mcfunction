#Шаблона расположения незерских островов
data modify storage dsb_gen:gen Islands set from storage dsb_gen:gen NetherIslands
data remove storage dsb_gen:gen NetherIslands

#Кол-во островов
execute store result score #countNetherIslands gen run data get storage dsb_gen:gen Islands
scoreboard players set #isEndGeneration gen 0
#сколько сгенерировано за одик тиик
scoreboard players set #num gen 0

execute in minecraft:the_nether run function gen:generate/nether/loop