#Если игрок НЕ на шифте, то берем только один предмет и из шалкера убираем так же один
$execute unless predicate dsb:events/is_sneaking run item replace block 17112022 1 0 container.0 from block 17112022 0 0 container.$(slot) food:set_count_1
$execute unless predicate dsb:events/is_sneaking run return run item modify block 17112022 0 0 container.$(slot) food:remove_item

#Иначе забираем весь стак
$item replace block 17112022 1 0 container.0 from block 17112022 0 0 container.$(slot)
$item replace block 17112022 0 0 container.$(slot) with minecraft:air