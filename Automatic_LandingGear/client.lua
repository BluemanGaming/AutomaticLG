-- if something doesnt work, dont change it. goto @lukepollie or the orriginal post and request help !!!
-- if something doesnt work, dont change it. goto @lukepollie or the orriginal post and request help !!!
-- if something doesnt work, dont change it. goto @lukepollie or the orriginal post and request help !!!
-- if something doesnt work, dont change it. goto @lukepollie or the orriginal post and request help !!!
-- if something doesnt work, dont change it. goto @lukepollie or the orriginal post and request help !!!


Citizen.CreateThread(function()
    while true do
        local PlayerPed = GetPlayerPed(-1)
        if IsPedInAnyPlane(PlayerPed) then
            local veh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
            if GetEntityHeightAboveGround(veh) > 20.0 and GetVehicleLandingGear(veh) == 0 then
                SetVehicleLandingGear(veh, 1)
            elseif GetEntityHeightAboveGround(veh) < 20.0 and GetVehicleLandingGear(veh) ~= 0 then
                SetVehicleLandingGear(veh, 2)
            end
        end
        Citizen.Wait(0)
    end
end)