scoreboard players operation .search slowcast.id = @s slowcast.id
scoreboard players operation #type slowcast = @s slowcast.type

kill @s
#Что будет в конце рейкастинга
function slowcast:end/on_ray_list
#Что будет выполняться относительно запустившего рейкаст
execute as @e[type=#slowcast:casters,predicate=slowcast:search_id,limit=1] run function slowcast:end/casters_list