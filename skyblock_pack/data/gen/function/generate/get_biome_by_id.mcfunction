#Из списка предустановленных биомов достаем название по номеру
$data modify storage dsb_gen:values Chunk.CurrentBiome set string storage dsb_gen:gen ListBiomes.$(BiomeInMatric) 0
function gen:generate/generate_biome with storage dsb_gen:values Chunk