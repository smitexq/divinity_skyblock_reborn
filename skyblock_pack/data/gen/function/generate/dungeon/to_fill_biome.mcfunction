#Из командного блока, который располагает биом сверху, и если игрок в него заходит, то дальность блоков уменьшить
forceload add ~ ~
$fillbiome ~ $(height) ~ ~ $(height) ~ minecraft:the_void
forceload remove ~ ~
setblock ~ ~ ~ air