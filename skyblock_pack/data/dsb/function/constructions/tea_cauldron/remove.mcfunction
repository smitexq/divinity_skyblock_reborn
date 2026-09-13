fill ~-1 ~-1 ~-1 ~1 ~ ~1 air destroy

particle poof ~ ~ ~ 1 0.5 1 0.1 25 force
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

function dc:gu/generate
function food:cauldron/remove_storage with storage gu:main

kill @s