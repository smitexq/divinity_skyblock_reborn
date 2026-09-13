#генерация
scoreboard objectives add gameplay dummy
scoreboard objectives add gen dummy
scoreboard objectives add variables dummy
scoreboard objectives add Pots dummy

scoreboard players set #2 variables 2
scoreboard players set #4 variables 4
scoreboard players set #10 variables 10
scoreboard players set #12 variables 12
scoreboard players set #15 variables 15
scoreboard players set #20 variables 20
scoreboard players set #40 variables 40
scoreboard players set #100 variables 100
scoreboard players set #120 variables 120
scoreboard players set #800 variables 800
scoreboard players set #900 variables 900
scoreboard players set #1000 variables 1000
scoreboard players set #10000 variables 10000
scoreboard players set #24000 variables 24000

#технические
scoreboard objectives add randomizer dummy
scoreboard objectives add RecursionDepth dummy
scoreboard objectives add death_count dummy
scoreboard objectives add death deathCount
scoreboard objectives add TimeSinceDeath minecraft.custom:minecraft.time_since_death
scoreboard objectives add TravelLevel dummy
scoreboard objectives add RemoveFuel dummy
scoreboard objectives add QuestTime dummy
#настройки
scoreboard objectives add settings_death_info dummy
scoreboard objectives add settings_vizual_time dummy
scoreboard objectives add last_vizual dummy
#тригеры
scoreboard objectives add Settings trigger
scoreboard objectives add TaskAnswer trigger
scoreboard objectives add GetRecipesBook trigger
scoreboard objectives add VizualConstruction trigger


#Фрагменты знаний
scoreboard objectives add eat.know_piece dummy
scoreboard objectives add know.piece_to_dependence dummy
scoreboard objectives add time_dependence dummy

#Отдых после получения знаний
scoreboard objectives add RestTimeAI dummy
scoreboard objectives add TimeToSleep dummy

#оружия
scoreboard objectives add use.bow minecraft.used:minecraft.bow

#Создание конструкций
scoreboard objectives add AI dummy
scoreboard objectives add ai_fire dummy
scoreboard objectives add ai_composter dummy
scoreboard objectives add ai_sieve dummy
scoreboard objectives add ai.research_table dummy
scoreboard objectives add ai.water_collector dummy
scoreboard objectives add ai_cauldron dummy
scoreboard objectives add ai.s_library dummy
scoreboard objectives add ai_exchanger dummy
scoreboard objectives add ai.h_library dummy
scoreboard objectives add ai.blaze_spawner dummy
scoreboard objectives add ai_altar dummy
scoreboard objectives add ai_tea dummy
#Вывод в таб
scoreboard objectives setdisplay list AI
#Работа библиотек
scoreboard objectives add library.tome_of_wisdom dummy
scoreboard objectives add library.tome_of_rune dummy

#Способки мини-боссов
scoreboard objectives add use.powerful_jump dummy
scoreboard objectives add use.hexagon_arrows dummy
scoreboard objectives add use.ignite dummy
scoreboard objectives add use.wither_storm dummy
scoreboard objectives add use.circle_arrows dummy
scoreboard objectives add use.charged_ray dummy
scoreboard objectives add side.wither_storm dummy

#для сохранения опыта в могилки
scoreboard objectives add lvl dummy

#Работа конструкций
scoreboard objectives add Sieve dummy
scoreboard objectives add r.tableIndex dummy
scoreboard objectives add work_s.library dummy
scoreboard objectives add work_h.library dummy
scoreboard objectives add Composter dummy
scoreboard objectives add WaterCollector dummy
scoreboard objectives add Cauldron dummy
scoreboard objectives add BlazeSpawner dummy
scoreboard players set #-1 BlazeSpawner -1
scoreboard objectives add SummonToBlaze dummy
scoreboard objectives add BlazeSpawnerRemoveSouls dummy
scoreboard objectives add Altar dummy
scoreboard objectives add CreateFire dummy
#Для сита
scoreboard objectives add dropSoulSand minecraft.dropped:minecraft.soul_sand
scoreboard objectives add dropGrassBlock minecraft.dropped:minecraft.grass_block
scoreboard objectives add dropCobblestone minecraft.dropped:minecraft.cobblestone
scoreboard objectives add existDropItem dummy

#Для чаев
scoreboard objectives add CookingTea dummy

scoreboard objectives add TeaScore dummy
scoreboard objectives add ConsumeBirchTea dummy
scoreboard objectives add ConsumeBlackTea dummy
scoreboard objectives add ConsumeGreenTea dummy
scoreboard objectives add ConsumeSakuraTea dummy
scoreboard objectives add ConsumeBerriesTea dummy
scoreboard objectives add ConsumeOxeyeDaisyTea dummy
scoreboard objectives add InitTeam dummy

scoreboard objectives add TimeConsumeBirchTea dummy
scoreboard objectives add TimeConsumeBlackTea dummy
scoreboard objectives add TimeConsumeGreenTea dummy
scoreboard objectives add TimeConsumeSakuraTea dummy
scoreboard objectives add TimeConsumeBerriesTea dummy
scoreboard objectives add TimeConsumeOxeyeDaisyTea dummy

#Поиск игрока для розжига огня
schedule clear dsb:events/fire/find_player
schedule function dsb:events/fire/find_player 2s
#
schedule clear dsb:events/schedules/1s
schedule function dsb:events/schedules/1s 1s

#Подсчет кол-ва убитых мобов для квестов
scoreboard objectives add QuestReputation dummy
scoreboard objectives add kill_count_bogged minecraft.killed:minecraft.bogged
scoreboard objectives add kill_count_cave_spider minecraft.killed:minecraft.cave_spider
scoreboard objectives add kill_count_creeper minecraft.killed:minecraft.creeper
scoreboard objectives add kill_count_drowned minecraft.killed:minecraft.drowned
scoreboard objectives add kill_count_enderman minecraft.killed:minecraft.enderman
scoreboard objectives add kill_count_husk minecraft.killed:minecraft.husk
scoreboard objectives add kill_count_phantom minecraft.killed:minecraft.phantom
scoreboard objectives add kill_count_skeleton minecraft.killed:minecraft.skeleton
scoreboard objectives add kill_count_slime minecraft.killed:minecraft.slime
scoreboard objectives add kill_count_spider minecraft.killed:minecraft.spider
scoreboard objectives add kill_count_stray minecraft.killed:minecraft.stray
scoreboard objectives add kill_count_witch minecraft.killed:minecraft.witch
scoreboard objectives add kill_count_zombie minecraft.killed:minecraft.zombie
scoreboard objectives add kill_count_blaze minecraft.killed:minecraft.blaze
scoreboard objectives add kill_count_ghast minecraft.killed:minecraft.ghast
scoreboard objectives add kill_count_hoglin minecraft.killed:minecraft.hoglin
scoreboard objectives add kill_count_magma_cube minecraft.killed:minecraft.magma_cube
scoreboard objectives add kill_count_piglin minecraft.killed:minecraft.piglin
scoreboard objectives add kill_count_wither_skeleton minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add kill_count_zombified_piglin minecraft.killed:minecraft.zombified_piglin


team modify ShadowClone friendlyFire false
team modify ShadowClone collisionRule never

# random value 0..999 dsb:bosses

scoreboard objectives add GameStage dummy

#Морской царь
scoreboard objectives add SeaKing dummy
scoreboard objectives add CountPlayersKillingBoss dummy
bossbar add dsb:boss.drowned_king {"translate":"dsb.entity.boss.drowned_king","color":"aqua"}
bossbar set dsb:boss.drowned_king color blue

#Темная душа
bossbar add dsb:boss.soul_of_abyss {"translate":"dsb.entity.boss.soul_of_abyss","color":"red"}
bossbar set dsb:boss.soul_of_abyss color red
scoreboard objectives add SoulOfAbyss dummy
team add SoulOfAbyss
team modify SoulOfAbyss friendlyFire false
team modify SoulOfAbyss collisionRule never
team add FortressEntities
team modify FortressEntities friendlyFire false

#Песчаные архивы
team add DesertArchivesEntities
team modify DesertArchivesEntities friendlyFire false
team modify DesertArchivesEntities collisionRule never

#замок Элеум Лойс
team add FrozenCastleEntities
team modify FrozenCastleEntities friendlyFire false
team modify FrozenCastleEntities collisionRule never


#Королева Элеум Лойс
bossbar add dsb:boss.winter {"translate":"dsb.entity.boss.winter","color":"aqua"}
bossbar set dsb:boss.winter color blue
scoreboard objectives add WinterQueenRain dummy
scoreboard objectives add WinterQueenLines dummy
scoreboard objectives add WinterQueenDashPlayers dummy
scoreboard objectives add WinterQueen dummy
team add WinterQueen
team modify WinterQueen friendlyFire false
team modify WinterQueen collisionRule never


###Для достижений
scoreboard objectives add dsb.adv.lose_hammer dummy
scoreboard objectives add dsb.adv.constructions_count dummy
scoreboard objectives add dsb.adv.research_recipe dummy
scoreboard objectives add dsb.adv.true_compost dummy
scoreboard objectives add dsb.adv.chill_guy minecraft.killed:minecraft.player
scoreboard objectives add dsb.adv.kill_mobs dummy
###


###Хранилища
#Изучения рецептов
function dsb:admin/set_recipes
function dsb:admin/storages/recipes
#Столы
function dsb:admin/storages/composter
function dsb:admin/storages/research_table
function dsb:admin/storages/water_collector
#конфиг страницам книг
function dsb:admin/storages/ench_pages
###


###Оптимизация сфер опыта
function optimization:load
###
