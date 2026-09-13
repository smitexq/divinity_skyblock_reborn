#Позиция чанка
execute store result score #x gen run data get entity @s Pos[0]
execute store result score #z gen run data get entity @s Pos[2]
kill @s

#Координаты чанка
scoreboard players operation #x gen /= #16 gen
scoreboard players operation #z gen /= #16 gen

###Координаты для fillbiome
scoreboard players operation #x0_cornerSector gen = #x gen
scoreboard players operation #z0_cornerSector gen = #z gen

execute store result storage dsb_gen:values Chunk.CornerX1 int 1 run scoreboard players operation #x0_cornerSector gen *= #16 gen
execute store result storage dsb_gen:values Chunk.CornerZ1 int 1 run scoreboard players operation #z0_cornerSector gen *= #16 gen

scoreboard players operation #x_cornerSector gen = #x0_cornerSector gen
scoreboard players operation #z_cornerSector gen = #z0_cornerSector gen

execute store result storage dsb_gen:values Chunk.CornerX2 int 1 run scoreboard players add #x_cornerSector gen 7
execute store result storage dsb_gen:values Chunk.CornerZ2 int 1 run scoreboard players add #z_cornerSector gen 7
###

#Преобразуем в индексы в матрице
scoreboard players operation #x gen *= #-1 gen
scoreboard players add #x gen 127
scoreboard players operation #x gen *= #2 gen
execute store result storage dsb_gen:values Chunk.X int 1 run scoreboard players add #x gen 1

scoreboard players add #z gen 128
execute store result storage dsb_gen:values Chunk.Z int 1 run scoreboard players operation #z gen *= #2 gen


# . .
# * .
function gen:generate/get_biome_id with storage dsb_gen:values Chunk

# * .
# . .
execute store result storage dsb_gen:values Chunk.CornerX1 int 1 run scoreboard players add #x0_cornerSector gen 8
execute store result storage dsb_gen:values Chunk.CornerX2 int 1 run scoreboard players add #x_cornerSector gen 8
execute store result storage dsb_gen:values Chunk.X int 1 run scoreboard players remove #x gen 1
function gen:generate/get_biome_id with storage dsb_gen:values Chunk

# . *
# . .
execute store result storage dsb_gen:values Chunk.CornerZ1 int 1 run scoreboard players add #z0_cornerSector gen 8
execute store result storage dsb_gen:values Chunk.CornerZ2 int 1 run scoreboard players add #z_cornerSector gen 8
execute store result storage dsb_gen:values Chunk.Z int 1 run scoreboard players add #z gen 1
function gen:generate/get_biome_id with storage dsb_gen:values Chunk

# . .
# . *
execute store result storage dsb_gen:values Chunk.CornerX1 int 1 run scoreboard players remove #x0_cornerSector gen 8
execute store result storage dsb_gen:values Chunk.CornerX2 int 1 run scoreboard players remove #x_cornerSector gen 8
execute store result storage dsb_gen:values Chunk.X int 1 run scoreboard players add #x gen 1
function gen:generate/get_biome_id with storage dsb_gen:values Chunk