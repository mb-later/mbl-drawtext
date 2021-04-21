# mbl-drawtext
fivemsociety-drawtext


Guide;

function DrawText()
    local title, message, icon
    title = 'MBL'
    message = '<b><span style="font-size:18px">[ <span class="text-danger">E</span> ] <span class="text-primary">Test</span></span></b>'
    icon = 'fas fa-heartbeat'
    TriggerEvent('mbl_drawtext:showNotification', { title = title, message = message, icon = icon })
end


RegisterCommand("drawtext", function()
    DrawText()
end)

RegisterCommand("drawsil", function ()
    TriggerEvent("mbl_drawtext:hideNotification")
end)
