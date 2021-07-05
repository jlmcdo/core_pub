-- BLIP DISCORD

local blips = {
	{title=".gg/WxM", colour=1, id=88, x = -541.16, y = -210.44, z = 37.65},
  }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

-- Crédit dev

RegisterCommand("dev",function()
	credit()
end)

function credit()
	ESX.ShowNotification("Cette ~r~base~w~ a été ~r~développé~w~ par ~r~JL McDo~w~") 
end

-- Crédit discord

RegisterCommand("dev",function()
	credit()
end)

function credit()
	ESX.ShowNotification("Le ~p~discord~w~ du ~p~serveur~w~ est ") 
end

-- Lunch script

--

print("^4McDo ^7| ^1core_mcdo2 démarré avec succés!")

--

-- STAFF


RegisterCommand("staff",function()
	credit()
end)

function credit()
	ESX.ShowNotification("Equipe ~y~staff~w~ est compose de ~u~[G-S]~w~ Helios ~y~[S]~w~ Nathan ~y~[S]~w~ Viiper") 
end
