function text(content, r, g, b, a)
    SetTextFont(2)
    SetTextProportional(0)
    SetTextScale(1.9, 1.9)
    SetTextColour(r, g, b, a)
    SetTextEntry("STRING")
    AddTextComponentString(content .. " KMH")
    DrawText(0.8, 0.75)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2)
        local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * 3.6 -- 3.6 FOR KMH | 2.2369 FOR MPH
        if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
            text(math.floor(speed), 0, 128, 255, 255)
        end
    end
end)
