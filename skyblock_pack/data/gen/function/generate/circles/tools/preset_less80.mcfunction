execute if score #squareNum gen matches 61 run function gen:remove_forceload
execute if score #squareNum gen matches 71 run function gen:remove_forceload

execute if score #squareNum gen matches 61 run data modify storage dsb_gen:values Circle.CornerCoords set value [[-1089, -1089], [-1073, -1089],[-769, -1089],[-449,-1089],[-1,-1089],[448,-1089],[768, -1089],[1072, -1089], [1088, -1089], [1088, -1073],[1088, -769],[1088,-449],[1088,-1],[1088,448],[1088, 768],[1088, 1072], [1088, 1088], [1072, 1088],[768, 1088], [448,1088],[0,1088],[-449,1088],[-769, 1088],[-1073, 1088], [-1089, 1088], [-1089, 1072],[-1089, 768],[-1089,448],[-1089,0],[-1089,-449],[-1089, -769],[-1089, -1073]]
execute if score #squareNum gen matches 61 store result score #countPoints gen run data get storage dsb_gen:values Circle.CornerCoords
execute if score #squareNum gen matches 61 run return 0

#Углы
function gen:generate/circles/tools/expand_corners_macros {index: "[0][0]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[0][1]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[8][0]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[8][1]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[16][0]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[16][1]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[24][0]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[24][1]", oper: "add"}

###Серединные точки
function gen:generate/circles/tools/expand_corners_macros {index: "[1][1]", oper: "remove"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[2][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[3][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[4][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[5][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[6][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[7][1]", source: "[1][1]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[9][0]", oper: "add"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[10][0]", source: "[9][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[11][0]", source: "[9][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[12][0]", source: "[9][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[13][0]", source: "[9][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[14][0]", source: "[9][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[15][0]", source: "[9][0]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[17][1]", oper: "add"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[18][1]", source: "[17][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[19][1]", source: "[17][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[20][1]", source: "[17][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[21][1]", source: "[17][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[22][1]", source: "[17][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[23][1]", source: "[17][1]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[25][0]", oper: "remove"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[26][0]", source: "[25][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[27][0]", source: "[25][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[28][0]", source: "[25][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[29][0]", source: "[25][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[30][0]", source: "[25][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[31][0]", source: "[25][0]"}
