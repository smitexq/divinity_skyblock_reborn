#Будем спавнить группу мобов от одного до трех мобов
#[[0,0,0],[0,0,1],[0,0,-1],[1,0,0],[-1,0,0]]

execute store result score *var3 variables run random value 1..2

execute if score *var3 variables matches 1 run return run function ...on_position/random_summon {entity:"zombie"}

function ...on_position/random_summon {entity:"zombie"}
function ...on_position/random_summon {entity:"zombie"}