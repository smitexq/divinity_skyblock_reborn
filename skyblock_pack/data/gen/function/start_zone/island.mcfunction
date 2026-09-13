forceload add ~ ~

#В зависимости от центрального биома спавним определенный остров
execute store result score #id gen run data get storage dsb_gen:gen List[255][255]
#пустынный (2, 7, 13) с акацией, зимний (3, 6, 10), обычный (0, 4, 11, 12, 14, 16), океанический (джунглиевое) (1, 8, 9, 5, 15)
execute if predicate gen:forest_id run return run place jigsaw gen:islands/start/plains gen:island/init 1
execute if predicate gen:desert_id run return run place jigsaw gen:islands/start/desert gen:island/init 1
execute if predicate gen:winter_id run return run place jigsaw gen:islands/start/snow gen:island/init 1
execute if predicate gen:ocean_id run return run place jigsaw gen:islands/start/ocean gen:island/init 1

# forceload remove ~ ~