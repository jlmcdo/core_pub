ESX                  = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Annonce IG /announce

TriggerEvent('es:addGroupCommand', 'announce', "mod", function(source, args, user)
	TriggerClientEvent('announce', -1, "~o~ANNONCE", table.concat(args, " "), 5)
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Autorisations insuffisantes !")
end, {help = "Annoncer un message à l'ensemble du serveur", params = {{name = "announcement", help = "Le message à annoncer"}}})

-- Blacklist de la touche Supp

RegisterServerEvent("sbMsg")
AddEventHandler("sbMsg", function()
	DropPlayer(source, "Cette touche est blacklist boufons")