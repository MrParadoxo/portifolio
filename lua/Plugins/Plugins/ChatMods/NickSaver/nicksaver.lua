﻿require("rrpg.lua");
require("vhd.lua");
require("utils.lua");
require("internet.lua");
require("dialogs.lua");

local config = NDB.load("config.xml");

local function isNewVersion(installed, downloaded)
	local installedVersion = {};
	local installedIndex = 0;
	for i in string.gmatch(installed, "[^%.]+") do
		installedIndex = installedIndex +1;
		installedVersion[installedIndex] = i;
	end

	local downloadedVersion = {};
	local downloadedIndex = 0;
	for i in string.gmatch(downloaded, "[^%.]+") do
		downloadedIndex = downloadedIndex +1;
		downloadedVersion[downloadedIndex] = i;
	end

	for i=1, math.min(installedIndex, downloadedIndex), 1 do 
		if (tonumber(installedVersion[i]) or 0) > (tonumber(downloadedVersion[i]) or 0) then
			return false;
		elseif (tonumber(installedVersion[i]) or 0) < (tonumber(downloadedVersion[i]) or 0) then
			return true;
		end;
	end;

	if downloadedIndex > installedIndex then
		return true;
	else
		return false;
	end;
end;

nickdb = NDB.load("nickData.xml");
if nickdb.nicksSaved==nil then
	nickdb.nicksSaved = {};
end;
colordb = NDB.load("colorData.xml");
if colordb.colorsSaved==nil then
	colordb.colorsSaved = {};
end;

if config.rooms == nil then 
	config.rooms = {};
end;

local function initializeRoom(mesa)
	if config.rooms[mesa.codigoInterno] == nil then
		config.rooms[mesa.codigoInterno] = {};
	end;
end
local function UseColor(text, colorPos, roomData)
	local i, j = string.find(text, "]", colorPos+1);
	local savedColors = NDB.getChildNodes(roomData.listaDeCores);
	if i~=nil then
		local token = string.sub(text, colorPos, i-1);
		-- search for the color
		for aux=1, #savedColors, 1 do
			if token == "@"..(savedColors[aux].id or "") and savedColors[aux].colorID ~= nil then
				text = string.gsub(text, token, savedColors[aux].colorID, 1);
				break
			end
		end
	end

	return text, colorPos;
end


function getConfigWindow(mesa)
	initializeRoom(mesa);

	local cfgForm = GUI.newForm("nicksaverPopup");
	cfgForm:setNodeObject(config.rooms[mesa.codigoInterno]);
	cfgForm.title = "Nick Saver - " .. mesa.nome;
	popup = cfgForm;
	
	return cfgForm;
end

-- Implementação dos comandos
Firecast.Messaging.listen("HandleChatCommand", 
	function (message)
		if message.mesa == nil then return end;
		initializeRoom(message.mesa);

		if message.comando == "nicksaver" then
			local cfgForm = getConfigWindow(message.mesa);

			if (cfgForm) then
				cfgForm:show();
			end;

			message.response = {handled = true};
		elseif message.comando == "savenick" then
			if message.parametro == nil or message.parametro == "" then
				local nick = message.mesa.meuJogador.nick;

				if nick ~= nil then
					config.rooms[message.mesa.codigoInterno].nick = nick;
					config.rooms[message.mesa.codigoInterno].nickSaved = true;
					message.mesa.chat:escrever("Nick <" .. nick .. "[§K1]> salvo.");
				end;
			else
				config.rooms[message.mesa.codigoInterno].nick = message.parametro;
				config.rooms[message.mesa.codigoInterno].nickSaved = true;
				message.mesa.chat:escrever("Nick <" .. message.parametro .. "[§K1]> salvo.");
			end;

			message.response = {handled = true};
		elseif message.comando == "savecolor" then
			local num;
			if message.parametro ~= nil then
				num = tonumber(message.parametro);
				if num~=nil and num > 28 then
					num = nil;
				end;
			end;

			if message.parametro == nil or message.parametro == "" or num == nil then
				message.mesa.chat:escrever("[§K1]Use /savecolor <0-28> para salvar uma cor; ou /savecolor -1 para apagar a cor salva.");
			elseif num < 0 then
				config.rooms[message.mesa.codigoInterno].colorBaseSaved = false;
				message.mesa.chat:escrever("Cor salva apagada.");
			else
				config.rooms[message.mesa.codigoInterno].colorBase = num;
				config.rooms[message.mesa.codigoInterno].colorBaseSaved = true;
				message.mesa.chat:escrever("Cor <" .. num .. "> salva.");
			end;

			message.response = {handled = true};
		end
	end);

-- Escuta das mensagens de chat padrão
Firecast.Messaging.listen("MesaJoined", 
	function (message)
		if message.mesa == nil then return end;
		initializeRoom(message.mesa);
		if message.eu and config.rooms[message.mesa.codigoInterno].nickSaved==true then

			local nick = message.mesa.meuJogador.nick;

			if config.rooms[message.mesa.codigoInterno].nick ~= nick then
				message.mesa.chat:enviarMensagem("/nick " .. config.rooms[message.mesa.codigoInterno].nick);
			end;
		end
	end);

Firecast.listen('HandleChatTextInput',
	function(message)
		if message.mesa == nil then return end;
		initializeRoom(message.mesa);
		-- ignore if is a command 
		if message.texto:sub(1, 1) == "/" then return end;
        if message.isCommand then return end;

		local text = message.texto;
		local altered = false;

		-- CHECK FOR CHAT SIGNALS
		if config.rooms[message.mesa.codigoInterno].colorBaseSaved == true then
			altered = true;
			text = "[§K" .. config.rooms[message.mesa.codigoInterno].colorBase .. "]" .. text;
		end;

		if config.rooms[message.mesa.codigoInterno].colorTalkSaved == true then
			altered = true;
			text = string.gsub(text, "%-%-%- ", "[§K".. config.rooms[message.mesa.codigoInterno].colorTalk .. "]--- ");
			text = string.gsub(text, "%-%- ", "[§K".. config.rooms[message.mesa.codigoInterno].colorTalk .. "]-- ");
			text = string.gsub(text, "%- ", "[§K".. config.rooms[message.mesa.codigoInterno].colorTalk .. "]- ");
		end;

        if config.rooms[message.mesa.codigoInterno].colorActSaved == true then
            altered = true;
            text = string.gsub(text, "*", "[§K".. config.rooms[message.mesa.codigoInterno].colorAct .. "]*");
        end;

        if config.rooms[message.mesa.codigoInterno].colorThoughtSaved == true then
            altered = true;
            text = string.gsub(text, "\"", "[§K".. config.rooms[message.mesa.codigoInterno].colorThought .. "]\"");
        end;

		-- CHECK FOR SAVED COLORS
		if string.find(text, "%[§K@") ~= nil or string.find(text, "%[§K @") ~= nil then
			local i = 0;
			local j = 0;
			while true do
		      i,j = string.find(text, "%[§K@", j+1)
		      if i == nil then break end
		      text, j = UseColor(text, j, config.rooms[message.mesa.codigoInterno])
		      altered = true;
		    end
			i = 0;
			j = 0;
			while true do
		      i,j = string.find(text, "%[§K @", j+1)
		      if i == nil then break end
		      text, j = UseColor(text, j, config.rooms[message.mesa.codigoInterno])
		      altered = true;
		    end
		end

		if altered then
			message.response = {newText = text};
		end;
	end);

Firecast.Messaging.listen("ListChatCommands",
		function(message)
				message.response = {{comando="/nicksaver", descricao="Abre o pop up de configuração do Nick Saver. "},
									{comando="/savenick", descricao="Salva o nick atual para essa mesa. "},
									{comando="/savenick <NICK>", descricao="Salva o <NICK> para essa mesa. "},
									{comando="/savecolor <0-15>", descricao="Salva a cor para essa mesa. "},
									{comando="/savecolor -1", descricao="Apaga a cor salva para essa mesa. "}};
		end);

-- auto-update
Internet.download("https://github.com/rrpgfirecast/firecast/blob/master/Plugins/ChatMods/NickSaver/output/NickSaver.rpk?raw=true",
			function(stream, contentType)
				local info = Firecast.Plugins.getRPKDetails(stream);
				config.versionDownloaded = "VERSÃO DISPONÍVEL: " .. info.version;

				local installed = Firecast.Plugins.getInstalledPlugins();
				local myself;
				for i=1, #installed, 1 do
					if installed[i].moduleId == info.moduleId then
						myself = installed[i];
						config.versionInstalled = "VERSÃO INSTALADA: " .. installed[i].version;
					end;
				end;

				if config.noUpdate==true then return end;
				if myself~= nil and isNewVersion(myself.version, info.version) then
					Dialogs.choose("Há uma nova versão do Nick Saver (".. info.version .."). Deseja instalar?",{"Sim", "Não", "Não perguntar novamente."},
						function(selected, selectedIndex, selectedText)
							if selected and selectedIndex == 1 then
								GUI.openInBrowser('https://github.com/rrpgfirecast/firecast/blob/master/Plugins/ChatMods/NickSaver/output/NickSaver.rpk?raw=true');
							elseif selected and selectedIndex == 3 then
								config.noUpdate = true;
							end;
						end);
				end;
			end,	   
			function (errorMsg)
				--showMessage(errorMsg);
			end,	   
			function (downloaded, total)
				-- esta função será chamada constantemente.
				-- dividir "downloaded" por "total" lhe dará uma porcentagem do download.
			end);