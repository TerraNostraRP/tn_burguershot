local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('tn_burguershot:server:makenostraburguer', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("pao", 2)
    Player.Functions.RemoveItem("meat_cow", 2)
    Player.Functions.RemoveItem("lettuce", 1)
    Player.Functions.RemoveItem("tomato", 1)
    Player.Functions.RemoveItem("tn_queijo", 2)
    Player.Functions.AddItem("nostraburguer", 1)
end)

RegisterNetEvent('tn_burguershot:server:makenostraburguer-kids', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("pao", 2)
    Player.Functions.RemoveItem("meat_cow", 1)
    Player.Functions.RemoveItem("lettuce", 1)
    Player.Functions.RemoveItem("tomato", 1)
    Player.Functions.AddItem("nostraburguer-kids", 1)
end)

RegisterNetEvent('tn_burguershot:server:makebatatafritas', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("potato", 2)
    Player.Functions.RemoveItem("oleofritar", 4)
    Player.Functions.RemoveItem("sal", 2)
    Player.Functions.AddItem("batatafritas", 1)
end)

RegisterNetEvent('tn_burguershot:server:makenuggets', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("meat_chicken", 5)
    Player.Functions.RemoveItem("oleofritar", 4)
    Player.Functions.RemoveItem("sal", 2)
    Player.Functions.AddItem("nuggets", 1)
end)

RegisterNetEvent('tn_burguershot:server:makenostraveggie', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("pao", 2)
    Player.Functions.RemoveItem("lettuce", 1)
    Player.Functions.RemoveItem("tomato", 1)
    Player.Functions.AddItem("nostraveggie", 1)
end)

RegisterNetEvent('tn_burguershot:server:makesumomaça', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("apple", 5)
    Player.Functions.RemoveItem("gelo", 2)
    Player.Functions.RemoveItem("copo", 1)
    Player.Functions.AddItem("sumomaça", 1)
end)

RegisterNetEvent('tn_burguershot:server:makesumolaranja', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("orange", 5)
    Player.Functions.RemoveItem("gelo", 2)
    Player.Functions.RemoveItem("copo", 1)
    Player.Functions.AddItem("sumolaranja", 1)
end)

RegisterNetEvent('tn_burguershot:server:makesumomorango', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("strawberry", 5)
    Player.Functions.RemoveItem("gelo", 2)
    Player.Functions.RemoveItem("copo", 1)
    Player.Functions.AddItem("sumomorango", 1)
end)


---


QBCore.Functions.CreateUseableItem("sumolaranja", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("tn_burguershot:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("sumomaça", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("tn_burguershot:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("sumomorango", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("tn_burguershot:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("nostraburguer", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("tn_burguershot:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("nostraburguer-kids", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("tn_burguershot:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("batatafritas", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("tn_burguershot:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("nuggets", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("tn_burguershot:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("nostraveggie", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("tn_burguershot:client:Eat", source, item.name)
    end
end)

