script_name("Admin Helper")
script_version("1.1")
script_author("Richard Watson")
sampAddChatMessage(string.format("%s v%s loaded.", thisScript().name, thisScript().version), 0xFF9900)
local samp = require 'samp.events'
print(samp.MODULEINFO.version)


local sampev = require 'lib.samp.events'
local imgui = require 'imgui'
local encoding = require 'encoding'
encoding.default = 'CP1251'
u8 = encoding.UTF8



local tag = "{FFA800}[Admin Helper]:{FFA800} "
local list_prices = { "Bravura - 50.000$ - [ID: 401]",
                        "Perrenial - 25.000$ - [ID: 404]",
                        "Manana - 50.000$ - [ID: 410]",
                        "Esperanto - 50.000$ - [iID: 419]",
                        "Bobcat - 25.000$ - [ID: 422]",
                        "Previon - 25.000$ - [ID: 436]",
                        "Stallion - 50.000$ - [ID: 439]",
                        "Solair - 50.000$ - [ID: 458]",
                        "Glendale - 25.000$ - [ID: 466]",
                        "Hermes - 25.000$ - [ID: 474]",
                        "Walton - 50.000$ - [ID: 478]",
                        "Regina - 25.000$ - [ID: 479]",
                        "Virgo - 50.000$ - [ID: 491]",
                        "Greenwood - 25.000$ - [ID: 492]",
                        "Mesa - 50.000 - [ID: 500]",
                        "Elegant - 25.000$ - [ID: 507]",
                        "Nebula - 50.000$ - [ID: 516]",
                        "Majestic - 50.000$ - [ID: 517]",
                        "Buccanner - 25.000$ - [ID: 518]",
                        "Fortune - 25.000$ - [ID: 526]",
                        "Cadrona - 50.000$ - [ID: 527]",
                        "Willard - 50.000$ - [ID: 529]",
                        "Vincent - 25.000$ - [ID: 540]",
                        "Clover - 25.000$ - [ID: 542]",
                        "Sadler - 25.000$ - [ID: 543]",
                        "Hustler - 50.000$ - [ID: 545]",
                        "Intruder - 25.000$ - [ID: 546]",
                        "Primo - 25.000$ - [ID: 547]",
                        "Tampa - 25.000$ - [ID: 549]",
                        "Emperor - 25.000$ - [ID: 585]",
                        "Picador - 25.000$ - [ID: 600]",
                        "Glendale - 25.000$ - [ID: 604]",
                        "Sadler - 25.000$ - [ID: 605]"
                    }
local prices1 = "Bravura - 50.000$ - [ID: 401]\nPerrenial - 25.000$ - [ID: 404]\nManana - 50.000$ - [ID: 410]\nEsperanto - 50.000$ - [ID: 419]\nBobcat - 25.000$ - [ID: 422]\nPrevion - 25.000$ - [ID: 436]\nStallion - 50.000$ - [ID: 439]\nSolair - 50.000$ - [ID: 458]\nGlendale - 25.000$ - [ID: 466]\nHermes - 25.000$ - [ID: 474]\nWalton - 50.000$ - [ID: 478]\nRegina - 25.000$ - [ID: 479]\nVirgo - 50.000$ - [ID: 491]\nGreenwood - 25.000$ - [ID: 492]\nMesa - 50.000 - [ID: 500]\nElegant - 25.000$ - [ID: 507]\nNebula - 50.000$ - [ID: 516]\nMajestic - 50.000$ - [ID: 517]\nBuccanner - 25.000$ - [ID: 518]\nFortune - 25.000$ - [ID: 526]\nCadrona - 50.000$ - [ID: 527]\nWillard - 50.000$ - [ID: 529]\nVincent - 25.000$ - [ID: 540]\nClover - 25.000$ - [ID: 542]\nSadler - 25.000$ - [ID: 543]\nHustler - 50.000$ - [ID: 545]\nIntruder - 25.000$ - [ID: 546]\nPrimo - 25.000$ - [ID: 547]\nTampa - 25.000$ - [ID: 549]\nEmperor - 25.000$ - [ID: 585]\nPicador - 25.000$ - [ID: 600]\nGlendale - 25.000$ - [ID: 604]\nSadler - 25.000$ - [ID: 605]"
local prices2 = "Landstalker - 100.000$ - [id 400]\nSentinel - 100.000$ - [ID: 405]\nVoodoo - 250.000$ - [ID: 412]\nMoonbeam - 100.000$ - [ID: 418]\nWashington - 100.000$ - [ID: 401]\nPremier - 100.000$ - [ID: 426]\nAdmiral - 100.000$ - [ID: 445]\nOceanic - 100.000$ - [ID: 467]\nSabre - 100.000$ -[ID: 475]\nBurrito - 250.000$ - [ID: 482]\nRancher - 100.000$ - [ID: 489]\nBlista Compact - 100.000$ - [ID: 496]\nRancher - 100.000$ - [ID: 505]\nFeltzer - 100.000$ - [ID: 533]\nRemington - 250.000 - [ID: 534]\nSlamvan - 250.000$ - [ID: 535]\nBlade - 250.000$ - [ID: 536]\nSunrise - 100.000$ - [ID: 550]\nMerit - 100.000$ - [ID: 551]\nYosemite - 100.000$ - [ID: 554]\nWindsor - 250.000$ - [ID: 555]\nUranus - 250.000$ - [ID: 558]\nElegy - 250.000$ - [ID: 562]\nFlash - 250.000$ - [ID: 565]\nTahoma - 250.000$ - [ID: 566]\nSavanna - 250.000$ - [ID: 567]\nBroadway - 250.000$ - [ID: 575]\nTornado - 250.000$ - [ID: 576]\nHuntley - 250.000$ - [ID: 579]\nEuros - 250.000$ - [ID: 587]\nClub - 250.000$ - [ID: 589]\nAlpha - 250.000$ - [ID: 602]\nPheonix - 250.000$ - [ID: 603]"
local prices3 = "Buffalo - 1.000.000$ - [ID: 402]\nZR - 350 - 750.000$ - [ID: 477]\nComet - 750.000$ - [ID: 480]\nSuper GT - 1.000.000$ - [ID: 506]\nJester - 750.000$ - [ID: 559]\nSultan - 1.000.000$ - [ID: 560]\nStratum - 500.000$ - [ID: 561]\nStafford - 1.000.000$ - [ID: 580]"
local prices4 = "Infernus - 2.500.000$ - [ID: 411]\nCheetah - 2.000.000$ - [ID: 415]\nBanshee - 1.500.000$ - [ID: 429]\nTurismo - 2.500.000$ - [ID: 451]\nBullet - 2.500.000$ - [ID: 541]"
local prices5 = "PCJ-600 - 1.000.000$ - [ID: 461]\nFaggio - 50.000$ - [ID: 462]\nFreeway - 500.000$ - [ID: 463]\nSanchez - 250.000$ - [ID: 458]\nQuad - 100.000$ - [ID: 471]\nBMX - 25.000$ - [ID: 481]\nBike - 25.000$ - [ID: 509]\nMountain Bike - 25.000$ - [ID: 510]\nFCR - 900 -1.500.000$ - [ID: 521]\nBF - 400 - 750.000$ - [ID: 581]\nWayfarer - 250.000$ - [ID: 586]"
local prices6 = "Nevada - 2.500.000$ - [ID: 553]\nShamal - 2.500.000$ - [ID: 519]\nBeagle - 1.500.000$ - [ID: 511]\nMaverick - 2.500.000$ - [ID: 487]\nSparrow - 2.000.000$ - [ID: 469]\nRustler - 1.000.000$ - [ID: 476]\nCropduster - 750.000$ - [ID: 512]\nStunt - 1.000.000$ - [ID: 513]\nDodo - 500.000$ - [ID: 593]"
local prices7 = "Marquis - 2.500.000$ - [ID: 484]\nSqualo - 1.500.000$ - [ID: 446]\nSpeeder - 2.000.000$ - [ID: 452]\nTropic - 2.500.000$ - [ID: 454]"

local gps1 = "[1] �������������\n[2] ����\n[3] ���������\n[4] ���������\n[5] Flin Town\n[6] ׸���� �����\n[7] �������\n[8] ���� �������\n[9] ���� ���������"
local gps2 = "[1] ��������� ��������������� �����\n[2] �������\n[3] ��������\n[4] ��������\n[5] ���������\n[6] ������\n[7] ��������� ���\n[8] ����������� ���\n[9] �������\n[10] ������� ������\n[11] ���������\n[12] ���������\n[13] ���������\n[14] ��������"
local gps3 = "[1] ��������� �����\n[2] ���������\n[3] ��������� ������\n[4] �������� ������\n[5] �������� �������� [LS]\n[6] �������� �������� [SF]\n[7] �������� �������� [LV]\n[8] �������� �������� [��������]\n[9] �������� ����� [LS]\n[10] �������� ����� [SF]\n[11] �������� ����� [LV]\n[12] ����������� [LS]\n[13] ����������� [SF]\n[14] ����������� [LV]\n[15] �������� �������\n[16] ����������\n[17] ��������� �����\n[18] ����� [LS]\n[19] ����� [SF]\n[20] ����� [LV]\n[21] �������� ���������\n[22] �������� [LS]\n[23] �������� [SF]\n[24] �������� [LV]\n[25] �������������"
local gps4 = "[1] �������������\n[2] ������� [LS]\n[3] ������� [SF]\n[4] ������� [LV]\n[5] ������� [RC]\n[6] ���\n[7] ����� [SF]\n[8] ����� [LV]\n[9] �������� [LS]\n[10] �������� [SF]\n[11] �������� [LV]\n[12] ���������� [LS]\n[13] ���������� [SF]\n[14] ���������� [LV]\n[15] ���������\n[16] ������\n[17] The Grove Gang\n[18] The Ballas Gang\n[19] The Rifa Gang\n[20] The Aztecas Gang\n[21] The Vagos Gang\n[22] Russian Mafia\n[23] La Cosa Nostra\n[24] Yakuza\n[25] �������"
local gps5 = "[1] ���� [LS]\n[2] ��������� ����� [����� & �����. �������]\n[3] ������� ����� [�����]\n[4] ���. ��������� [���. �������]\n[5] �����-����� [�����. �������]\n[6] ����������� [��������]"
local gps6 = "[1] ��������� �����������\n[2] ��������� ������� ������\n[3] ��������� ���\n[4] ��������� ��������\n[5] ��������� ��������\n[6] ��������� ����������\n[7] ��������� ����������� ��������\n[8] ��������� ��������\n[9] ��������� ������� �����������\n[10] ��������� �����\n[11] ��������� ������� �����\n[12] ��������� ���������\n[13] ��������� ����������\n[14] ��������� ����� � ����"
local gps7 = "[1] ����� �����: 1\n[2] ����� �����: 2\n[3] ����� �����: 3"
local gps8 = "[1] ��� �����: 1\n[2] ��� �����: 2\n[3] ��� �����: 3"
local gps9 = "[1] ��������� [LS] - Nope\n[2] ��������� [SF] - C\n[3] ��������� [SF] - B\n[4] ��������� [LV] - A\n[5] ���������\n[6] ���-����\n[7] ��������\n[8] ������������ ���������\n[9] ������������ �������\n[10] ��������"
local gps10 = "[1] ����� �����������\n[2] �����\n[3] Casino Four Dragons\n[4] Casino Caligula"
	
local main_window_state = imgui.ImBool(false)
local prices_window_state = imgui.ImBool(false)
local gps_window_state = imgui.ImBool(false)
local text_buffer = imgui.ImBuffer(256)
local main_x, main_y = getScreenResolution()

function apply_custom_style()
    imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    local ImVec2 = imgui.ImVec2

    style.WindowPadding = ImVec2(15, 15)
    style.WindowRounding = 6.0
    style.FramePadding = ImVec2(5, 5)
    style.FrameRounding = 4.0
    style.ItemSpacing = ImVec2(12, 8)
    style.ItemInnerSpacing = ImVec2(8, 6)
    style.IndentSpacing = 25.0
    style.ScrollbarSize = 15.0
    style.ScrollbarRounding = 9.0
    style.GrabMinSize = 5.0
    style.GrabRounding = 3.0

    colors[clr.Text] = ImVec4(0.80, 0.80, 0.83, 1.00)
    colors[clr.TextDisabled] = ImVec4(0.24, 0.23, 0.29, 1.00)
    colors[clr.WindowBg] = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.ChildWindowBg] = ImVec4(0.07, 0.07, 0.09, 1.00)
    colors[clr.PopupBg] = ImVec4(0.07, 0.07, 0.09, 1.00)
    colors[clr.Border] = ImVec4(0.80, 0.80, 0.83, 0.88)
    colors[clr.BorderShadow] = ImVec4(0.92, 0.91, 0.88, 0.00)
    colors[clr.FrameBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.FrameBgHovered] = ImVec4(0.24, 0.23, 0.29, 1.00)
    colors[clr.FrameBgActive] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.TitleBg] = ImVec4(0.76, 0.31, 0.00, 1.00)
    colors[clr.TitleBgCollapsed] = ImVec4(1.00, 0.98, 0.95, 0.75)
    colors[clr.TitleBgActive] = ImVec4(0.80, 0.33, 0.00, 1.00)
    colors[clr.MenuBarBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.ScrollbarBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.ScrollbarGrab] = ImVec4(0.80, 0.80, 0.83, 0.31)
    colors[clr.ScrollbarGrabHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.ScrollbarGrabActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.ComboBg] = ImVec4(0.19, 0.18, 0.21, 1.00)
    colors[clr.CheckMark] = ImVec4(1.00, 0.42, 0.00, 0.53)
    colors[clr.SliderGrab] = ImVec4(1.00, 0.42, 0.00, 0.53)
    colors[clr.SliderGrabActive] = ImVec4(1.00, 0.42, 0.00, 1.00)
    colors[clr.Button] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.ButtonHovered] = ImVec4(0.24, 0.23, 0.29, 1.00)
    colors[clr.ButtonActive] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.Header] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.HeaderHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.HeaderActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.ResizeGrip] = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.ResizeGripHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.ResizeGripActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.CloseButton] = ImVec4(0.40, 0.39, 0.38, 0.16)
    colors[clr.CloseButtonHovered] = ImVec4(0.40, 0.39, 0.38, 0.39)
    colors[clr.CloseButtonActive] = ImVec4(0.40, 0.39, 0.38, 1.00)
    colors[clr.PlotLines] = ImVec4(0.40, 0.39, 0.38, 0.63)
    colors[clr.PlotLinesHovered] = ImVec4(0.25, 1.00, 0.00, 1.00)
    colors[clr.PlotHistogram] = ImVec4(0.40, 0.39, 0.38, 0.63)
    colors[clr.PlotHistogramHovered] = ImVec4(0.25, 1.00, 0.00, 1.00)
    colors[clr.TextSelectedBg] = ImVec4(0.25, 1.00, 0.00, 0.43)
    colors[clr.ModalWindowDarkening] = ImVec4(1.00, 0.98, 0.95, 0.73)
end

accessName = {'Chad_Deep', 'Thomas_Lougan', 'Chanel_Oberlin'}
function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
    autoupdate("https://github.com/iamchaddeep/jsobob.git", '['..string.upper(thisScript().name)..']: ', "https://github.com/iamchaddeep/1212.git")
	while not isSampAvailable() do wait(100) end
    sampAddChatMessage(tag.."{FFFFFF}������ ��������.", 0xFFFFFF)
    imgui.Process = false

    local status, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
    if status then 
        if not isAccessScript(sampGetPlayerNickname(id)) then 
            sampAddChatMessage('��� ������ �� ��������, ���������� vk.com/markowalker', -1)
            thisScript():unload()
        end
    end

    wait(-1)
end

function enableDialog(bool)
    local memory = require 'memory'
    memory.setint32(sampGetDialogInfoPtr()+40, bool and 1 or 0, true)
    sampToggleCursor(bool)
end

function clearNick(nickname)
    if nickname:find('%[PC') or nickname:find('%[VIP') then 
        nickname = nickname:gsub('(.-)%[.*', '%1')
        return nickname
    else 
        return nickname
    end
end

function sampGetPlayerIdByNickname(nick)
 	nick = tostring(nick)
  	local _, myid = sampGetPlayerIdByCharHandle(PLAYER_PED)
  	nick_check = sampGetPlayerNickname(myid)
	if nick == clearNick(nick_check) then return myid end
	
	for i = 0, 999 do
		if sampIsPlayerConnected(i) and clearNick(sampGetPlayerNickname(i)) == nick then
      		return i
    	end
    end
end

function sampev.onShowDialog(dialogID, style, title, button1, button2, text)
    if text:find("������/���������:") and text:find("��������:") and text:find("����� ��������:") then
    	id_dialog = dialogID
	    nick_report = text:match("��������: (%S*)")
	    text_report = text:gsub('��������: (.*)', '')
	    id_report = sampGetPlayerIdByNickname(nick_report)
	   	if text:find("[+%-%d]%d*") then
	        id_suspect = text:match("[+%-%d]%d*")
	    	recon_suspect = true
	    else
        	recon_suspect = false
	    end
	    enableDialog(false)
	    main_imgui()
    	return false
    end
end

function main_imgui(arg)
    main_window_state.v = not main_window_state.v
    imgui.Process = main_window_state.v
end

function prices_imgui(arg)
    prices_window_state.v = not prices_window_state.v
    imgui.Process = prices_window_state.v
end

function gps_imgui(arg)
    gps_window_state.v = not gps_window_state.v
    imgui.Process = gps_window_state.v
end

function imgui.OnDrawFrame()

    if not main_window_state.v and not prices_window_state.v and not gps_window_state.v then
        imgui.Process = false
        text_buffer.v = ""
    end

    if main_window_state.v then 
        imgui.SetNextWindowSize(imgui.ImVec2(500, 360), imgui.Cond.FirstUseEver)
        imgui.SetNextWindowPos(imgui.ImVec2(main_x / 2, main_y / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
        imgui.Begin(u8"������/������##������", _, imgui.WindowFlags.NoCollapse + imgui.WindowFlags.NoResize + imgui.WindowFlags.NoMove + imgui.WindowFlags.NoBringToFrontOnFocus+ imgui.WindowFlags.NoSavedSettings)
        imgui.Text(u8"������ �� "..nick_report.." ["..id_report.."].") 
        imgui.Separator()
        imgui.PushItemWidth(485)
        imgui.TextWrapped(u8(text_report))
        imgui.Separator()
        imgui.InputText('', text_buffer)
        imgui.Separator()
        if imgui.Button(u8'����� �� �����������', imgui.ImVec2(150, 40)) then
        	main_window_state.v = false
        	prices_window_state.v = false
        	gps_window_state.v = false
        	lua_thread.create(function()
        		sampSendDialogResponse(id_dialog, 1, nil, "��������� �����, ����� �� �����������.")
        		sampCloseCurrentDialogWithButton(0)
        		wait(1000)
        		if recon_suspect then
        			sampSendChat("/re "..id_suspect)	
        			sampAddChatMessage(tag.."{FFFFFF} �� ���� � ������ �� ������� �������.", 0xFFFFFF)
        		else
        			sampAddChatMessage(tag.."{FFFFFF} � ������� �� ��� ������ ID ����������.", 0xFFFFFF)
        			sampAddChatMessage(tag.."{FFFFFF} ���������� �������: "..text_report, 0xFFFFFF)
	      		end
        	end)
        end
        imgui.SameLine()
        if imgui.Button(u8'������ ������ (/re)', imgui.ImVec2(150, 40)) then
        	main_window_state.v = false
        	prices_window_state.v = false
        	gps_window_state.v = false
        	lua_thread.create(function()
        		sampSendDialogResponse(id_dialog, 1, nil, "��������� �����, ������ �������� ��� ������.")
        		wait(100)
        		sampCloseCurrentDialogWithButton(0)
        		wait(1000)
	        	sampSendChat("/re "..id_report)	
	        	sampAddChatMessage(tag.."{FFFFFF} �� ���� � ������ �� ������� �������.", 0xFFFFFF)
        	end)
        end
        imgui.SameLine()
        if imgui.Button(u8'������ ������ (/goto)', imgui.ImVec2(150, 40)) then
        	main_window_state.v = false
        	prices_window_state.v = false
        	gps_window_state.v = false
        	lua_thread.create(function()
        		sampSendDialogResponse(id_dialog, 1, nil, "��������� �����, ������ �������� ��� ������.")
        		wait(100)
        		sampCloseCurrentDialogWithButton(0)
        		wait(1000)
	        	sampSendChat("/goto "..nick_report)   
	        	sampAddChatMessage(tag.."{FFFFFF} �� ����������������� � ������ �������.", 0xFFFFFF)
	        end)
        end
        if imgui.Button(u8'���. ���� �/�', imgui.ImVec2(150, 40)) then
            prices_imgui()
        end
        imgui.SameLine()
        if imgui.Button(u8'��������� � /a ���', imgui.ImVec2(150, 40)) then
            main_window_state.v = false
            prices_window_state.v = false
            gps_window_state.v = false
            lua_thread.create(function()
                sampSendDialogResponse(id_dialog, 1, nil, "��������� �����, ������� ��� ������ ��������������.")
                wait(100)
                sampCloseCurrentDialogWithButton(0)
                wait(1000)
                sampSendChat('/a [REP]: ' ..nick_report ..text_report ..id_report)
                sampAddChatMessage(tag.."{FFFFFF} �� ��������� ������ � /a ���.", 0xFFFFFF)
            end)
            
        end
        imgui.SameLine()
        if imgui.Button(u8'GPS', imgui.ImVec2(150, 40)) then
            gps_imgui()
        end
        imgui.Separator()
        imgui.SetCursorPosX(30)
        imgui.SetCursorPosY(300)
        if imgui.Button(u8'���������', imgui.ImVec2(150, 40)) then
            main_window_state.v = false
        	prices_window_state.v = false
        	gps_window_state.v = false
        	lua_thread.create(function()
        		sampSendDialogResponse(id_dialog, 1, nil, u8:decode(text_buffer.v))
        		wait(100)
	            sampCloseCurrentDialogWithButton(0)
	            sampAddChatMessage(tag.."{FFFFFF}�� ��������� ����� �� ������/������.", 0xFFFFFF)
        	end) 
        end
        imgui.SameLine()
        imgui.SetCursorPosX(320)
        imgui.SetCursorPosY(300)
        if imgui.Button(u8'�������', imgui.ImVec2(150, 40)) then 
        	main_window_state.v = false
        	prices_window_state.v = false
        	gps_window_state.v = false
            lua_thread.create(function()
                sampSendDialogResponse(id_dialog, 0, nil, nil)
                wait(100)
                sampCloseCurrentDialogWithButton(0)
                sampAddChatMessage(tag.."{FFFFFF}�� ������� ���� � �������/��������.", 0xFFFFFF)
            end)
        end
        imgui.End()
    end 
    if prices_window_state.v then 
    	imgui.SetNextWindowSize(imgui.ImVec2(250, 360), imgui.Cond.FirstUseEver)
    	imgui.SetNextWindowPos(imgui.ImVec2(main_x / 3 - 80, main_y / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
        imgui.Begin(u8"��������������� ���� ����������", _, imgui.WindowFlags.NoCollapse + imgui.WindowFlags.NoResize + imgui.WindowFlags.NoMove + imgui.WindowFlags.NoBringToFrontOnFocus+ imgui.WindowFlags.NoSavedSettings)
        if imgui.CollapsingHeader(u8"��������� Los-Santos [Nope]") then
            imgui.Text(prices1)
        end
        if imgui.CollapsingHeader(u8"��������� San-Fierro [C]") then
            imgui.Text(prices2)
        end
        if imgui.CollapsingHeader(u8"��������� San-Fierro [B]") then
            imgui.Text(prices3)
        end
        if imgui.CollapsingHeader(u8"��������� Las-Venturas [A]") then
            imgui.Text(prices4)
        end
        if imgui.CollapsingHeader(u8"��������� San-Fierro") then
            imgui.Text(prices5)
        end
        if imgui.CollapsingHeader(u8"��������� Las-Venturas") then
            imgui.Text(prices6)
        end
        if imgui.CollapsingHeader(u8"���-����") then
            imgui.Text(prices7)
        end
        imgui.End()
    end  
    if gps_window_state.v then
    	imgui.SetNextWindowSize(imgui.ImVec2(250, 360), imgui.Cond.FirstUseEver)
    	imgui.SetNextWindowPos(imgui.ImVec2(main_x / 2 + 400, main_y / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
    	imgui.Begin(u8"GPS ���������", _, imgui.WindowFlags.NoCollapse + imgui.WindowFlags.NoResize + imgui.WindowFlags.NoMove + imgui.WindowFlags.NoBringToFrontOnFocus+ imgui.WindowFlags.NoSavedSettings)
    	if imgui.CollapsingHeader(u8"[1] ������������ �����") then
    		imgui.Text(u8(gps1))
    	end
    	if imgui.CollapsingHeader(u8"[2] �������������� ������") then
    		imgui.Text(u8(gps2))
    	end
    	if imgui.CollapsingHeader(u8"[3] �������� ������") then
    		imgui.Text(u8(gps3))
    	end
    	if imgui.CollapsingHeader(u8"[4] �������") then
    		imgui.Text(u8(gps4))
    	end
    	if imgui.CollapsingHeader(u8"[5] ��� �������") then
    		imgui.Text(u8(gps5))
    	end
    	if imgui.CollapsingHeader(u8"[6] �������") then
    		imgui.Text(u8(gps6))
    	end
    	if imgui.CollapsingHeader(u8"[7] �����") then
    		imgui.Text(u8(gps7))
    	end
    	if imgui.CollapsingHeader(u8"[8] ���") then
    		imgui.Text(u8(gps8))
    	end
    	if imgui.CollapsingHeader(u8"[9] ���������") then
    		imgui.Text(u8(gps9))
    	end
    	if imgui.CollapsingHeader(u8"[10] �����������") then
    		imgui.Text(u8(gps10))
    	end
    	imgui.CollapsingHeader(u8"[11] �������")
    	imgui.CollapsingHeader(u8"[12] �����")
    	imgui.CollapsingHeader(u8"[13] ����� ��������")
    	imgui.CollapsingHeader(u8"[14] �����")
    	imgui.CollapsingHeader(u8"[15] ���������")
    	imgui.CollapsingHeader(u8"[16] ������� �����������")
    	imgui.CollapsingHeader(u8"[17] ��������� ��������")
    	imgui.CollapsingHeader(u8"[18] ��� ���")
    	imgui.CollapsingHeader(u8"[19] ��� ������")
    	imgui.CollapsingHeader(u8"[20] ��� ���������")
    	imgui.CollapsingHeader(u8"[21] ��� �����")
    	imgui.CollapsingHeader(u8"[22] ����� ����������� �����")
    	imgui.End()
    end
end


function isAccessScript(name)
    local access = false
    for i = 1, #accessName do
        if name:find(accessName[i]) then
    access = true
    break
    end
    end
    return access
    end 
    function autoupdate(json_url, prefix, url)
        local dlstatus = require('moonloader').download_status
        local json = getWorkingDirectory() .. '\\'..thisScript().name..'-version.json'
        if doesFileExist(json) then os.remove(json) end
        downloadUrlToFile(json_url, json,
          function(id, status, p1, p2)
            if status == dlstatus.STATUSEX_ENDDOWNLOAD then
              if doesFileExist(json) then
                local f = io.open(json, 'r')
                if f then
                  local info = decodeJson(f:read('*a'))
                  updatelink = info.updateurl
                  updateversion = info.latest
                  f:close()
                  os.remove(json)
                  if updateversion ~= thisScript().version then
                    lua_thread.create(function(prefix)
                      local dlstatus = require('moonloader').download_status
                      local color = -1
                      sampAddChatMessage((prefix..'���������� ����������. ������� ���������� c '..thisScript().version..' �� '..updateversion), color)
                      wait(250)
                      downloadUrlToFile(updatelink, thisScript().path,
                        function(id3, status1, p13, p23)
                          if status1 == dlstatus.STATUS_DOWNLOADINGDATA then
                            print(string.format('��������� %d �� %d.', p13, p23))
                          elseif status1 == dlstatus.STATUS_ENDDOWNLOADDATA then
                            print('�������� ���������� ���������.')
                            sampAddChatMessage((prefix..'���������� ���������!'), color)
                            goupdatestatus = true
                            lua_thread.create(function() wait(500) thisScript():reload() end)
                          end
                          if status1 == dlstatus.STATUSEX_ENDDOWNLOAD then
                            if goupdatestatus == nil then
                              sampAddChatMessage((prefix..'���������� ������ ��������. �������� ���������� ������..'), color)
                              update = false
                            end
                          end
                        end
                      )
                      end, prefix
                    )
                  else
                    update = false
                    print('v'..thisScript().version..': ���������� �� ���������.')
                  end
                end
              else
                print('v'..thisScript().version..': �� ���� ��������� ����������. ��������� ��� ��������� �������������� �� '..url)
                update = false
              end
            end
          end
        )
        while update ~= false do wait(100) end
      end
apply_custom_style()