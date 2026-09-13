$summon marker $(coords) {Tags:["$(uuid)","$(v)"]}

# Название в бочке
$data modify block $(coords) CustomName set value '{"translate":"dsb.recipe_book.cts.research_table.name"}'


# Отображение бумажек
$function dsb:events/displays/research_table {uuid:$(uuid), rotated:"$(rotated)"}