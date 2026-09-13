tellraw @s {"translate":"dsb.events.library_task.decision_task","color":"gold"}
tellraw @s [{"score":{"objective":"variables","name":"#x"},"color":"gold"},{"text":" + ","color":"gold"},{"score":{"objective":"variables","name":"#y"},"color":"gold"},{"text":" + ","color":"gold"},{"score":{"objective":"variables","name":"#z"},"color":"gold"},{"text":" = ?","color":"gold"}]

$tellraw @s [{"storage":"dsb:library_tasks", "nbt":"Task.orderAns[0]","clickEvent":{"action":"run_command","value":"/trigger TaskAnswer set $(key0)"},"color":"green"},\
{"text":"\uB5CA\uB5CA\uB5CA\uB5CA"},\
{"storage":"dsb:library_tasks", "nbt":"Task.orderAns[1]","clickEvent":{"action":"run_command","value":"/trigger TaskAnswer set $(key1)"},"color":"green"},\
{"text":"\uB5CA\uB5CA\uB5CA\uB5CA"},\
{"storage":"dsb:library_tasks", "nbt":"Task.orderAns[2]","clickEvent":{"action":"run_command","value":"/trigger TaskAnswer set $(key2)"},"color":"green"},\
{"text":"\uB5CA\uB5CA\uB5CA\uB5CA"},\
{"storage":"dsb:library_tasks", "nbt":"Task.orderAns[3]","clickEvent":{"action":"run_command","value":"/trigger TaskAnswer set $(key3)"},"color":"green"},\
{"text":"\uB5CA\uB5CA\uB5CA\uB5CA"},\
{"storage":"dsb:library_tasks", "nbt":"Task.orderAns[4]","clickEvent":{"action":"run_command","value":"/trigger TaskAnswer set $(key4)"},"color":"green"}]

tellraw @s {"translate":"dsb.events.library_task.wait","color":"gold"}