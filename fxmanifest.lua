fx_version 'cerulean'
game 'gta5'

author 'TheGeorge23'
description 'Sistema de moneda de supervivencia - Chatarra'
version '1.0.0'

shared_script 'config.lua'

client_script 'clientclient.lua'
server_script 'serverserver.lua'

files {
    'imagesscrap.png'
}

ui_page 'htmlindex.html'

-- Dependencias, si es necesario
dependencies {
    'qb-core', -- Si estás usando QBCore
    -- Otras dependencias que necesites
}
