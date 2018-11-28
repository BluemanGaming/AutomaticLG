-- if something doesnt work, dont change it. goto @lukepollie or the orriginal post and request help !!!
-- if something doesnt work, dont change it. goto @lukepollie or the orriginal post and request help !!!
-- if something doesnt work, dont change it. goto @lukepollie or the orriginal post and request help !!!
-- if something doesnt work, dont change it. goto @lukepollie or the orriginal post and request help !!!
-- if something doesnt work, dont change it. goto @lukepollie or the orriginal post and request help !!!


Citizen.CreateThread(function()
    while true do
        local PlayerPed = GetPlayerPed(PlayerId())
        if IsPedInAnyPlane(PlayerPed) then
            local veh = GetVehiclePedIsIn(GetPlayerPed(PlayerId()), false)
            if GetEntityHeightAboveGround(veh) > 20.0 and GetVehicleLandingGear(veh) == 0 then
                SetVehicleLandingGear(veh, 1)
            else
                SetVehicleLandingGear(veh, 2)
            end
        end
        Citizen.Wait(0)
    end
end)
