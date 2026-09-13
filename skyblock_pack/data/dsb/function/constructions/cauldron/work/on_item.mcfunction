#Текст
$summon minecraft:text_display ~ ~-0.45 ~ {text:'{"text":"$(count)"}',billboard:center,see_through:false,view_range:0.17f,Tags:["$(uuid)"]}

#Выдаем предмет, делаем меньше размер и радиус видимости
$data modify entity @s item set value {count: $(count), id: "minecraft:cobblestone"}
data modify entity @s transformation.scale set value [0.35f,0.35f,0.35f]
data modify entity @s view_range set value 0.17f
#Привязка
$tag @s add $(uuid)