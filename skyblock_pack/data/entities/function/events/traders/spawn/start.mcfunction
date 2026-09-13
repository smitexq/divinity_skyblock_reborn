#8 точек для спавна
data modify storage dsb:traders Pos set value [{x:90, y:55, z:0}, {x:-90, y:55, z:0}, {x:0, y:55, z:90}, {x:0, y:55, z:-90}, {x:70, y:55, z:70}, {x:-70, y:55, z:70}, {x:70, y:55, z:-70}, {x:-70, y:55, z:-70}]

execute store result storage dsb:traders index int 1 run random value 0..7
function entities:events/traders/spawn/get_coords with storage dsb:traders