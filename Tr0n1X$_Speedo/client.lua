function text(content)
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(1.9,1.9)
    SetTextEntry("STRING")
    AddTextComponetString(content)
    DrawText(0.9,0.7)
end

Citizen.CreateThread(function()

    while true do
        Citizen.Wait(2)
        --[[
            kph's factor = 3.6
            mph's factor = 2.23
        ]]
        local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1),false))*3.6
        -- Check if the ped is in a vehicle
        if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            text(math.ceil(speed))
        end    
    end    

end)