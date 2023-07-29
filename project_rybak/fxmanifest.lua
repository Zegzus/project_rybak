fx_version 'adamant'

game 'gta5'

author 'Slerbmonsteri#5636'
description 's_fishing edited by Hexus for ProjectFive' --Made by Slerbamonsteri#5636

version '1.0.0'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/index.js',
    'html/index.css',
    'html/reset.css'
}

client_scripts {
    'cl/cl.lua',
    'cl/skillcheck.lua',
    'cl/shops.lua',
    'config/config.lua'
}

server_scripts {
    'sv/sv.lua',
    'sv/config.lua',
    'config/config.lua'
}