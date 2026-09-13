$tellraw @s {"translate":"dsb.events.decision_task.num$(num)","color":"gold"}

$tellraw @s [{"translate":"$(que0)","clickEvent":{"action":"run_command","value":"/trigger TaskAnswer set $(key0)"},"color":"green"},\
{"text":"\uB5CA\uB5CA\uB5CA\uB5CA"},\
{"translate":"$(que1)","clickEvent":{"action":"run_command","value":"/trigger TaskAnswer set $(key1)"},"color":"green"},\
{"text":"\uB5CA\uB5CA\uB5CA\uB5CA"},\
{"translate":"$(que2)","clickEvent":{"action":"run_command","value":"/trigger TaskAnswer set $(key2)"},"color":"green"},\
{"text":"\uB5CA\uB5CA\uB5CA\uB5CA"},\
{"translate":"$(que3)","clickEvent":{"action":"run_command","value":"/trigger TaskAnswer set $(key3)"},"color":"green"},\
{"text":"\uB5CA\uB5CA\uB5CA\uB5CA"}]