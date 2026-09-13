execute if score #squareNum gen matches 81 run function gen:remove_forceload
execute if score #squareNum gen matches 91 run function gen:remove_forceload

execute if score #squareNum gen matches 81 run data modify storage dsb_gen:values Circle.CornerCoords set value [[-1409, -1409], [-1393, -1409],[-1089, -1409],[-769, -1409],[-449,-1409],[-1,-1409],[448,-1409],[768, -1409],[1088, -1409],[1392, -1409], [1408, -1409], [1408, -1393],[1408, -1089], [1408, -769],[1408,-449],[1408,-1],[1408,448],[1408, 768],[1408, 1088],[1408, 1392], [1408, 1408], [1392, 1408],[1088, 1408], [768, 1408], [448,1408],[0,1408],[-449,1408],[-769, 1408],[-1089, 1408],[-1393, 1408], [-1409, 1408], [-1409, 1392],[-1409, 1088], [-1409, 768], [-1409,448],[-1409,0],[-1409,-449],[-1409, -769],[-1409, -1089],[-1409, -1393]]
execute if score #squareNum gen matches 81 store result score #countPoints gen run data get storage dsb_gen:values Circle.CornerCoords
execute if score #squareNum gen matches 81 run return 0

#Углы
function gen:generate/circles/tools/expand_corners_macros {index: "[0][0]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[0][1]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[10][0]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[10][1]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[20][0]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[20][1]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[30][0]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[30][1]", oper: "add"}

###Серединные точки
function gen:generate/circles/tools/expand_corners_macros {index: "[1][1]", oper: "remove"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[2][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[3][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[4][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[5][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[6][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[7][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[8][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[9][1]", source: "[1][1]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[11][0]", oper: "add"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[12][0]", source: "[11][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[13][0]", source: "[11][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[14][0]", source: "[11][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[15][0]", source: "[11][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[16][0]", source: "[11][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[17][0]", source: "[11][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[18][0]", source: "[11][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[19][0]", source: "[11][0]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[21][1]", oper: "add"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[22][1]", source: "[21][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[23][1]", source: "[21][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[24][1]", source: "[21][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[25][1]", source: "[21][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[26][1]", source: "[21][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[27][1]", source: "[21][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[28][1]", source: "[21][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[29][1]", source: "[21][1]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[31][0]", oper: "remove"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[32][0]", source: "[31][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[33][0]", source: "[31][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[34][0]", source: "[31][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[35][0]", source: "[31][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[36][0]", source: "[31][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[37][0]", source: "[31][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[38][0]", source: "[31][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[39][0]", source: "[31][0]"}
