execute if score #squareNum gen matches 41 run function gen:remove_forceload
execute if score #squareNum gen matches 51 run function gen:remove_forceload

execute if score #squareNum gen matches 41 run data modify storage dsb_gen:values Circle.CornerCoords set value [[-769, -769], [-753,-769],[-449,-769],[-1,-769],[448,-769],[752,-769], [768, -769], [768,-753],[768,-449],[768,-1],[768,448],[768,752], [768, 768], [752,768],[448,768],[0,768],[-449,768],[-753,768], [-769, 768], [-769,752],[-769,448],[-769,0],[-769,-449],[-769,-753]]
execute if score #squareNum gen matches 41 store result score #countPoints gen run data get storage dsb_gen:values Circle.CornerCoords
execute if score #squareNum gen matches 41 run return 0

#Углы
function gen:generate/circles/tools/expand_corners_macros {index: "[0][0]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[0][1]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[6][0]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[6][1]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[12][0]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[12][1]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[18][0]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[18][1]", oper: "add"}

###Серединные точки
function gen:generate/circles/tools/expand_corners_macros {index: "[1][1]", oper: "remove"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[2][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[3][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[4][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[5][1]", source: "[1][1]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[7][0]", oper: "add"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[8][0]", source: "[7][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[9][0]", source: "[7][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[10][0]", source: "[7][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[11][0]", source: "[7][0]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[13][1]", oper: "add"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[14][1]", source: "[13][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[15][1]", source: "[13][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[16][1]", source: "[13][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[17][1]", source: "[13][1]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[19][0]", oper: "remove"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[20][0]", source: "[19][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[21][0]", source: "[19][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[22][0]", source: "[19][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[23][0]", source: "[19][0]"}