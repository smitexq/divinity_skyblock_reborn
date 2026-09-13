$data modify storage dsb:temp altar.name set value $(name)
$data modify storage dsb:temp altar.soul set value $(soul)
$data modify storage dsb:temp altar.ai set value $(ai)

$data modify storage dsb:temp altar.ai_need set from storage dsb:recipes RecipesAI.RecipeOf_$(name)


return run function dsb:constructions/altar/work/recipes/out with storage dsb:temp altar