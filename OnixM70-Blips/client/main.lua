QBCore = exports['qb-core']:GetCoreObject()

-- Job ları almak için
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    generateBlips()
end)





function generateBlips()
    --local coordsa = vector3(9597.03, -6958.57, 127.55)

    local blips = AddBlipForRadius(coordsa, 90.0) -- need to have .0
    SetBlipColour(blips, 1)
    SetBlipAlpha(blips, 128)

    --local coordsfaeda = vector3(9597.03, -6958.57, 127.55)

    local blipsdasds = AddBlipForRadius(coordsfaeda, 100.0) -- need to have .0
    SetBlipColour(blipsdasds, 6)
    SetBlipAlpha(blipsdasds, 128)

    local Player = QBCore.Functions.GetPlayerData()
    if PL.ActivateSingle then
        for _, v in pairs(PL.BlipsSingle) do
            blip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
            SetBlipDisplay(blip, 4)
            SetBlipSprite(blip, v.sprite)
            SetBlipColour(blip, v.color)
            SetBlipScale(blip, v.scale)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.name)
            EndTextCommandSetBlipName(blip)
        end
    end

    if Player.gang.name == 'vagos' or Player.gang.name == 'families' or Player.gang.name == 'lostmc' or Player.gang.name == 'ballas' then
        for _, v in pairs(PL.BlipsRadius) do
            blip = AddBlipForRadius(v.coords.x, v.coords.y, v.coords.z, v.radius)
            SetBlipSprite(blip, v.sprite)
            SetBlipColour(blip, v.color)
            SetBlipAlpha(blip, v.transparency)
        end
    end
end