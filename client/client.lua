-- Código en el lado del cliente

-- Notificar al jugador
function Notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(false, true)
end

-- Encontrar chatarra al lootear un objeto
function LootScrap(location)
    local chance = math.random(1, 100)
    if chance <= location.chance then
        local amount = math.random(location.amount[1], location.amount[2])
        TriggerServerEvent('scrap_currency:giveScrap', amount)
        Notify("Has encontrado " .. amount .. " unidades de chatarra.")
    else
        Notify("No encontraste nada.")
    end
end

-- Ejemplo: Lootear un vehículo abandonado
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(0, 38) then -- E key
            LootScrap(Config.LootableLocations[1])
        end
    end
end)
