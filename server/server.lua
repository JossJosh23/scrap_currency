-- Código en el lado del servidor

-- Tabla de jugadores
local players = {}

-- Añadir chatarra al inventario del jugador
RegisterNetEvent('scrap_currency:giveScrap')
AddEventHandler('scrap_currency:giveScrap', function(amount)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src) -- Asumiendo que usas QBCore
    if xPlayer then
        xPlayer.Functions.AddItem(Config.ScrapItem.name, amount)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ScrapItem.name], "add")
    end
end)

-- Mejorar un arma usando chatarra
RegisterNetEvent('scrap_currency:upgradeWeapon')
AddEventHandler('scrap_currency:upgradeWeapon', function(weaponName)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    if xPlayer then
        local scrapAmount = xPlayer.Functions.GetItemByName(Config.ScrapItem.name)
        if scrapAmount and scrapAmount.amount >= Config.WeaponUpgradeCost then
            xPlayer.Functions.RemoveItem(Config.ScrapItem.name, Config.WeaponUpgradeCost)
            -- Aquí implementas la mejora del arma
            TriggerClientEvent('scrap_currency:upgradeSuccess', src, weaponName)
        else
            TriggerClientEvent('scrap_currency:upgradeFailed', src)
        end
    end
end)
