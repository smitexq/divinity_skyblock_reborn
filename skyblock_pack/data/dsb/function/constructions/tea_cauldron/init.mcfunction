#НАПРАВЛЕНИЕ ДЛЯ ДИСПЛЕЕВ
execute if predicate dsb:constructions/tea_cauldron/v1 run tag @s add WE
execute if predicate dsb:constructions/tea_cauldron/v2 run tag @s add SN

function dc:gu/generate
function food:cauldron/new_storage with storage gu:main

function dsb:constructions/tea_cauldron/on_pos