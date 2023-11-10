Config = {}

Config.NewCore = true

Config.GaragePed = "csb_burgerdrug"

Config.PedLocation = vector4(-1177.24, -900.88, 12.64, 220.91)

Config.VehicleSpawn = vector4(-1172.25, -898.57, 13.38, 330.32)

Config.Vehicle = 'stalion2'

HungerFill = { -- How much they fill your hunger
    ["nostraburguer"] = math.random(35, 45),
    ["nostraburguer-kids"] = math.random(35, 45),
    ["batatafritas"] = math.random(35, 45),
    ["nuggets"] = math.random(35, 45),
    ["nostraveggie"] = math.random(20, 35),
}

ThirstFill = { -- How much they fill your thirst.
    ["sumolaranja"] = math.random(25, 35),
    ["sumomaça"] = math.random(25, 35),
    ["sumomorango"] = math.random(25, 35),
}

Config.Zones = {
    [1] = { coords = vector3(-1194.5, -894.76, 14.0), radius = 0.8, icon = "far fa-clipboard", event = "tn_burguershot:client:frontTray", label = "Tabuleiro de comida", }, 
    [2] = { coords = vector3(-1198.54, -895.68, 14.0), radius = 0.9, icon = "fa-solid fa-beer-mug-empty", event = "tn_burguershot:client:drinkStation", label = "Fazer Bebidas", job = "burguershot" }, 
    [3] = { coords = vector3(-1198.92, -901.86, 14.0), radius = 0.9, icon = "fa-solid fa-burger", event = "tn_burguershot:client:cookBurgers", label = "Fazer Hamburguers", job = "burguershot" }, 
    [4] = { coords = vector3(-1200.59, -899.43, 14.0), radius = 1.55, icon = "fa-solid fa-fire-burner", event = "tn_burguershot:client:makebatatafritas", label = "Fritar Batatas", job = "burguershot" },
    [5] = { coords = vector3(-1202.93, -895.54, 14.0), radius = 1.15, icon = "fa-solid fa-square-up-right", event = "tn_burguershot:client:jobFridge", label = "Frigorífico", job = "burguershot" },
    [6] = { coords = vector3(-1196.14, -895.24, 14.0), radius = 1.0, icon = "far fa-clipboard", event = "tn_burguershot:client:passThrough", label = "Tabuleiro Grande", job = "burguershot" },
    [7] = { coords = vector3(-1193.02, -898.65, 14.0), radius = 0.6, icon = "fa-solid fa-clock", event = "tn_burguershot:clientToggleDuty", label = "Entrar/Sair de Serviço", job = "burguershot" },
    [8] = { coords = vector3(-1201.66, -897.86, 14.0), radius = 0.6, icon = "fa-solid fa-clock", event = "tn_burguershot:client:makenuggets", label = "Fazer Nuggets", job = "burguershot" },
}


