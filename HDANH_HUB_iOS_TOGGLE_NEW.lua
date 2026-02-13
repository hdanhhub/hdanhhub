-- This file was deobfuscated using Scene Deobfuscator discord.gg/deobfuscate :D

hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function()
    -- empty block
end)
hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function()
    -- empty block
end)
-- Kiểm tra game Blox Fruits
if game.PlaceId == 2753915549 then
    World1 = true
    print("🌊 Sea 1 - First Sea")
elseif game.PlaceId == 4442272183 then
    World2 = true
    print("🌊 Sea 2 - Second Sea")
elseif game.PlaceId == 7449423635 then
    World3 = true
    print("🌊 Sea 3 - Third Sea")
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "❌ Lỗi!";
        Text = "Script chỉ hoạt động trong Blox Fruits!";
        Duration = 5;
    })
    wait(3)
    error("Không phải game Blox Fruits!")
end

-- [Giữ nguyên các function từ file gốc]
function MaterialMon()
    if _G.SelectMaterial ~= "Radiactive Material" then
        if _G.SelectMaterial ~= "Leather + Scrap Metal" then
            if _G.SelectMaterial ~= "Magma Ore" then
                if _G.SelectMaterial ~= "Fish Tail" then
                    if _G.SelectMaterial == "Angel Wings" then
                        MMon = "Royal Soldier"
                        MPos = CFrame.new(-7759.45898, 5606.93652, -1862.70276, -0.866007447, 0, -0.500031412, 0, 1, 0, 0.500031412, 0, -0.866007447)
                        SP = "SkyArea2"
                    elseif _G.SelectMaterial == "Mystic Droplet" then
                        MMon = "Water Fighter"
                        MPos = CFrame.new(-3331.70459, 239.138336, -10553.3564, -0.29242146, 0, 0.95628953, 0, 1, 0, -0.95628953, 0, -0.29242146)
                        SP = "ForgottenIsland"
                    elseif _G.SelectMaterial == "Vampire Fang" then
                        MMon = "Vampire"
                        MPos = CFrame.new(-6132.39453, 9.00769424, -1466.16919, -0.927179813, 0, -0.374617696, 0, 1, 0, 0.374617696, 0, -0.927179813)
                        SP = "Graveyard"
                    elseif _G.SelectMaterial == "Gunpowder" then
                        MMon = "Pistol Billionaire"
                        MPos = CFrame.new(-185.693283, 84.7088699, 6103.62744, 0.90629667, 0, -0.422642082, 0, 1, 0, 0.422642082, 0, 0.90629667)
                        SP = "Mansion"
                    elseif _G.SelectMaterial ~= "Mini Tusk" then
                        if _G.SelectMaterial == "Conjured Cocoa" then
                            MMon = "Chocolate Bar Battler"
                            MPos = CFrame.new(582.828674, 25.5824986, -12550.7041, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
                            SP = "Chocolate"
                        end
                    else
                        MMon = "Mythological Pirate"
                        MPos = CFrame.new(-13456.0498, 469.433228, -7039.96436, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                        SP = "BigMansion"
                    end
                elseif game.PlaceId == 2753915549 then
                    MMon = "Fishman Warrior"
                    MPos = CFrame.new(60943.9023, 17.9492188, 1744.11133, 0.826706648, 0, -0.562633216, 0, 1, 0, 0.562633216, 0, 0.826706648)
                    SP = "Underwater City"
                    MMon = "Fishman Commando"
                    MPos = CFrame.new(61760.8984, 18.0800781, 1460.11133, -0.632549644, 0, -0.774520278, 0, 1, 0, 0.774520278, 0, -0.632549644)
                    SP = "Underwater City"
                elseif game.PlaceId == 7449423635 then
                    MMon = "Fishman Captain"
                    MPos = CFrame.new(-10828.1064, 331.825989, -9049.14648, -0.0912091732, 0, 0.995831788, 0, 1, 0, -0.995831788, 0, -0.0912091732)
                    SP = "PineappleTown"
                end
            elseif game.PlaceId == 2753915549 then
                MMon = "Military Soldier"
                MPos = CFrame.new(-5565.60156, 9.10001755, 8327.56934, -0.838688731, 0, -0.544611216, 0, 1, 0, 0.544611216, 0, -0.838688731)
                SP = "Magma"
                MMon = "Military Spy"
                MPos = CFrame.new(-5806.70068, 78.5000458, 8904.46973, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
                SP = "Magma"
            elseif game.PlaceId == 4442272183 then
                MMon = "Lava Pirate"
                MPos = CFrame.new(-5158.77051, 14.4791956, -4654.2627, -0.848060489, 0, -0.529899538, 0, 1, 0, 0.529899538, 0, -0.848060489)
                SP = "CircleIslandFire"
            end
        elseif game.PlaceId == 2753915549 then
            MMon = "Pirate"
            MPos = CFrame.new(-967.433105, 13.5999937, 4034.24707, -0.258864403, 0, -0.965913713, 0, 1, 0, 0.965913713, 0, -0.258864403)
            SP = "Pirate"
            MMon = "Brute"
            MPos = CFrame.new(-1191.41235, 15.5999985, 4235.50928, 0.629286051, 0, -0.777173758, 0, 1, 0, 0.777173758, 0, 0.629286051)
            SP = "Pirate"
        elseif game.PlaceId ~= 4442272183 then
            if game.PlaceId == 7449423635 then
                MMon = "Pirate Millionaire"
                MPos = CFrame.new(-118.809372, 55.4874573, 5649.17041, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                SP = "Default"
            end
        else
            MMon = "Mercenary"
            MPos = CFrame.new(-986.774475, 72.8755951, 1088.44653, -0.656062722, 0, 0.754706323, 0, 1, 0, -0.754706323, 0, -0.656062722)
            SP = "DressTown"
        end
    else
        MMon = "Factory Staff"
        MPos = CFrame.new(-105.889565, 72.8076935, -670.247986, -0.965929747, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, -0.965929747)
        SP = "Bar"
    end
end

function CheckQuest()
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel >= 1 and MyLevel <= 9 or SelectMonster == "Bandit" then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, -0, 1, -0, 0.341998369, -0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif (MyLevel < 10 or MyLevel > 14) and SelectMonster ~= "Monkey" then
            if (MyLevel < 15 or MyLevel > 29) and SelectMonster ~= "Gorilla" then
                if (MyLevel < 30 or MyLevel > 39) and SelectMonster ~= "Pirate" then
                    if (MyLevel < 40 or MyLevel > 59) and SelectMonster ~= "Brute" then
                        if MyLevel >= 60 and MyLevel <= 74 or SelectMonster == "Desert Bandit" then
                            Mon = "Desert Bandit"
                            LevelQuest = 1
                            NameQuest = "DesertQuest"
                            NameMon = "Desert Bandit"
                            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, -0, 1, -0, 0.573571265, -0, 0.819155693)
                            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
                        elseif (MyLevel < 75 or MyLevel > 89) and SelectMonster ~= "Desert Officer" then
                            if (MyLevel < 90 or MyLevel > 99) and SelectMonster ~= "Snow Bandit" then
                                if MyLevel >= 100 and MyLevel <= 119 or SelectMonster == "Snowman" then
                                    Mon = "Snowman"
                                    LevelQuest = 2
                                    NameQuest = "SnowQuest"
                                    NameMon = "Snowman"
                                    CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, -0, 0.939684391, -0, 1, -0, -0.939684391, -0, -0.342042685)
                                    CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
                                elseif (MyLevel < 120 or MyLevel > 149) and SelectMonster ~= "Chief Petty Officer" then
                                    if (MyLevel < 150 or MyLevel > 174) and SelectMonster ~= "Sky Bandit" then
                                        if (MyLevel < 175 or MyLevel > 189) and SelectMonster ~= "Dark Master" then
                                            if MyLevel >= 190 and MyLevel <= 209 or SelectMonster == "Prisoner" then
                                                Mon = "Prisoner"
                                                LevelQuest = 1
                                                NameQuest = "PrisonerQuest"
                                                NameMon = "Prisoner"
                                                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918E-9, -0.995993316, 1.60817859E-9, 1, -5.16744869E-9, 0.995993316, -2.06384709E-9, -0.0894274712)
                                                CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
                                            elseif (MyLevel < 210 or MyLevel > 249) and SelectMonster ~= "Dangerous Prisone" then
                                                if MyLevel >= 250 and MyLevel <= 274 or SelectMonster == "Toga Warrior" then
                                                    Mon = "Toga Warrior"
                                                    LevelQuest = 1
                                                    NameQuest = "ColosseumQuest"
                                                    NameMon = "Toga Warrior"
                                                    CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, -0, -0.857167721, -0, 1, -0, 0.857167721, -0, -0.515037298)
                                                    CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
                                                elseif (MyLevel < 275 or MyLevel > 299) and SelectMonster ~= "Gladiator" then
                                                    if (MyLevel < 300 or MyLevel > 324) and SelectMonster ~= "Military Soldier" then
                                                        if (MyLevel < 325 or MyLevel > 374) and SelectMonster ~= "Military Spy" then
                                                            if (MyLevel < 375 or MyLevel > 399) and SelectMonster ~= "Fishman Warrior" then
                                                                if (MyLevel < 400 or MyLevel > 449) and SelectMonster ~= "Fishman Commando" then
                                                                    if MyLevel >= 450 and MyLevel <= 474 or SelectMonster == "God's Guard" then
                                                                        Mon = "God's Guard"
                                                                        LevelQuest = 1
                                                                        NameQuest = "SkyExp1Quest"
                                                                        NameMon = "God's Guard"
                                                                        CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, -0, 1, -0, 0.0871884301, -0, 0.996191859)
                                                                        CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
                                                                    elseif (MyLevel < 475 or MyLevel > 524) and SelectMonster ~= "Shanda" then
                                                                        if (MyLevel < 525 or MyLevel > 549) and SelectMonster ~= "Royal Squad" then
                                                                            if (MyLevel < 550 or MyLevel > 624) and SelectMonster ~= "Royal Soldier" then
                                                                                if MyLevel >= 625 and MyLevel <= 649 or SelectMonster == "Galley Pirate" then
                                                                                    Mon = "Galley Pirate"
                                                                                    LevelQuest = 1
                                                                                    NameQuest = "FountainQuest"
                                                                                    NameMon = "Galley Pirate"
                                                                                    CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                                                                                    CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
                                                                                elseif MyLevel >= 650 or SelectMonster == "Galley Captain" then
                                                                                    Mon = "Galley Captain"
                                                                                    LevelQuest = 2
                                                                                    NameQuest = "FountainQuest"
                                                                                    NameMon = "Galley Captain"
                                                                                    CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                                                                                    CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
                                                                                end
                                                                            else
                                                                                Mon = "Royal Soldier"
                                                                                LevelQuest = 2
                                                                                NameQuest = "SkyExp2Quest"
                                                                                NameMon = "Royal Soldier"
                                                                                CFrameQuest = CFrame.new(-7918.18652, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                                                                                CFrameMon = CFrame.new(-7654.2724609375, 5637.1083984375, -1407.7550048828125)
                                                                            end
                                                                        else
                                                                            Mon = "Royal Squad"
                                                                            LevelQuest = 1
                                                                            NameQuest = "SkyExp2Quest"
                                                                            NameMon = "Royal Squad"
                                                                            CFrameQuest = CFrame.new(-7918.18652, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                                                                            CFrameMon = CFrame.new(-7624.1201171875, 5658.13671875, -1467.354736328125)
                                                                        end
                                                                    else
                                                                        Mon = "Shanda"
                                                                        LevelQuest = 2
                                                                        NameQuest = "SkyExp1Quest"
                                                                        NameMon = "Shanda"
                                                                        CFrameQuest = CFrame.new(-7918.18652, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                                                                        CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
                                                                    end
                                                                else
                                                                    Mon = "Fishman Commando"
                                                                    LevelQuest = 2
                                                                    NameQuest = "FishmanQuest"
                                                                    NameMon = "Fishman Commando"
                                                                    CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                                    CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
                                                                end
                                                            else
                                                                Mon = "Fishman Warrior"
                                                                LevelQuest = 1
                                                                NameQuest = "FishmanQuest"
                                                                NameMon = "Fishman Warrior"
                                                                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                                CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
                                                            end
                                                        else
                                                            Mon = "Military Spy"
                                                            LevelQuest = 2
                                                            NameQuest = "MagmaQuest"
                                                            NameMon = "Military Spy"
                                                            CFrameQuest = CFrame.new(-5317.07373, 11.8904171, 8513.54199, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                                                            CFrameMon = CFrame.new(-5787.00977, 75.8262634, 8651.69922, 0.838590562, 0, -0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
                                                        end
                                                    else
                                                        Mon = "Military Soldier"
                                                        LevelQuest = 1
                                                        NameQuest = "MagmaQuest"
                                                        NameMon = "Military Soldier"
                                                        CFrameQuest = CFrame.new(-5317.07373, 11.8904171, 8513.54199, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                                                        CFrameMon = CFrame.new(-5408.83984375, 11.99688434600830078, 8438.8369140625)
                                                    end
                                                else
                                                    Mon = "Gladiator"
                                                    LevelQuest = 2
                                                    NameQuest = "ColosseumQuest"
                                                    NameMon = "Gladiator"
                                                    CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, -0, -0.857167721, -0, 1, -0, 0.857167721, -0, -0.515037298)
                                                    CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
                                                end
                                            else
                                                Mon = "Dangerous Prisoner"
                                                LevelQuest = 2
                                                NameQuest = "PrisonerQuest"
                                                NameMon = "Dangerous Prisoner"
                                                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918E-9, -0.995993316, 1.60817859E-9, 1, -5.16744869E-9, 0.995993316, -2.06384709E-9, -0.0894274712)
                                                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
                                            end
                                        else
                                            Mon = "Prisoner"
                                            LevelQuest = 1
                                            NameQuest = "PrisonerQuest"
                                            NameMon = "Prisoner"
                                            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918E-9, -0.995993316, 1.60817859E-9, 1, -5.16744869E-9, 0.995993316, -2.06384709E-9, -0.0894274712)
                                            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
                                        end
                                    else
                                        Mon = "Dark Master"
                                        LevelQuest = 2
                                        NameQuest = "SkyQuest"
                                        NameMon = "Dark Master"
                                        CFrameQuest = CFrame.new(-4842.83203, 717.699615, -2623.96436, 0.866007268, -0, -0.500031412, -0, 1, -0, 0.500031412, -0, 0.866007268)
                                        CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
                                    end
                                else
                                    Mon = "Sky Bandit"
                                    LevelQuest = 1
                                    NameQuest = "SkyQuest"
                                    NameMon = "Sky Bandit"
                                    CFrameQuest = CFrame.new(-4842.83203, 717.699615, -2623.96436, 0.866007268, -0, -0.500031412, -0, 1, -0, 0.500031412, -0, 0.866007268)
                                    CFrameMon = CFrame.new(-4971.03857421875, 277.0535888671875, -2844.45068359375)
                                end
                            else
                                Mon = "Chief Petty Officer"
                                LevelQuest = 2
                                NameQuest = "MarineQuest3"
                                NameMon = "Chief Petty Officer"
                                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                                CFrameMon = CFrame.new(-2821.372314453125, 42.38346481323242, -3100.821044921875)
                            end
                        else
                            Mon = "Snowman"
                            LevelQuest = 2
                            NameQuest = "SnowQuest"
                            NameMon = "Snowman"
                            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, -0, 0.939684391, -0, 1, -0, -0.939684391, -0, -0.342042685)
                            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
                        end
                    else
                        Mon = "Snow Bandit"
                        LevelQuest = 1
                        NameQuest = "SnowQuest"
                        NameMon = "Snow Bandit"
                        CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, -0, 0.939684391, -0, 1, -0, -0.939684391, -0, -0.342042685)
                        CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
                    end
                else
                    Mon = "Desert Officer"
                    LevelQuest = 2
                    NameQuest = "DesertQuest"
                    NameMon = "Desert Officer"
                    CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, -0, 1, -0, 0.573571265, -0, 0.819155693)
                    CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
                end
            else
                Mon = "Brute"
                LevelQuest = 2
                NameQuest = "BanditQuest1"
                NameMon = "Brute"
                CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, -0, 1, -0, 0.341998369, -0, 0.939700544)
                CFrameMon = CFrame.new(-1127.72290, 14.77555, 4283.07812, -0.629209995, 0, -0.777270615, 0, 1, 0, 0.777270615, 0, -0.629209995)
            end
        else
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, -0, 1, -0, 0.341998369, -0, 0.939700544)
            CFrameMon = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969)
        end
    else
        Mon = "Monkey"
        LevelQuest = 1
        NameQuest = "JungleQuest"
        NameMon = "Monkey"
        CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
    end
    -- Tiếp tục phần code cho World2 và World3...
    if World2 then
        -- Thêm logic cho World2
    end
    if World3 then
        -- Thêm logic cho World3
    end
end

-- [PHẦN UI MỚI - GIỐNG GIAO DIỆN TRONG ẢNH]
-- Load thư viện UI (giả định sử dụng Fluent hoặc thư viện tương tự)
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- Tạo Window chính
local Window = Fluent:CreateWindow({
    Title = "HDANH HUB",
    SubTitle = "Blox Fruits",
    TabWidth = 140,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Tạo các Tab
local Tabs = {
    Shop = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
    Status = Window:AddTab({ Title = "Status And Server", Icon = "activity" }),
    Local = Window:AddTab({ Title = "LocalPlayer", Icon = "user" }),
    SettingAutoFaint = Window:AddTab({ Title = "Setting Auto Faint", Icon = "settings" }),
    HoldSkill = Window:AddTab({ Title = "Hold and Select Skill", Icon = "target" }),
    Farming = Window:AddTab({ Title = "Farming", Icon = "package" }),
    StackFarming = Window:AddTab({ Title = "Stack Farming", Icon = "layers" }),
    FarmingOther = Window:AddTab({ Title = "Farming Other", Icon = "grid" }),
    FruitRaid = Window:AddTab({ Title = "Fruit and Raid", Icon = "apple" }),
    SeaEvent = Window:AddTab({ Title = "Sea Event", Icon = "anchor" })
}

-- TAB FARMING - Cấu hình giống ảnh
local FarmingTab = Tabs.Farming

-- Section: Setting Farm
FarmingTab:AddParagraph({
    Title = "Setting Farm",
    Content = ""
})

-- Dropdown: Select Method Farm
local FarmMethodDropdown = FarmingTab:AddDropdown("FarmMethod", {
    Title = "Select Method Farm Aura Farm",
    Values = {"Aura Farm", "Fast Attack", "Normal Farm", "Bring Mob"},
    Multi = false,
    Default = 1,
})

FarmMethodDropdown:OnChanged(function(Value)
    _G.SelectMethodFarm = Value
    print("Farm Method:", Value)
end)

-- Slider: Distance Farm Auto
local DistanceSlider = FarmingTab:AddSlider("DistanceFarm", {
    Title = "Distance Farm Auto",
    Description = "Khoảng cách farm tự động",
    Default = 300,
    Min = 0,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        _G.DistanceFarm = Value
        print("Distance Farm:", Value)
    end
})

-- Toggle: Ignore Attack Katakuri
local IgnoreKatakuriToggle = FarmingTab:AddToggle("IgnoreKatakuri", {
    Title = "Ignore Attack Katakuri",
    Default = false
})

IgnoreKatakuriToggle:OnChanged(function(Value)
    _G.IgnoreAttackKatakuri = Value
    print("Ignore Attack Katakuri:", Value)
end)

-- Toggle: Hop Find Katakuri
local HopFindKatakuriToggle = FarmingTab:AddToggle("HopFindKatakuri", {
    Title = "Hop Find Katakuri",
    Default = false
})

HopFindKatakuriToggle:OnChanged(function(Value)
    _G.HopFindKatakuri = Value
    print("Hop Find Katakuri:", Value)
end)

-- Toggle: Auto Quest
local AutoQuestToggle = FarmingTab:AddToggle("AutoQuest", {
    Title = "Auto Quest [Katakuri/demon/Pyran]",
    Default = false
})

AutoQuestToggle:OnChanged(function(Value)
    _G.AutoQuestKatakuri = Value
    print("Auto Quest:", Value)
end)

-- Toggle: Start Farm
local StartFarmToggle = FarmingTab:AddToggle("StartFarm", {
    Title = "Start Farm",
    Default = false
})

StartFarmToggle:OnChanged(function(Value)
    _G.StartFarm = Value
    print("Start Farm:", Value)
    
    -- Logic farm
    if Value then
        spawn(function()
            while _G.StartFarm do
                wait(0.1)
                CheckQuest()
                -- Thêm logic farm ở đây
            end
        end)
    end
end)

-- Button: Mastery Farm
FarmingTab:AddButton({
    Title = "Mastery Farm",
    Description = "Bật/Tắt Mastery Farm",
    Callback = function()
        _G.MasteryFarm = not _G.MasteryFarm
        print("Mastery Farm:", _G.MasteryFarm)
        
        if _G.MasteryFarm then
            spawn(function()
                while _G.MasteryFarm do
                    wait(0.1)
                    -- Logic Mastery Farm
                end
            end)
        end
    end
})

-- TAB SHOP
Tabs.Shop:AddParagraph({
    Title = "Shop",
    Content = "Mua vật phẩm trong shop"
})

Tabs.Shop:AddButton({
    Title = "Open Shop",
    Description = "Mở shop trong game",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
    end
})

-- TAB STATUS AND SERVER
Tabs.Status:AddParagraph({
    Title = "Status",
    Content = "Thông tin người chơi và server"
})

local PlayerStats = Tabs.Status:AddParagraph({
    Title = "Player Stats",
    Content = "Loading..."
})

spawn(function()
    while wait(1) do
        local Player = game:GetService("Players").LocalPlayer
        local Level = Player.Data.Level.Value
        local Beli = Player.Data.Beli.Value
        local Fragments = Player.Data.Fragments.Value
        
        PlayerStats:SetDesc(string.format(
            "Level: %d\nBeli: %d\nFragments: %d",
            Level, Beli, Fragments
        ))
    end
end)

-- TAB LOCAL PLAYER
Tabs.Local:AddParagraph({
    Title = "LocalPlayer",
    Content = "Điều chỉnh người chơi"
})

local WalkSpeedSlider = Tabs.Local:AddSlider("WalkSpeed", {
    Title = "Walk Speed",
    Default = 16,
    Min = 16,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
})

local JumpPowerSlider = Tabs.Local:AddSlider("JumpPower", {
    Title = "Jump Power",
    Default = 50,
    Min = 50,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
    end
})

-- TAB SETTING AUTO FAINT
Tabs.SettingAutoFaint:AddParagraph({
    Title = "Auto Faint Settings",
    Content = "Cài đặt tự động faint"
})

local AutoRespawnToggle = Tabs.SettingAutoFaint:AddToggle("AutoRespawn", {
    Title = "Auto Respawn",
    Default = false
})

AutoRespawnToggle:OnChanged(function(Value)
    _G.AutoRespawn = Value
end)

-- TAB HOLD AND SELECT SKILL
Tabs.HoldSkill:AddParagraph({
    Title = "Hold and Select Skill",
    Content = "Giữ và chọn kỹ năng"
})

-- TAB STACK FARMING
Tabs.StackFarming:AddParagraph({
    Title = "Stack Farming",
    Content = "Farm nhiều mob cùng lúc"
})

-- TAB FARMING OTHER
Tabs.FarmingOther:AddParagraph({
    Title = "Farming Other",
    Content = "Farm vật phẩm khác"
})

-- Material Farm
local MaterialSection = Tabs.FarmingOther:AddSection("Material Farm")

local MaterialDropdown = Tabs.FarmingOther:AddDropdown("MaterialSelect", {
    Title = "Select Material",
    Values = {
        "Angel Wings",
        "Mystic Droplet",
        "Vampire Fang",
        "Gunpowder",
        "Fish Tail",
        "Magma Ore",
        "Leather + Scrap Metal",
        "Radiactive Material",
        "Mini Tusk",
        "Conjured Cocoa"
    },
    Multi = false,
    Default = 1,
})

MaterialDropdown:OnChanged(function(Value)
    _G.SelectMaterial = Value
    MaterialMon()
end)

local AutoFarmMaterialToggle = Tabs.FarmingOther:AddToggle("AutoFarmMaterial", {
    Title = "Auto Farm Material",
    Default = false
})

AutoFarmMaterialToggle:OnChanged(function(Value)
    _G.AutoFarmMaterial = Value
    
    if Value then
        spawn(function()
            while _G.AutoFarmMaterial do
                wait(0.1)
                MaterialMon()
                -- Logic farm material
            end
        end)
    end
end)

-- TAB FRUIT AND RAID
Tabs.FruitRaid:AddParagraph({
    Title = "Fruit and Raid",
    Content = "Quản lý trái ác quỷ và raid"
})

-- TAB SEA EVENT
Tabs.SeaEvent:AddParagraph({
    Title = "Sea Event",
    Content = "Sự kiện biển"
})

-- Thêm các Section khác (giữ nguyên logic từ file gốc)
local v496 = Tabs.SeaEvent

local _ = v496:AddSection({"Sea 1,2,3"})
v496:AddButton({
    Title = "Join Sea 1",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})
v496:AddButton({
    Title = "Join Sea 2",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})
v496:AddButton({
    Title = "Join Sea 3",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})

local _ = v496:AddSection({"Other"})
v496:AddButton({
    Title = "Join Pirates Team",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
    end
})
v496:AddButton({
    Title = "Join Marines Team",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
    end
})
v496:AddButton({
    Title = "Open Title Name",
    Callback = function()
        local v1209 = {[1] = "getTitles"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1209))
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end
})
v496:AddButton({
    Title = "FPS Boost",
    Description = "Tăng Fps",
    Callback = function()
        local v1210 = true
        local l_game_0 = game
        local l_Workspace_2 = l_game_0.Workspace
        local _ = l_game_0.Lighting
        local _ = l_Workspace_2.Terrain
        settings().Rendering.QualityLevel = "Level01"
        for _, v1216 in pairs(l_game_0:GetDescendants()) do
            if not v1216:IsA("Part") and not v1216:IsA("Union") and not v1216:IsA("CornerWedgePart") and not v1216:IsA("TrussPart") then
                if v1216:IsA("Decal") or v1216:IsA("Texture") and v1210 then
                    v1216.Transparency = 1
                elseif v1216:IsA("ParticleEmitter") or v1216:IsA("Trail") then
                    v1216.Lifetime = NumberRange.new(0)
                elseif not v1216:IsA("Explosion") then
                    if v1216:IsA("Fire") or v1216:IsA("SpotLight") or v1216:IsA("Smoke") then
                        v1216.Enabled = false
                    end
                else
                    v1216.BlastPressure = 1
                    v1216.BlastRadius = 1
                end
            else
                v1216.Material = "Plastic"
                v1216.Reflectance = 0
            end
        end
    end
})

local _ = v496:AddSection({"Auto Codes"})
local v1218 = {
    "NOMOREHACK",
    "BANEXPLOIT",
    "WildDares",
    "BossBuild",
    "GetPranked",
    "EARN_FRUITS",
    "FIGHT4FRUIT",
    "NOEXPLOITER",
    "NOOB2ADMIN",
    "CODESLIDE",
    "ADMINHACKED",
    "ADMINDARES",
    "fruitconcepts",
    "krazydares",
    "TRIPLEABUSE",
    "SEATROLLING",
    "24NOADMIN",
    "REWARDFUN",
    "Chandler",
    "NEWTROLL",
    "KITT_RESET",
    "Sub2CaptainMaui",
    "kittgaming",
    "Sub2Fer999",
    "Enyu_is_Pro",
    "Magicbus",
    "JCWK",
    "Starcodeheo",
    "Bluxxy",
    "fudd10_v2",
    "SUB2GAMERROBOT_EXP1",
    "Sub2NoobMaster123",
    "Sub2UncleKizaru",
    "Sub2Daigrock",
    "Axiore",
    "TantaiGaming",
    "StrawHatMaine",
    "Sub2OfficialNoobie",
    "Fudd10",
    "Bignews",
    "TheGreatAce",
    "SECRET_ADMIN",
    "SUB2GAMERROBOT_RESET1",
    "SUB2OFFICIALNOOBIE",
    "AXIORE",
    "BIGNEWS",
    "BLUXXY",
    "CHANDLER",
    "ENYU_IS_PRO",
    "FUDD10",
    "FUDD10_V2",
    "KITTGAMING",
    "MAGICBUS",
    "STARCODEHEO",
    "STRAWHATMAINE",
    "SUB2CAPTAINMAUI",
    "SUB2DAIGROCK",
    "SUB2FER999",
    "SUB2NOOBMASTER123",
    "SUB2UNCLEKIZARU",
    "TANTAIGAMING",
    "THEGREATACE"
}

v496:AddButton({
    Title = "Codes",
    Description = "Tự Động Nhập Hết Code",
    Callback = function()
        for _, v1220 in ipairs(v1218) do
            local v1221 = {v1220}
            do
                local l_v1221_0 = v1221
                pcall(function()
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(l_v1221_0))
                end)
                task.wait(0.1)
            end
        end
    end
})

local _ = v496:AddSection({"Sever Hop"})
v496:AddButton({
    Title = "Rejoin Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
})

v496:AddButton({
    Title = "Server Hop", 
    Callback = function()
        -- Logic server hop
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Api = "https://games.roblox.com/v1/games/"

        local _place = game.PlaceId
        local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
        
        function ListServers(cursor)
           local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
           return Http:JSONDecode(Raw)
        end

        local Server, Next; repeat
           local Servers = ListServers(Next)
           Server = Servers.data[1]
           Next = Servers.nextPageCursor
        until Server

        TPS:TeleportToPlaceInstance(_place,Server.id,game:GetService("Players").LocalPlayer)
    end
})

-- Thông báo load thành công
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "✅ HDANH HUB";
    Text = "Script đã load thành công!";
    Duration = 5;
})

print("✅ HDANH HUB - Loaded Successfully!")
return
