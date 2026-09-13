$execute store result storage dsb_gen:values Island.num int 1 run random value $(range) dsb_gen:get_number_island_$(path)

$data modify storage dsb_gen:values Island.path set value "$(path)"

return run function gen:islands/gen_complete with storage dsb_gen:values Island