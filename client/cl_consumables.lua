local QBCore = exports['qb-core']:GetCoreObject()   

RegisterNetEvent('tn_burguershot:client:Eat', function(itemName)
    if itemName == "batatafritas" then
        TriggerEvent('animations:client:EmoteCommandStart', {"fries"})
    else
        TriggerEvent('animations:client:EmoteCommandStart', {"eat"})
    end
    QBCore.Functions.Progressbar("eat_something", "Comendo..", 5000, false, false, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        if Config.NewCore then
    	    TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + HungerFill[itemName])
        else
            TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + HungerFill[itemName])
        end
        TriggerServerEvent('hud:server:RelieveStress', math.random(5, 8))
    end)
end)

RegisterNetEvent('tn_burguershot:client:Drink', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"bsdrink"})
    QBCore.Functions.Progressbar("drink_something", "Bebendo..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
	if Config.NewCore then
    	    TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ThirstFill[itemName])
        else
            TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ThirstFill[itemName])
        end
        TriggerServerEvent('hud:server:RelieveStress', math.random(5, 8))
    end)
end)


-- PRODUCTION EVENTS --          

RegisterNetEvent('tn_burguershot:client:makenostraburguer', function()
	local ingredients = QBCore.Functions.HasItem({'lettuce', 'tomato', 'meat_cow', 'pao', 'tn_queijo'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"fbbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("bs_stuff", "Cozinhando Hamburguer..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("tn_burguershot:server:makenostraburguer")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pao"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["meat_cow"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["lettuce"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tomato"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tn_queijo"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["nostraburguer"], "add")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('tn_burguershot:client:cookBurgers')
        end, function() -- Cancel
            QBCore.Functions.Notify("Queimaste o Hamburguer.", "error")
            TriggerEvent('tn_burguershot:client:cookBurgers')
        end)
    else		
        QBCore.Functions.Notify('Não tens os Ingredientes.', 'error')
    end
end)

RegisterNetEvent('tn_burguershot:client:makenostraburguer-kids', function()
	local ingredients = QBCore.Functions.HasItem({'lettuce', 'tomato', 'meat_cow', 'pao'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"fbbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("bs_stuff", "Cozinhando Hamburguer..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("tn_burguershot:server:makenostraburguer-kids")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pao"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["meat_cow"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["lettuce"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tomato"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["nostraburguer-kids"], "add")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('tn_burguershot:client:cookBurgers')
        end, function() -- Cancel
            QBCore.Functions.Notify("Queimaste o Hamburguer.", "error")
            TriggerEvent('tn_burguershot:client:cookBurgers')
        end)
    else		
        QBCore.Functions.Notify('Não tens os Ingredientes.', 'error')
    end
end)

RegisterNetEvent('tn_burguershot:client:makenostraveggie', function()
	local ingredients = QBCore.Functions.HasItem({'lettuce', 'tomato', 'pao'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"fbbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("bs_stuff", "Cozinhando Hamburguer..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("tn_burguershot:server:makenostraveggie")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pao"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["lettuce"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tomato"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["nostraveggie"], "add")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('tn_burguershot:client:cookBurgers')
        end, function() -- Cancel
            QBCore.Functions.Notify("Queimaste o Hamburguer.", "error")
            TriggerEvent('tn_burguershot:client:cookBurgers')
        end)
    else		
        QBCore.Functions.Notify('Não tens os Ingredientes.', 'error')
    end
end)


RegisterNetEvent('tn_burguershot:client:makebatatafritas', function()
	local ingredients = QBCore.Functions.HasItem({'potato', 'sal', 'oleofritar'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"fbbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("bs_stuff", "Fritando Batatas..", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("tn_burguershot:server:makebatatafritas")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["potato"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["oleofritar"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sal"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["batatafritas"], "add")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Queimas-te a Batata", "error")
        end)
    else		
        QBCore.Functions.Notify('Falta-te Ingrediente..', 'error')
    end
end)

RegisterNetEvent('tn_burguershot:client:makenuggets', function()
	local ingredients = QBCore.Functions.HasItem({'meat_chicken', 'oleofritar', 'sal'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"fbbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("bs_stuff", "Fritando Nuggets..", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("tn_burguershot:server:makenuggets")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["meat_chicken"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["oleofritar"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sal"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["nuggets"], "add")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Queimas-te a Batata", "error")
        end)
    else		
        QBCore.Functions.Notify('Falta-te Ingrediente..', 'error')
    end
end)

RegisterNetEvent('tn_burguershot:client:makesumomaça', function()
	local ingredients = QBCore.Functions.HasItem({'apple', 'gelo', 'copo'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        QBCore.Functions.Progressbar("bs_stuff", "Fazendo Sumo..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("tn_burguershot:server:makesumomaça")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["apple"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gelo"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["copo"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sumomaça"], "add")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Derramaste a bebida.", "error")
        end)
    else		
        QBCore.Functions.Notify('Não tens os Ingredientes.', 'error')
    end
end)

RegisterNetEvent('tn_burguershot:client:makesumolaranja', function()
	local ingredients = QBCore.Functions.HasItem({'orange', 'gelo', 'copo'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        QBCore.Functions.Progressbar("bs_stuff", "Fazendo Sumo..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("tn_burguershot:server:makesumolaranja")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["orange"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gelo"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["copo"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sumolaranja"], "add")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Derramaste a bebida.", "error")
        end)
    else		
        QBCore.Functions.Notify('Não tens os Ingredientes.', 'error')
    end
end)

RegisterNetEvent('tn_burguershot:client:makesumomorango', function()
	local ingredients = QBCore.Functions.HasItem({'strawberry', 'gelo', 'copo'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        QBCore.Functions.Progressbar("bs_stuff", "Fazendo Sumo..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("tn_burguershot:server:makesumomorango")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["strawberry"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gelo"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["copo"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sumomaça"], "add")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Derramaste a bebida.", "error")
        end)
    else		
        QBCore.Functions.Notify('Não tens os Ingredientes.', 'error')
    end
end)


-- MENUS --     

RegisterNetEvent('tn_burguershot:closemenu', function()
    ClearPedTasksImmediately(PlayerPedId())
    TriggerEvent("qb-menu:closeMenu")
end)

RegisterNetEvent('tn_burguershot:client:cookBurgers', function()
    SetEntityCoords(PlayerPedId(), -1196.02, -897.99, 13.89)
    SetEntityHeading(PlayerPedId(), 342.91)
    exports['qb-menu']:openMenu({
        {
            header = "Placa de Aquecimento",
            txt = "",
            isMenuHeader = true
        },
        {
            header = "TerraNostra Burguer",
            txt = "Ingredientes:</p>2x Pao | 2x Carne de Vaca | 1x Alface | 1x Tomato | 1x Queijo TerraNostra",
            icon = "fa-solid fa-burger",
            params = {
                event = "tn_burguershot:client:makenostraburguer",
            }
        },
        {
            header = "TerraNostra Burguer Kids",
            txt = "Ingredientes:</p>2x Pao | 1x Carne de Vaca | 1x Alface | 1x Tomato",
            icon = "fa-solid fa-burger",
            params = {
                event = "tn_burguershot:client:makenostraburguer-kids",
            }
        },
        {
            header = "TerraNostra Veggi Burguer",
            txt = "Ingredientes:</p>2x Pao | 1x Alface | 1x Tomato",
            icon = "fa-solid fa-burger",
            params = {
                event = "tn_burguershot:client:makenostraveggie",
            }
        },
        {
            header = "Sair",
            icon = "fa-solid fa-angle-left",
            params = {
                event = "tn_burguershot:closemenu"
            }
        },
    })
end)

RegisterNetEvent('tn_burguershot:client:drinkStation', function()
    SetEntityCoords(PlayerPedId(), -1191.63, -898.58, 13.89)
    SetEntityHeading(PlayerPedId(), 225.59)
    exports['qb-menu']:openMenu({
        {
            header = "Máquina de Sumos",
            txt = "",
            isMenuHeader = true
        },
        {
            header = "Sumo de Laranja",
            txt = "Ingredientes:</p>1x Copo | 5x Laranja | 1x Gelo",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "tn_burguershot:client:makesumolaranja",
            }
        },
        {
            header = "Sumo de Maça",
            txt = "Ingredientes:</p>1x Copo | 5x Maças | 1x Gelo",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "tn_burguershot:client:makesumomaça",
            }
        },
        {
            header = "Sumo de Morango",
            txt = "Ingredientes:</p>1x Copo | 5x Morangos | 1x Gelo",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "tn_burguershot:client:makesumomorango",
            }
        },
        {
            header = "Sair",
            icon = "fa-solid fa-angle-left",
            params = {
                event = "tn_burguershot:closemenu"
            }
        },
    })
end)
