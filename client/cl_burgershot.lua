local QBCore = exports['qb-core']:GetCoreObject()
PlayerJob = {}

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        PlayerJob = QBCore.Functions.GetPlayerData().job
        BurgerZones()
    end
end)

AddEventHandler('onResourceStop', function(resourceName) 
    if GetCurrentResourceName() == resourceName then
        for k, v in pairs(Config.Zones) do
            exports['qb-target']:RemoveZone("burgershot"..k)
        end
        DeletePed(jobPed)
    end 
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
    BurgerZones()
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    for k, v in pairs(Config.Zones) do
        exports['qb-target']:RemoveZone("burgershot"..k)
    end
    DeletePed(jobPed)
end)

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(0)
    end
end

function BurgerZones()
    for k, v in pairs(Config.Zones) do
        exports['qb-target']:AddCircleZone("burgershot"..k, v.coords, v.radius, {
            name = "burgershot"..k,
            debugPoly = false,
            useZ=true,
        }, {
            options = {
                {
                    type = "client",
                    event = v.event,
                    icon = v.icon,
                    label = v.label,
                    job = v.job,
                },
            },
            distance = 1.5
        })
    end
    if not DoesEntityExist(jobPed) then

	RequestModel(Config.GaragePed) while not HasModelLoaded(Config.GaragePed) do Wait(0) end

	jobPed = CreatePed(0, Config.GaragePed, Config.PedLocation, false, false)

	SetEntityAsMissionEntity(jobPed, true, true)
	SetPedFleeAttributes(jobPed, 0, 0)
	SetBlockingOfNonTemporaryEvents(jobPed, true)
	SetEntityInvincible(jobPed, true)
	FreezeEntityPosition(jobPed, true)


	exports['qb-target']:AddTargetEntity(jobPed, { 
	    options = {
		{ 
		    type = "client",
		    event = "tn_burguershot:client:jobGarage",
		    icon = "fa-solid fa-clipboard-check",
		    label = "Garagem",
		    job = "burguershot"
		},
		{ 
		    type = "client",
		    event = "tn_burguershot:client:storeGarage",
		    icon = "fa-solid fa-clipboard-check",
		    label = "Guardar Veículo",
		    job = "burguershot"
		},
	    }, 
	    distance = 1.5, 
	})
    end
end

CreateThread(function()
    DecorRegister("bs_vehicle", 1)
end)

RegisterNetEvent('tn_burguershot:client:jobGarage', function(vehicle)
    local vehicle = Config.Vehicle
    local coords = Config.VehicleSpawn
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "BURG"..tostring(math.random(1000, 9999)))
        DecorSetFloat(veh, "bs_vehicle", 1)
        SetEntityAsMissionEntity(veh, true, true)
        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
        SetVehicleEngineOn(veh, true, true)
        CurrentPlate = QBCore.Functions.GetPlate(veh)
        SetVehicleFuelLevel(veh, 100.0)
    end, coords, true)
end)

RegisterNetEvent('tn_burguershot:client:storeGarage', function()
    local veh = QBCore.Functions.GetClosestVehicle()
    if DecorExistOn((veh), "bs_vehicle") then
        QBCore.Functions.DeleteVehicle(veh)
        QBCore.Functions.Notify("Devolveste o Veículo.", "success")
    else
        QBCore.Functions.Notify("Este veículo não pertence à empresa.", "error")
    end
end)
    
RegisterNetEvent("tn_burguershot:client:frontTray", function()
    TriggerEvent("inventory:client:SetCurrentStash", "bsfoodtray")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "bsfoodtray", {
        maxweight = 30000,
        slots = 12,
    })
end)

RegisterNetEvent("tn_burguershot:client:frontTray2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "bsfoodtray2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "bsfoodtray2", {
        maxweight = 30000,
        slots = 12,
    })
end)
RegisterNetEvent("tn_burguershot:client:frontTray3", function()
    TriggerEvent("inventory:client:SetCurrentStash", "bsfoodtray3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "bsfoodtray3", {
        maxweight = 30000,
        slots = 12,
    })
end)
RegisterNetEvent("tn_burguershot:client:frontTray4", function()
    TriggerEvent("inventory:client:SetCurrentStash", "bsfoodtray4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "bsfoodtray4", {
        maxweight = 30000,
        slots = 12,
    })
end)


RegisterNetEvent("tn_burguershot:client:passThrough", function()
    TriggerEvent("inventory:client:SetCurrentStash", "bsBigTray")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "bsBigTray", {
        maxweight = 300000,
        slots = 15,
    })
end)

RegisterNetEvent("tn_burguershot:client:jobFridge", function()
    TriggerEvent("inventory:client:SetCurrentStash", "bsFridge")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "bsFridge", {
        maxweight = 3000000,
        slots = 30,
    })
end)

RegisterNetEvent('tn_burguershot:clientToggleDuty', function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)


