# TerraNostraRoleplay.


```
## Link do Mapa que usei: https://gta5mod.net/gta-5-mods/maps/mlo-gta-iv-burgershot-interior-sp-fivem-v2-0/


```
## Adiciona isto no @qb-core/shared/items.lua 
```
---Restaurante
["pao"]            	 = {["name"] = "pao",         		 	["label"] = "Pão",    				["weight"] = 1,       ["type"] = "item",      ["image"] = "bread.png",        		["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
['batatafritas'] 				 	 = {['name'] = 'batatafritas', 			  	  	['label'] = 'Batata Fritas', 				['weight'] = 1, 		['type'] = 'item', 		['image'] = 'fries.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
['nuggets'] 				 	 = {['name'] = 'nuggets', 			  	  	['label'] = 'Nuggets de Frango', 				['weight'] = 1, 		['type'] = 'item', 		['image'] = 'nugget.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
['oleofritar'] 				 	 = {['name'] = 'oleofritar', 			  	  	['label'] = 'Óleo para Fritar', 				['weight'] = 1, 		['type'] = 'item', 		['image'] = 'oleofritar.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
['sal'] 				 	 = {['name'] = 'sal', 			  	  	['label'] = 'Sal', 				['weight'] = 1, 		['type'] = 'item', 		['image'] = 'sal.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
['sumolaranja'] 				 	 = {['name'] = 'sumolaranja', 			  	  	['label'] = 'Sumo de Laranja', 				['weight'] = 1, 		['type'] = 'item', 		['image'] = 'sumolaranja.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
['sumomaça'] 				 	 = {['name'] = 'sumomaça', 			  	  	['label'] = 'Sumo de Maça', 				['weight'] = 1, 		['type'] = 'item', 		['image'] = 'sumomaça.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
['sumomorango'] 				 	 = {['name'] = 'sumomorango', 			  	  	['label'] = 'Sumo de Morango', 				['weight'] = 1, 		['type'] = 'item', 		['image'] = 'sumomorango.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
['gelo'] 				 	 = {['name'] = 'gelo', 			  	  	['label'] = 'Gelo', 				['weight'] = 1, 		['type'] = 'item', 		['image'] = 'ice.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
['copo'] 				 	 = {['name'] = 'copo', 			  	  	['label'] = 'Copo', 				['weight'] = 1, 		['type'] = 'item', 		['image'] = 'copo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
['nostraburguer'] 				 	 = {['name'] = 'nostraburguer', 			  	  	['label'] = 'NostraBurguer', 				['weight'] = 1, 		['type'] = 'item', 		['image'] = 'nostraburguer.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
['nostraburguer-kids'] 				 	 = {['name'] = 'nostraburguer-kids', 			  	  	['label'] = 'NostraBurguer Crianças', 				['weight'] = 1, 		['type'] = 'item', 		['image'] = 'nostraburguer-kids.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
['nostraveggie'] 				 	 = {['name'] = 'nostraveggie', 			  	  	['label'] = 'Nostra Veggie', 				['weight'] = 1, 		['type'] = 'item', 		['image'] = 'nostraveggie.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
["meat_chicken"]             = {["name"] = "meat_chicken",         		["label"] = "Carne de Frango",    			["weight"] = 1,       ["type"] = "item",      ["image"] = "meat_chicken.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_cow"]            	 = {["name"] = "meat_cow",         			["label"] = "Carne de Vaca",    			["weight"] = 1,      ["type"] = "item",      ["image"] = "meat_cow.png",        		["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
['tomato']                  = {['name'] = 'tomato',                     ['label'] = 'Tomates',               	['weight'] = 1,       ['type'] = 'item',      ['image'] = 'tomato.png',        			['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,    ['combinable'] = nil,   ['description'] = ''},
['orange'] 		            = {['name'] = 'orange', 			        ['label'] = 'Laranja', 	                ['weight'] = 1, 		['type'] = 'item', 		['image'] = 'orange.png', 	            	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = ''},
['apple'] 		            = {['name'] = 'apple', 			        	['label'] = 'Maça', 	                ['weight'] = 1, 		['type'] = 'item', 		['image'] = 'apple.png', 	            	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = ''},
['strawberry'] 		        = {['name'] = 'strawberry', 			    ['label'] = 'Morango', 	            ['weight'] = 1, 		['type'] = 'item', 		['image'] = 'strawberry.png', 	        	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = ''},
['lettuce']                 = {['name'] = 'lettuce',                    ['label'] = 'Alface',               	['weight'] = 1,       ['type'] = 'item',      ['image'] = 'lettuce.png',        			['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,    ['combinable'] = nil,   ['description'] = ''},
['potato']                  = {['name'] = 'potato',                     ['label'] = 'Batata',               	['weight'] = 1,       ['type'] = 'item',      ['image'] = 'potato.png',        			['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,    ['combinable'] = nil,   ['description'] = ''},
["tn_queijo"]				 = {["name"] = "tn_queijo", 					["label"] = "Queijo TerraNostra", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "tn_queijo.png", 		["unique"] = false, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},


```
## Adiciona no teu @qb-core/shared/jobs.lua 
```
	burguershot = {
		label = 'BurguerShot',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'BarMan', payment = 50 },
			['1'] = { name = 'Entregador', payment = 50 },
			['2'] = { name = 'Chefe', isboss = true, payment = 150 },
		},
	},
```

## Adiciona no Dpemotes.
```
["bsdrink"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "BS Drink", AnimationOptions =
   {
       Prop = 'prop_food_bs_juice02',
       PropBone = 28422,
       PropPlacement = {0.02, 0.0, -0.10, 0.0, 0.0, -0.50},
       EmoteLoop = true,
       EmoteMoving = true,
   }},

["fries"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Fries", AnimationOptions =
    {
       Prop = 'prop_food_bs_chips',
       PropBone = 60309,
       PropPlacement = { -0.0100, 0.0200, -0.0100, -175.1935, 97.6975, 13.9598 },
       EmoteMoving = true,
   }},

["fbbq"] = {"amb@prop_human_bbq@male@idle_a", "idle_b", "fbbq", AnimationOptions =
   {
       Prop = "prop_fish_slice_01",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       --
       EmoteLoop = true,
       EmoteMoving = false,
   }},

```

## Adiciona os 2 ficheiros .ogg  em [sounds] interact-sound/client/html/sounds
