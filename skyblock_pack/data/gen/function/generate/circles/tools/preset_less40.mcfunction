#Очищаем прогруженные чанки перед стартом
execute if score #squareNum gen matches 21 run function gen:remove_forceload
#Новые точки для отрезков (по итогу максимум 29 чанков будет в отрезке)
execute if score #squareNum gen matches 21 run data modify storage dsb_gen:values Circle.CornerCoords set value [[-449,-449],[-433,-449],[-1,-449],[432,-449],[448,-449],[448,-433],[448,-1],[448,432],[448,448],[432,448],[0,448],[-433,448],[-449,448],[-449,432],[-449,0],[-449,-433]]
execute if score #squareNum gen matches 21 store result score #countPoints gen run data get storage dsb_gen:values Circle.CornerCoords
execute if score #squareNum gen matches 21 run return 0

#Углы
function gen:generate/circles/tools/expand_corners_macros {index: "[0][0]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[0][1]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[4][0]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[4][1]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[8][0]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[8][1]", oper: "add"}
function gen:generate/circles/tools/expand_corners_macros {index: "[12][0]", oper: "remove"}
function gen:generate/circles/tools/expand_corners_macros {index: "[12][1]", oper: "add"}

###Серединные точки
#Первая функция сдвигает точку для расширения рамки, остальные копируют значение, так как оно одинаковое
function gen:generate/circles/tools/expand_corners_macros {index: "[1][1]", oper: "remove"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[2][1]", source: "[1][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[3][1]", source: "[1][1]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[5][0]", oper: "add"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[6][0]", source: "[5][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[7][0]", source: "[5][0]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[9][1]", oper: "add"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[10][1]", source: "[9][1]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[11][1]", source: "[9][1]"}

function gen:generate/circles/tools/expand_corners_macros {index: "[13][0]", oper: "remove"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[14][0]", source: "[13][0]"}
function gen:generate/circles/tools/copy_cornerns_macros {index: "[15][0]", source: "[13][0]"}