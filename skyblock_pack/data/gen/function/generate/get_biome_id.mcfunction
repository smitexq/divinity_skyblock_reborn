#Вытаскиваем номер биома из матрицы
$data modify storage dsb_gen:values Chunk.BiomeInMatric set from storage dsb_gen:gen List[$(X)][$(Z)]

# execute store result score #id gen run data get storage dsb_gen:values Chunk.BiomeInMatric

function gen:generate/get_biome_by_id with storage dsb_gen:values Chunk