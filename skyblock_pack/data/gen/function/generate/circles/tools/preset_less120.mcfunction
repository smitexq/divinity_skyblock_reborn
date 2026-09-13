execute if score #squareNum gen matches 101 run function gen:remove_forceload
execute if score #squareNum gen matches 111 run function gen:remove_forceload

execute if score #squareNum gen matches 101 run data modify storage dsb_gen:values Circle.CornerCoords set value [[-1729, -1729], [-1713, -1729],[-1409, -1729], [-1089, -1729],[-769, -1729],[-449,-1729],[-1,-1729],[448,-1729],[768, -1729],[1088, -1729],[1408, -1729],[1712, -1729], [1728, -1729], [1728, -1713],[1728, -1409], [1728, -1089], [1728, -769],[1728,-449],[1728,-1],[1728,448],[1728, 768],[1728, 1088], [1728, 1408],[1728, 1712], [1728, 1728], [1712, 1728],[1408, 1728], [1088, 1728], [768, 1728], [448,1728],[0,1728],[-449,1728],[-769, 1728],[-1089, 1728],[-1409, 1728],[-1713, 1728], [-1729, 1728], [-1729, 1712],[-1729, 1392],[-1729, 1088], [-1729, 768], [-1729,448],[-1729,0],[-1729,-449],[-1729, -769],[-1729, -1089],[-1729, -1409],[-1729, -1713]]
execute if score #squareNum gen matches 101 store result score #countPoints gen run data get storage dsb_gen:values Circle.CornerCoords
execute if score #squareNum gen matches 101 run return 0

#Углы
function gen:generate/circles/tools/expand_corners_macros {index: "[0][0]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[0][1]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[12][0]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[12][1]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[24][0]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[24][1]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[36][0]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[36][1]", oper: "add"}

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
function gen:generate/circles/tools/copy_cornerns_macros {index: "[10][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[11][1]", source: "[1][1]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[13][0]", oper: "add"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[14][0]", source: "[13][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[15][0]", source: "[13][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[16][0]", source: "[13][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[17][0]", source: "[13][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[18][0]", source: "[13][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[19][0]", source: "[13][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[20][0]", source: "[13][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[21][0]", source: "[13][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[22][0]", source: "[13][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[23][0]", source: "[13][0]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[25][1]", oper: "add"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[26][1]", source: "[25][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[27][1]", source: "[25][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[28][1]", source: "[25][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[29][1]", source: "[25][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[30][1]", source: "[25][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[31][1]", source: "[25][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[32][1]", source: "[25][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[33][1]", source: "[25][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[34][1]", source: "[25][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[35][1]", source: "[25][1]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[37][0]", oper: "remove"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[38][0]", source: "[37][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[39][0]", source: "[37][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[40][0]", source: "[37][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[41][0]", source: "[37][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[42][0]", source: "[37][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[43][0]", source: "[37][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[44][0]", source: "[37][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[45][0]", source: "[37][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[46][0]", source: "[37][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[47][0]", source: "[37][0]"}
