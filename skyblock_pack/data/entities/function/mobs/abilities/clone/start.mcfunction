#Тег на то, что нельзя юзать телепорт
tag @s add no.use.teleport
function dc:get_call {tick:180, command:"tag @s remove no.use.teleport", requirePos:false, requireEntity:true}


function dc:gu/generate

data modify storage temp run set value {}
data modify storage temp run.out set from storage gu:main out
$data modify storage temp run.mob set value $(mob)

function entities:mobs/abilities/clone/init with storage temp run

tag @s add initClone
function dc:get_call {tick:180, command:"tag @s remove initClone", requirePos:false, requireEntity:true}