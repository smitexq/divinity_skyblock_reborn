setblock ~ ~ ~ air
#Взаимодействие для призыва босса
execute align xyz run summon minecraft:interaction ~0.5 ~-0.5 ~0.5 {width:2, Tags:["AltarToSpawn_SeaKing"]}
#Центр арены
summon marker ~ ~ ~ {Tags:["DrownedArenaMiddle", "middles"]}