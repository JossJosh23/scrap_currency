Config = {}

-- Configuración de la chatarra
Config.ScrapItem = {
    name = "chatarra",
    label = "Chatarra",
    weight = 1.0,
    maxStack = 100, -- Máxima cantidad que un jugador puede llevar
    description = "Pedazos de metal valioso para el comercio y la creación de herramientas."
}

-- Lugares donde se puede encontrar chatarra
Config.LootableLocations = {
    {name = "Vehículo Abandonado", chance = 70, amount = {1, 3}},
    {name = "Cadáver de Zombie", chance = 50, amount = {0, 2}},
    {name = "Edificio Derruido", chance = 80, amount = {2, 5}},
}

-- Requerimientos para mejorar un arma con chatarra
Config.WeaponUpgradeCost = 10 -- Cantidad de chatarra requerida para mejorar un arma
