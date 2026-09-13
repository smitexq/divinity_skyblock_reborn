#достижение заберем через 2 секунды, чтобы игрок не мог кликать на хитбокс с заданиями
function dc:get_call {tick:40, command:"advancement revoke @s only dsb:interactions/get_task_in_library", requirePos:false, requireEntity:true}

###Если есть фрагментация
execute if entity @s[tag=DependenceFromKnowPiece] run return run title @s actionbar {"translate":"dsb.event.in_library.dependence", "color":"yellow"}
###


###Если игрок уже решает задание
execute if entity @s[tag=DecideTask] run return run title @s actionbar {"translate":"dsb.events.library_task.wait","color":"red"}

###Если есть КД на получение инты
execute if score @s RestTimeAI matches 901.. run return run title @s actionbar {"translate":"dsb.events.rest_time","color":"yellow"}

#Убиваем интеракт с заданием, чтобы никто не мог нажать
kill @e[type=interaction, tag=LibraryTask, distance=..7, limit=1]


#Выдача задания
function dc:gu/generate
function dsb:events/library_tasks/init with storage gu:main