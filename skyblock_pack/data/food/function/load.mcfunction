scoreboard players set #6 TeaScore 6
scoreboard players set #10 TeaScore 10

#Добавление мобы в команду для мирных
schedule clear food:tea/sakura/team/search_team_player
function food:tea/sakura/team/search_team_player

team add PeacefulEntity
team modify PeacefulEntity friendlyFire false