execute as @a[distance=..10] at @s run playsound minecraft:block.beacon.power_select ambient @s
particle minecraft:glow ~ ~1 ~ 1.5 1.5 1.5 10 50 force

$summon block_display ~ ~ ~ {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:cherry_leaves",Properties:{}},transformation:[1.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,1.0000f,0.0000f,2.0000f,0.0000f,0.0000f,1.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["VizualizeLantern", "$(id)"]},{id:"minecraft:item_display",item:{id:"minecraft:decorated_pot",Count:1},item_display:"none",transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.5000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["VizualizeLantern", "$(id)"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:soul_lantern",Properties:{hanging:"false"}},transformation:[1.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,1.0000f,0.0000f,1.0000f,0.0000f,0.0000f,1.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["VizualizeLantern", "$(id)"]}],Tags:["VizualizeLantern", "$(id)"]}


$function dc:get_call {tick:$(time), command:"kill @e[type=minecraft:block_display, tag=VizualizeLantern, tag=$(id)]", requirePos:true, requireEntity:false}
$function dc:get_call {tick:$(time), command:"kill @e[type=minecraft:item_display, tag=VizualizeLantern, tag=$(id)]", requirePos:true, requireEntity:false}