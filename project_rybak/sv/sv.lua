ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('fishingrod', function(source)
	TriggerClientEvent('s_fishing:start', source)
end)


--Fishing stuff
RegisterServerEvent('s_fishing:caught')
AddEventHandler('s_fishing:caught', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local RBrackets = math.random(1, #Config.fishes)
    local name = GetPlayerName(source)
    if xPlayer ~=nil then 
        for k,v in pairs(Config.fishes[RBrackets]) do 
            if v.type == 'item' then
                xPlayer.addInventoryItem(v.itemName, v.howmany)
                sendToDiscord(66666, "Fishing", name .. " Caught: " ..v.itemName.. 'x ' ..v.howmany..'.', "s_fishingLOG")
            elseif v.type == 'weapon' then
                for i=1, v.howmany, 1 do
                    xPlayer.addWeapon(v.itemName, v.ammo)
                    sendToDiscord(66666, "Fishing", name .. " Caught: " ..v.itemName.. 'x ' ..v.ammo..'.', "s_fishingLOG")
                end
            elseif v.type == 'money' then
                xPlayer.addMoney(v.howmany)
                sendToDiscord(66666, "Fishing", name .. " Caught some money: "..v.howmany..'.', "s_fishingLOG")
            end
        end
    end
end)


function sendToDiscord(color, name, message, footer)
  local embed = {
        {
            ["color"] = color,
            ["title"] = "**".. name .."**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = footer,
            },
        }
    }
  PerformHttpRequest(Config.fishwebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end

function sendToDiscord2(color, name, message, footer)
    local embed = {
          {
              ["color"] = color,
              ["title"] = "**".. name .."**",
              ["description"] = message,
              ["footer"] = {
                  ["text"] = footer,
              },
          }
      }
    PerformHttpRequest(Config.sellwebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end

