

RegisterNetEvent('RLCore:Client:OnPlayerLoaded')
AddEventHandler('RLCore:Client:OnPlayerLoaded', function()
	TriggerEvent('mbl_drawtext:hideNotification')
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function()
    TriggerEvent('mbl_drawtext:hideNotification')
end)

RegisterNetEvent('mbl_drawtext:showNotification')
AddEventHandler('mbl_drawtext:showNotification', function(args)
    if args and args.message ~= nil and args.title ~= nil then
        icon = args.icon or "fas fa-question-square"
        SendNUIMessage({
            action = "showNotification",
            message = args.message,
            title = args.title,
            icon = icon
        })
    end
end)

RegisterNetEvent('mbl_drawtext:hideNotification')
AddEventHandler('mbl_drawtext:hideNotification', function()
    SendNUIMessage({
        action = "hideNotification",
    })
end)


RegisterCommand("drawtext", function()
    DrawText()
end)

RegisterCommand("drawsil", function ()
    TriggerEvent("mbl_drawtext:hideNotification")
end)
function DrawText() local title, message, icon title = 'Fivemsociety31313131.com' message = 'Fivemsociety.com - [E] Tuşuna basarak mağazayı açabilirsin.' icon = 'fas fa-store' TriggerEvent('mbl_drawtext:showNotification', { title = title, message = message, icon = icon }) end
