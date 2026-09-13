$setblock ~ ~ ~ $(block)
#Время в которое обновится состояние хранилища
data modify block ~ ~-1 ~ server_data.state_updating_resumes_at set value 0