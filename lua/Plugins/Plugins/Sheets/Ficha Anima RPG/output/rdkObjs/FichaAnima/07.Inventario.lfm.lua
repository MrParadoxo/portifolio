require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFichaRPGmeister7_svg()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmFichaRPGmeister7_svg");
    obj:setAlign("client");
    obj:setTheme("dark");
    obj:setMargins({top=1});


			local function getNumber(text)
				local mod = "0";
				if text~= nil then
					mod = string.gsub(text, "%.", "");
					mod = string.gsub(mod, "k", "000");
					mod = string.gsub(mod, "K", "");
					mod = string.gsub(mod, "g", "");
					mod = string.gsub(mod, "P", "");
					mod = string.gsub(mod, "p", "");
					mod = string.gsub(mod, "O", "");
					mod = string.gsub(mod, "o", "");
					mod = string.gsub(mod, "X", "");
					mod = string.gsub(mod, "x", "");
					mod = string.gsub(mod, " ", "");
					mod = string.gsub(mod, ",", ".");
				end
				return tonumber(mod);
			end;

			function EnviarMudanca(valor, valormax)
				if sheet ~= nil then
					local nome = sheet.AtributoBarrinha or "Equipamento";
					local personagem = sheet.nome or "nome";
					local text = "[§K2]" .. nome .. "[§K3] de [§K2]" .. personagem.. "[§K3]: ";
					
					if tonumber(valor) >= 0 then
						valor = "+" .. tostring(valor);
					end;
					if tonumber(valormax) >= 0 then
						valormax = "+" .. tostring(valormax);
					end;
					
					if tonumber(valormax) == 0 then
						text = text .. valor;
					else
						text = text .. valor .. "/" .. valormax;
					end;
					
					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
					if mesaDoPersonagem ~= nil then
						   mesaDoPersonagem.activeChat:enviarMensagem(text);
					end;
				end;
			end;
			
			function RequestReload(mode)
				if sheet ~= nil then
					if mode == "begin" then
						self.rclListaDeNPC:beginUpdate();
						self.rclListaDeNPC.visible = false;
					elseif mode == "end" then
						self.rclListaDeNPC.visible = true;
						self.rclListaDeNPC:endUpdate();
					end;
				end;
			end;

			local function resetImgSlot()
				if sheet==nil then return end;
				sheet.imgSlots = "http://www.cin.ufpe.br/~jvdl/Plugins/Ficha%20RPG%20meister%20releases/images/slots.png";
			end;
		


    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(475);
    obj.layout1:setHeight(330);
    obj.layout1:setName("layout1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("black");
    obj.rectangle1:setName("rectangle1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setText("+");
    obj.button1:setLeft(5);
    obj.button1:setTop(5);
    obj.button1:setWidth(20);
    obj.button1:setHeight(20);
    obj.button1:setName("button1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(30);
    obj.label1:setTop(5);
    obj.label1:setWidth(435);
    obj.label1:setHeight(20);
    obj.label1:setText("ARMAS E ESCUDOS                                     Kg         $");
    obj.label1:setName("label1");

    obj.rclListaDasArmas = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDasArmas:setParent(obj.layout1);
    obj.rclListaDasArmas:setName("rclListaDasArmas");
    obj.rclListaDasArmas:setField("campoDasArmas");
    obj.rclListaDasArmas:setTemplateForm("frmFichaRPGmeister7A_svg");
    obj.rclListaDasArmas:setLeft(5);
    obj.rclListaDasArmas:setTop(25);
    obj.rclListaDasArmas:setWidth(465);
    obj.rclListaDasArmas:setHeight(275);
    obj.rclListaDasArmas:setLayout("vertical");
    obj.rclListaDasArmas:setMinQt(1);

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(260);
    obj.label2:setTop(305);
    obj.label2:setWidth(50);
    obj.label2:setHeight(20);
    obj.label2:setText("Kg");
    obj.label2:setName("label2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setLeft(280);
    obj.rectangle2:setTop(305);
    obj.rectangle2:setWidth(70);
    obj.rectangle2:setHeight(20);
    obj.rectangle2:setColor("black");
    obj.rectangle2:setStrokeColor("white");
    obj.rectangle2:setStrokeSize(1);
    obj.rectangle2:setName("rectangle2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout1);
    obj.label3:setVertTextAlign("center");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setLeft(280);
    obj.label3:setTop(305);
    obj.label3:setWidth(70);
    obj.label3:setHeight(20);
    obj.label3:setField("pesoArmas");
    obj.label3:setName("label3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout1);
    obj.label4:setLeft(360);
    obj.label4:setTop(305);
    obj.label4:setWidth(50);
    obj.label4:setHeight(20);
    obj.label4:setText("$");
    obj.label4:setName("label4");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout1);
    obj.rectangle3:setLeft(375);
    obj.rectangle3:setTop(305);
    obj.rectangle3:setWidth(91);
    obj.rectangle3:setHeight(20);
    obj.rectangle3:setColor("black");
    obj.rectangle3:setStrokeColor("white");
    obj.rectangle3:setStrokeSize(1);
    obj.rectangle3:setName("rectangle3");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout1);
    obj.label5:setVertTextAlign("center");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setLeft(375);
    obj.label5:setTop(305);
    obj.label5:setWidth(91);
    obj.label5:setHeight(20);
    obj.label5:setField("precoArmas");
    obj.label5:setName("label5");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(335);
    obj.layout2:setWidth(475);
    obj.layout2:setHeight(335);
    obj.layout2:setName("layout2");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout2);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("black");
    obj.rectangle4:setName("rectangle4");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout2);
    obj.label6:setLeft(5);
    obj.label6:setTop(1);
    obj.label6:setWidth(200);
    obj.label6:setHeight(20);
    obj.label6:setText("MOCHILA");
    obj.label6:setName("label6");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout2);
    obj.textEditor1:setLeft(5);
    obj.textEditor1:setTop(25);
    obj.textEditor1:setWidth(465);
    obj.textEditor1:setHeight(280);
    obj.textEditor1:setField("mochila");
    obj.textEditor1:setName("textEditor1");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout2);
    obj.label7:setLeft(280);
    obj.label7:setTop(310);
    obj.label7:setWidth(50);
    obj.label7:setHeight(20);
    obj.label7:setText("Kg");
    obj.label7:setName("label7");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setLeft(300);
    obj.edit1:setTop(310);
    obj.edit1:setWidth(70);
    obj.edit1:setHeight(20);
    obj.edit1:setField("pesoMochila");
    obj.edit1:setName("edit1");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout2);
    obj.label8:setLeft(380);
    obj.label8:setTop(310);
    obj.label8:setWidth(50);
    obj.label8:setHeight(20);
    obj.label8:setText("$");
    obj.label8:setName("label8");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setLeft(395);
    obj.edit2:setTop(310);
    obj.edit2:setWidth(71);
    obj.edit2:setHeight(20);
    obj.edit2:setField("precoMochila");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(480);
    obj.layout3:setTop(0);
    obj.layout3:setWidth(200);
    obj.layout3:setHeight(220);
    obj.layout3:setName("layout3");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout3);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("black");
    obj.rectangle5:setName("rectangle5");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout3);
    obj.label9:setLeft(5);
    obj.label9:setTop(1);
    obj.label9:setWidth(150);
    obj.label9:setHeight(20);
    obj.label9:setText("PERMANENCIAS");
    obj.label9:setName("label9");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout3);
    obj.textEditor2:setLeft(5);
    obj.textEditor2:setTop(25);
    obj.textEditor2:setWidth(190);
    obj.textEditor2:setHeight(165);
    obj.textEditor2:setField("permanencias");
    obj.textEditor2:setName("textEditor2");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout3);
    obj.label10:setLeft(5);
    obj.label10:setTop(195);
    obj.label10:setWidth(50);
    obj.label10:setHeight(20);
    obj.label10:setText("Kg");
    obj.label10:setName("label10");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setLeft(25);
    obj.edit3:setTop(195);
    obj.edit3:setWidth(70);
    obj.edit3:setHeight(20);
    obj.edit3:setField("pesoPermanencias");
    obj.edit3:setName("edit3");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout3);
    obj.label11:setLeft(105);
    obj.label11:setTop(195);
    obj.label11:setWidth(50);
    obj.label11:setHeight(20);
    obj.label11:setText("$");
    obj.label11:setName("label11");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout3);
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setLeft(120);
    obj.edit4:setTop(195);
    obj.edit4:setWidth(70);
    obj.edit4:setHeight(20);
    obj.edit4:setField("precoPermanencias");
    obj.edit4:setName("edit4");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(685);
    obj.layout4:setTop(0);
    obj.layout4:setWidth(200);
    obj.layout4:setHeight(220);
    obj.layout4:setName("layout4");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout4);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("black");
    obj.rectangle6:setName("rectangle6");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout4);
    obj.label12:setLeft(5);
    obj.label12:setTop(1);
    obj.label12:setWidth(150);
    obj.label12:setHeight(20);
    obj.label12:setText("LIVRES");
    obj.label12:setName("label12");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout4);
    obj.textEditor3:setLeft(5);
    obj.textEditor3:setTop(25);
    obj.textEditor3:setWidth(190);
    obj.textEditor3:setHeight(165);
    obj.textEditor3:setField("livres");
    obj.textEditor3:setName("textEditor3");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout4);
    obj.label13:setLeft(5);
    obj.label13:setTop(195);
    obj.label13:setWidth(50);
    obj.label13:setHeight(20);
    obj.label13:setText("Kg");
    obj.label13:setName("label13");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout4);
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setLeft(25);
    obj.edit5:setTop(195);
    obj.edit5:setWidth(70);
    obj.edit5:setHeight(20);
    obj.edit5:setField("pesoLivres");
    obj.edit5:setName("edit5");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout4);
    obj.label14:setLeft(105);
    obj.label14:setTop(195);
    obj.label14:setWidth(50);
    obj.label14:setHeight(20);
    obj.label14:setText("$");
    obj.label14:setName("label14");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout4);
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setLeft(120);
    obj.edit6:setTop(195);
    obj.edit6:setWidth(70);
    obj.edit6:setHeight(20);
    obj.edit6:setField("precoLivres");
    obj.edit6:setName("edit6");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(480);
    obj.layout5:setTop(225);
    obj.layout5:setWidth(200);
    obj.layout5:setHeight(220);
    obj.layout5:setName("layout5");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout5);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("black");
    obj.rectangle7:setName("rectangle7");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout5);
    obj.label15:setLeft(5);
    obj.label15:setTop(1);
    obj.label15:setWidth(150);
    obj.label15:setHeight(20);
    obj.label15:setText("OUTROS");
    obj.label15:setName("label15");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout5);
    obj.textEditor4:setLeft(5);
    obj.textEditor4:setTop(25);
    obj.textEditor4:setWidth(190);
    obj.textEditor4:setHeight(165);
    obj.textEditor4:setField("outros");
    obj.textEditor4:setName("textEditor4");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout5);
    obj.label16:setLeft(5);
    obj.label16:setTop(195);
    obj.label16:setWidth(50);
    obj.label16:setHeight(20);
    obj.label16:setText("Kg");
    obj.label16:setName("label16");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout5);
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setLeft(25);
    obj.edit7:setTop(195);
    obj.edit7:setWidth(70);
    obj.edit7:setHeight(20);
    obj.edit7:setField("pesoOutros");
    obj.edit7:setName("edit7");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout5);
    obj.label17:setLeft(105);
    obj.label17:setTop(195);
    obj.label17:setWidth(50);
    obj.label17:setHeight(20);
    obj.label17:setText("$");
    obj.label17:setName("label17");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout5);
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setLeft(120);
    obj.edit8:setTop(195);
    obj.edit8:setWidth(70);
    obj.edit8:setHeight(20);
    obj.edit8:setField("precoOutros");
    obj.edit8:setName("edit8");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setLeft(685);
    obj.layout6:setTop(225);
    obj.layout6:setWidth(200);
    obj.layout6:setHeight(220);
    obj.layout6:setName("layout6");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout6);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("black");
    obj.rectangle8:setName("rectangle8");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout6);
    obj.label18:setLeft(5);
    obj.label18:setTop(1);
    obj.label18:setWidth(150);
    obj.label18:setHeight(20);
    obj.label18:setText("MUNIÇÕES");
    obj.label18:setName("label18");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout6);
    obj.textEditor5:setLeft(5);
    obj.textEditor5:setTop(25);
    obj.textEditor5:setWidth(190);
    obj.textEditor5:setHeight(165);
    obj.textEditor5:setField("municoes");
    obj.textEditor5:setName("textEditor5");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout6);
    obj.label19:setLeft(5);
    obj.label19:setTop(195);
    obj.label19:setWidth(50);
    obj.label19:setHeight(20);
    obj.label19:setText("Kg");
    obj.label19:setName("label19");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout6);
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setLeft(25);
    obj.edit9:setTop(195);
    obj.edit9:setWidth(70);
    obj.edit9:setHeight(20);
    obj.edit9:setField("pesoMunicoes");
    obj.edit9:setName("edit9");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout6);
    obj.label20:setLeft(105);
    obj.label20:setTop(195);
    obj.label20:setWidth(50);
    obj.label20:setHeight(20);
    obj.label20:setText("$");
    obj.label20:setName("label20");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout6);
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setLeft(120);
    obj.edit10:setTop(195);
    obj.edit10:setWidth(70);
    obj.edit10:setHeight(20);
    obj.edit10:setField("precoMunicoes");
    obj.edit10:setName("edit10");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(480);
    obj.layout7:setTop(450);
    obj.layout7:setWidth(200);
    obj.layout7:setHeight(221);
    obj.layout7:setName("layout7");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout7);
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("black");
    obj.rectangle9:setName("rectangle9");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout7);
    obj.label21:setLeft(5);
    obj.label21:setTop(1);
    obj.label21:setWidth(150);
    obj.label21:setHeight(20);
    obj.label21:setText("BOLSOS");
    obj.label21:setName("label21");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout7);
    obj.textEditor6:setLeft(5);
    obj.textEditor6:setTop(25);
    obj.textEditor6:setWidth(190);
    obj.textEditor6:setHeight(165);
    obj.textEditor6:setField("bolsos");
    obj.textEditor6:setName("textEditor6");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout7);
    obj.label22:setLeft(5);
    obj.label22:setTop(195);
    obj.label22:setWidth(50);
    obj.label22:setHeight(20);
    obj.label22:setText("Kg");
    obj.label22:setName("label22");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout7);
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setLeft(25);
    obj.edit11:setTop(195);
    obj.edit11:setWidth(70);
    obj.edit11:setHeight(20);
    obj.edit11:setField("pesoBolsos");
    obj.edit11:setName("edit11");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout7);
    obj.label23:setLeft(105);
    obj.label23:setTop(195);
    obj.label23:setWidth(50);
    obj.label23:setHeight(20);
    obj.label23:setText("$");
    obj.label23:setName("label23");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout7);
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setLeft(120);
    obj.edit12:setTop(195);
    obj.edit12:setWidth(70);
    obj.edit12:setHeight(20);
    obj.edit12:setField("precoBolsos");
    obj.edit12:setName("edit12");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox1);
    obj.layout8:setLeft(685);
    obj.layout8:setTop(450);
    obj.layout8:setWidth(200);
    obj.layout8:setHeight(221);
    obj.layout8:setName("layout8");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout8);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("black");
    obj.rectangle10:setName("rectangle10");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout8);
    obj.label24:setLeft(5);
    obj.label24:setTop(1);
    obj.label24:setWidth(150);
    obj.label24:setHeight(20);
    obj.label24:setText("IMOVEIS");
    obj.label24:setName("label24");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout8);
    obj.textEditor7:setLeft(5);
    obj.textEditor7:setTop(25);
    obj.textEditor7:setWidth(190);
    obj.textEditor7:setHeight(165);
    obj.textEditor7:setField("moveis");
    obj.textEditor7:setName("textEditor7");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout8);
    obj.label25:setLeft(5);
    obj.label25:setTop(195);
    obj.label25:setWidth(50);
    obj.label25:setHeight(20);
    obj.label25:setText("Kg");
    obj.label25:setName("label25");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout8);
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setLeft(25);
    obj.edit13:setTop(195);
    obj.edit13:setWidth(70);
    obj.edit13:setHeight(20);
    obj.edit13:setField("pesoImoveis");
    obj.edit13:setName("edit13");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout8);
    obj.label26:setLeft(105);
    obj.label26:setTop(195);
    obj.label26:setWidth(50);
    obj.label26:setHeight(20);
    obj.label26:setText("$");
    obj.label26:setName("label26");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout8);
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setLeft(120);
    obj.edit14:setTop(195);
    obj.edit14:setWidth(70);
    obj.edit14:setHeight(20);
    obj.edit14:setField("precoImoveis");
    obj.edit14:setName("edit14");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
    obj.layout9:setLeft(890);
    obj.layout9:setTop(0);
    obj.layout9:setWidth(155);
    obj.layout9:setHeight(185);
    obj.layout9:setName("layout9");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout9);
    obj.rectangle11:setAlign("client");
    obj.rectangle11:setColor("black");
    obj.rectangle11:setName("rectangle11");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout9);
    obj.label27:setLeft(5);
    obj.label27:setTop(1);
    obj.label27:setWidth(200);
    obj.label27:setHeight(20);
    obj.label27:setText("DINHEIRO");
    obj.label27:setName("label27");

    obj.textEditor8 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout9);
    obj.textEditor8:setLeft(5);
    obj.textEditor8:setTop(25);
    obj.textEditor8:setWidth(145);
    obj.textEditor8:setHeight(80);
    obj.textEditor8:setField("dinheiro");
    obj.textEditor8:setName("textEditor8");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout9);
    obj.label28:setLeft(10);
    obj.label28:setTop(110);
    obj.label28:setWidth(50);
    obj.label28:setHeight(20);
    obj.label28:setText("TOTAL");
    obj.label28:setName("label28");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout9);
    obj.edit15:setField("dinheiroTotal");
    obj.edit15:setLeft(65);
    obj.edit15:setTop(110);
    obj.edit15:setWidth(85);
    obj.edit15:setHeight(20);
    obj.edit15:setFontSize(11);
    obj.edit15:setName("edit15");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout9);
    obj.label29:setLeft(10);
    obj.label29:setTop(135);
    obj.label29:setWidth(50);
    obj.label29:setHeight(20);
    obj.label29:setText("GASTOS");
    obj.label29:setName("label29");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout9);
    obj.rectangle12:setLeft(65);
    obj.rectangle12:setTop(135);
    obj.rectangle12:setWidth(85);
    obj.rectangle12:setHeight(20);
    obj.rectangle12:setColor("black");
    obj.rectangle12:setStrokeColor("white");
    obj.rectangle12:setStrokeSize(1);
    obj.rectangle12:setName("rectangle12");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout9);
    obj.label30:setField("gastos");
    obj.label30:setText("0");
    obj.label30:setLeft(65);
    obj.label30:setTop(135);
    obj.label30:setWidth(85);
    obj.label30:setHeight(20);
    obj.label30:setHorzTextAlign("center");
    obj.label30:setFontSize(11);
    obj.label30:setName("label30");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout9);
    obj.label31:setLeft(10);
    obj.label31:setTop(160);
    obj.label31:setWidth(50);
    obj.label31:setHeight(20);
    obj.label31:setText("RESTANTE");
    obj.label31:setFontSize(10);
    obj.label31:setName("label31");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout9);
    obj.rectangle13:setLeft(65);
    obj.rectangle13:setTop(160);
    obj.rectangle13:setWidth(85);
    obj.rectangle13:setHeight(20);
    obj.rectangle13:setColor("black");
    obj.rectangle13:setStrokeColor("white");
    obj.rectangle13:setStrokeSize(1);
    obj.rectangle13:setName("rectangle13");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout9);
    obj.label32:setField("dinheiroRestante");
    obj.label32:setText("0");
    obj.label32:setLeft(65);
    obj.label32:setTop(160);
    obj.label32:setWidth(85);
    obj.label32:setHeight(20);
    obj.label32:setHorzTextAlign("center");
    obj.label32:setFontSize(11);
    obj.label32:setName("label32");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.scrollBox1);
    obj.dataLink1:setFields({'precoCabeca', 'precoOlhos', 'precoPescoco', 'precoOmbros', 'precoTorso', 'precoCorpo', 'precoPunhos', 'precoCintura', 'precoMaos', 'precoDedosI', 'precoDesdosII', 'precoPes', 'precoArmas', 'precoMochila', 'precoPermanencias', 'precoLivres', 'precoOutros', 'precoMunicoes', 'precoBolsos', 'precoImoveis', 'precoInventorioComp', 'dinheiroTotal'});
    obj.dataLink1:setName("dataLink1");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox1);
    obj.layout10:setLeft(890);
    obj.layout10:setTop(190);
    obj.layout10:setWidth(250);
    obj.layout10:setHeight(222);
    obj.layout10:setName("layout10");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout10);
    obj.rectangle14:setAlign("client");
    obj.rectangle14:setColor("black");
    obj.rectangle14:setName("rectangle14");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout10);
    obj.label33:setLeft(5);
    obj.label33:setTop(1);
    obj.label33:setWidth(200);
    obj.label33:setHeight(20);
    obj.label33:setText("ARMADURA");
    obj.label33:setName("label33");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout10);
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setLeft(5);
    obj.edit16:setTop(20);
    obj.edit16:setWidth(240);
    obj.edit16:setHeight(25);
    obj.edit16:setField("equipamentoCorpo");
    obj.edit16:setName("edit16");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout10);
    obj.label34:setLeft(10);
    obj.label34:setTop(50);
    obj.label34:setWidth(50);
    obj.label34:setHeight(20);
    obj.label34:setText("CA");
    obj.label34:setName("label34");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout10);
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setLeft(45);
    obj.edit17:setTop(50);
    obj.edit17:setWidth(40);
    obj.edit17:setHeight(20);
    obj.edit17:setField("equipamentoCorpoCA");
    obj.edit17:setName("edit17");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout10);
    obj.label35:setLeft(90);
    obj.label35:setTop(50);
    obj.label35:setWidth(50);
    obj.label35:setHeight(20);
    obj.label35:setText("CAT");
    obj.label35:setName("label35");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.layout10);
    obj.comboBox1:setLeft(120);
    obj.comboBox1:setTop(50);
    obj.comboBox1:setWidth(125);
    obj.comboBox1:setHeight(20);
    obj.comboBox1:setField("equipamentoCorpoCategoria");
    obj.comboBox1:setItems({'Leve', 'Média', 'Pesada', 'Massiva'});
    obj.comboBox1:setFontColor("white");
    obj.comboBox1:setName("comboBox1");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout10);
    obj.label36:setLeft(10);
    obj.label36:setTop(75);
    obj.label36:setWidth(50);
    obj.label36:setHeight(20);
    obj.label36:setText("DES");
    obj.label36:setName("label36");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout10);
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setLeft(45);
    obj.edit18:setTop(75);
    obj.edit18:setWidth(40);
    obj.edit18:setHeight(20);
    obj.edit18:setField("equipamentoCorpoDesMax");
    obj.edit18:setName("edit18");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout10);
    obj.label37:setLeft(90);
    obj.label37:setTop(75);
    obj.label37:setWidth(50);
    obj.label37:setHeight(20);
    obj.label37:setText("PEN");
    obj.label37:setName("label37");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout10);
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setLeft(125);
    obj.edit19:setTop(75);
    obj.edit19:setWidth(40);
    obj.edit19:setHeight(20);
    obj.edit19:setField("penalidade");
    obj.edit19:setName("edit19");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout10);
    obj.label38:setLeft(170);
    obj.label38:setTop(75);
    obj.label38:setWidth(50);
    obj.label38:setHeight(20);
    obj.label38:setText("Falha");
    obj.label38:setFontSize(13);
    obj.label38:setName("label38");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout10);
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setLeft(205);
    obj.edit20:setTop(75);
    obj.edit20:setWidth(40);
    obj.edit20:setHeight(20);
    obj.edit20:setField("equipamentoCorpoFalha");
    obj.edit20:setName("edit20");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layout10);
    obj.dataLink2:setField("penalidade");
    obj.dataLink2:setName("dataLink2");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout10);
    obj.label39:setLeft(10);
    obj.label39:setTop(100);
    obj.label39:setWidth(50);
    obj.label39:setHeight(20);
    obj.label39:setText("Desl");
    obj.label39:setName("label39");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout10);
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setLeft(45);
    obj.edit21:setTop(100);
    obj.edit21:setWidth(40);
    obj.edit21:setHeight(20);
    obj.edit21:setField("equipamentoCorpoDesl");
    obj.edit21:setName("edit21");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout10);
    obj.label40:setLeft(170);
    obj.label40:setTop(100);
    obj.label40:setWidth(50);
    obj.label40:setHeight(20);
    obj.label40:setText("Correr");
    obj.label40:setFontSize(12);
    obj.label40:setName("label40");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout10);
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setLeft(205);
    obj.edit22:setTop(100);
    obj.edit22:setWidth(40);
    obj.edit22:setHeight(20);
    obj.edit22:setField("equipamentoCorpoCorrer");
    obj.edit22:setName("edit22");

    obj.textEditor9 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout10);
    obj.textEditor9:setLeft(5);
    obj.textEditor9:setTop(122);
    obj.textEditor9:setWidth(240);
    obj.textEditor9:setHeight(65);
    obj.textEditor9:setField("descricaoCorpo");
    obj.textEditor9:setName("textEditor9");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout10);
    obj.label41:setLeft(70);
    obj.label41:setTop(193);
    obj.label41:setWidth(50);
    obj.label41:setHeight(20);
    obj.label41:setText("Kg");
    obj.label41:setName("label41");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout10);
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setLeft(90);
    obj.edit23:setTop(190);
    obj.edit23:setWidth(50);
    obj.edit23:setHeight(25);
    obj.edit23:setField("pesoCorpo");
    obj.edit23:setName("edit23");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout10);
    obj.label42:setLeft(147);
    obj.label42:setTop(193);
    obj.label42:setWidth(50);
    obj.label42:setHeight(20);
    obj.label42:setText("$");
    obj.label42:setName("label42");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout10);
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setLeft(160);
    obj.edit24:setTop(190);
    obj.edit24:setWidth(84);
    obj.edit24:setHeight(25);
    obj.edit24:setField("precoCorpo");
    obj.edit24:setName("edit24");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.scrollBox1);
    obj.layout11:setLeft(1050);
    obj.layout11:setTop(0);
    obj.layout11:setWidth(155);
    obj.layout11:setHeight(185);
    obj.layout11:setName("layout11");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout11);
    obj.rectangle15:setAlign("client");
    obj.rectangle15:setColor("black");
    obj.rectangle15:setName("rectangle15");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout11);
    obj.label43:setLeft(5);
    obj.label43:setTop(1);
    obj.label43:setWidth(150);
    obj.label43:setHeight(20);
    obj.label43:setText("CARGA");
    obj.label43:setName("label43");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout11);
    obj.label44:setLeft(20);
    obj.label44:setTop(25);
    obj.label44:setWidth(50);
    obj.label44:setHeight(20);
    obj.label44:setText("LEVE");
    obj.label44:setName("label44");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout11);
    obj.rectangle16:setLeft(80);
    obj.rectangle16:setTop(25);
    obj.rectangle16:setWidth(70);
    obj.rectangle16:setHeight(20);
    obj.rectangle16:setColor("black");
    obj.rectangle16:setStrokeColor("white");
    obj.rectangle16:setStrokeSize(1);
    obj.rectangle16:setName("rectangle16");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout11);
    obj.label45:setLeft(80);
    obj.label45:setTop(25);
    obj.label45:setWidth(70);
    obj.label45:setHeight(20);
    obj.label45:setField("cargaLeve");
    obj.label45:setHorzTextAlign("center");
    obj.label45:setName("label45");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout11);
    obj.label46:setLeft(20);
    obj.label46:setTop(47);
    obj.label46:setWidth(50);
    obj.label46:setHeight(20);
    obj.label46:setText("MÉDIA");
    obj.label46:setName("label46");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout11);
    obj.rectangle17:setLeft(80);
    obj.rectangle17:setTop(47);
    obj.rectangle17:setWidth(70);
    obj.rectangle17:setHeight(20);
    obj.rectangle17:setColor("black");
    obj.rectangle17:setStrokeColor("white");
    obj.rectangle17:setStrokeSize(1);
    obj.rectangle17:setName("rectangle17");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout11);
    obj.label47:setLeft(80);
    obj.label47:setTop(47);
    obj.label47:setWidth(70);
    obj.label47:setHeight(20);
    obj.label47:setField("cargaMedia");
    obj.label47:setHorzTextAlign("center");
    obj.label47:setName("label47");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout11);
    obj.label48:setLeft(20);
    obj.label48:setTop(69);
    obj.label48:setWidth(50);
    obj.label48:setHeight(20);
    obj.label48:setText("PESADA");
    obj.label48:setName("label48");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout11);
    obj.rectangle18:setLeft(80);
    obj.rectangle18:setTop(69);
    obj.rectangle18:setWidth(70);
    obj.rectangle18:setHeight(20);
    obj.rectangle18:setColor("black");
    obj.rectangle18:setStrokeColor("white");
    obj.rectangle18:setStrokeSize(1);
    obj.rectangle18:setName("rectangle18");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout11);
    obj.label49:setLeft(80);
    obj.label49:setTop(69);
    obj.label49:setWidth(70);
    obj.label49:setHeight(20);
    obj.label49:setField("cargaPesada");
    obj.label49:setHorzTextAlign("center");
    obj.label49:setName("label49");

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout11);
    obj.rectangle19:setWidth(70);
    obj.rectangle19:setHeight(20);
    obj.rectangle19:setLeft(80);
    obj.rectangle19:setTop(91);
    obj.rectangle19:setColor("black");
    obj.rectangle19:setStrokeColor("white");
    obj.rectangle19:setStrokeSize(1);
    obj.rectangle19:setName("rectangle19");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout11);
    obj.label50:setLeft(20);
    obj.label50:setTop(91);
    obj.label50:setWidth(50);
    obj.label50:setHeight(20);
    obj.label50:setText("ERGUER");
    obj.label50:setName("label50");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout11);
    obj.label51:setField("cargaErguer");
    obj.label51:setText("valor");
    obj.label51:setWidth(70);
    obj.label51:setHeight(20);
    obj.label51:setLeft(80);
    obj.label51:setTop(91);
    obj.label51:setHorzTextAlign("center");
    obj.label51:setName("label51");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.layout11);
    obj.rectangle20:setWidth(70);
    obj.rectangle20:setHeight(20);
    obj.rectangle20:setLeft(80);
    obj.rectangle20:setTop(113);
    obj.rectangle20:setColor("black");
    obj.rectangle20:setStrokeColor("white");
    obj.rectangle20:setStrokeSize(1);
    obj.rectangle20:setName("rectangle20");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layout11);
    obj.label52:setLeft(10);
    obj.label52:setTop(113);
    obj.label52:setWidth(70);
    obj.label52:setHeight(20);
    obj.label52:setText("EMPURRAR");
    obj.label52:setName("label52");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layout11);
    obj.label53:setField("cargaLevantar");
    obj.label53:setText("valor");
    obj.label53:setWidth(70);
    obj.label53:setHeight(20);
    obj.label53:setLeft(80);
    obj.label53:setTop(113);
    obj.label53:setHorzTextAlign("center");
    obj.label53:setName("label53");

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.layout11);
    obj.rectangle21:setWidth(70);
    obj.rectangle21:setHeight(20);
    obj.rectangle21:setLeft(80);
    obj.rectangle21:setTop(135);
    obj.rectangle21:setColor("black");
    obj.rectangle21:setStrokeColor("white");
    obj.rectangle21:setStrokeSize(1);
    obj.rectangle21:setName("rectangle21");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout11);
    obj.label54:setLeft(10);
    obj.label54:setTop(135);
    obj.label54:setWidth(65);
    obj.label54:setHeight(20);
    obj.label54:setText("LEVANTAR");
    obj.label54:setName("label54");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout11);
    obj.label55:setField("cargaEmpurrar");
    obj.label55:setText("valor");
    obj.label55:setWidth(70);
    obj.label55:setHeight(20);
    obj.label55:setLeft(80);
    obj.label55:setTop(135);
    obj.label55:setHorzTextAlign("center");
    obj.label55:setName("label55");

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.layout11);
    obj.rectangle22:setWidth(70);
    obj.rectangle22:setHeight(20);
    obj.rectangle22:setLeft(80);
    obj.rectangle22:setTop(160);
    obj.rectangle22:setColor("#404040");
    obj.rectangle22:setName("rectangle22");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout11);
    obj.label56:setLeft(20);
    obj.label56:setTop(160);
    obj.label56:setWidth(65);
    obj.label56:setHeight(20);
    obj.label56:setText("ATUAL");
    obj.label56:setName("label56");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout11);
    obj.label57:setField("cargaAtual");
    obj.label57:setWidth(70);
    obj.label57:setHeight(20);
    obj.label57:setLeft(80);
    obj.label57:setTop(160);
    obj.label57:setHorzTextAlign("center");
    obj.label57:setFontColor("white");
    obj.label57:setName("label57");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.scrollBox1);
    obj.dataLink3:setField("cargaPesada");
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.scrollBox1);
    obj.dataLink4:setFields({'pesoCabeca', 'pesoOlhos', 'pesoPescoco', 'pesoOmbros', 'pesoTorso', 'pesoCorpo', 'pesoPunhos', 'pesoCintura', 'pesoMaos', 'pesoDedosI', 'pesoDesdosII', 'pesoPes', 'pesoArmas', 'pesoMochila', 'pesoPermanencias', 'pesoLivres', 'pesoOutros', 'pesoMunicoes', 'pesoBolsos', 'pesoImoveis', 'pesoInventorioComp'});
    obj.dataLink4:setName("dataLink4");

    obj.popArma = GUI.fromHandle(_obj_newObject("popup"));
    obj.popArma:setParent(obj.scrollBox1);
    obj.popArma:setName("popArma");
    obj.popArma:setWidth(300);
    obj.popArma:setHeight(400);
    obj.popArma:setBackOpacity(0.4);
    lfm_setPropAsString(obj.popArma, "autoScopeNode",  "false");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.popArma);
    obj.flowLayout1:setAlign("top");
    obj.flowLayout1:setAutoHeight(true);
    obj.flowLayout1:setMaxControlsPerLine(3);
    obj.flowLayout1:setMargins({bottom=4});
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setName("flowLayout1");

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout1);
    obj.flowPart1:setMinWidth(90);
    obj.flowPart1:setMaxWidth(100);
    obj.flowPart1:setHeight(35);
    obj.flowPart1:setName("flowPart1");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.flowPart1);
    obj.label58:setAlign("top");
    obj.label58:setFontSize(10);
    obj.label58:setText("NOME");
    obj.label58:setHorzTextAlign("center");
    obj.label58:setWordWrap(true);
    obj.label58:setTextTrimming("none");
    obj.label58:setAutoSize(true);
    obj.label58:setHint("Se a arma possui um nome de batismo ponha ele aqui.");
    obj.label58:setHitTest(true);
    obj.label58:setName("label58");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.flowPart1);
    obj.edit25:setAlign("client");
    obj.edit25:setField("batismo");
    obj.edit25:setFontSize(12);
    obj.edit25:setName("edit25");

    obj.flowPart2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart2:setParent(obj.flowLayout1);
    obj.flowPart2:setMinWidth(90);
    obj.flowPart2:setMaxWidth(100);
    obj.flowPart2:setHeight(35);
    obj.flowPart2:setName("flowPart2");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.flowPart2);
    obj.label59:setAlign("top");
    obj.label59:setFontSize(10);
    obj.label59:setText("ARMA");
    obj.label59:setHorzTextAlign("center");
    obj.label59:setWordWrap(true);
    obj.label59:setTextTrimming("none");
    obj.label59:setAutoSize(true);
    obj.label59:setHint("Qual a arma? Espada Longa? Machado de Batalha? Arco Longo?");
    obj.label59:setHitTest(true);
    obj.label59:setName("label59");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.flowPart2);
    obj.edit26:setAlign("client");
    obj.edit26:setField("arma");
    obj.edit26:setFontSize(12);
    obj.edit26:setName("edit26");

    obj.flowPart3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart3:setParent(obj.flowLayout1);
    obj.flowPart3:setMinWidth(90);
    obj.flowPart3:setMaxWidth(100);
    obj.flowPart3:setHeight(35);
    obj.flowPart3:setName("flowPart3");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.flowPart3);
    obj.label60:setAlign("top");
    obj.label60:setFontSize(10);
    obj.label60:setText("TAMANHO");
    obj.label60:setHorzTextAlign("center");
    obj.label60:setWordWrap(true);
    obj.label60:setTextTrimming("none");
    obj.label60:setAutoSize(true);
    obj.label60:setHint("Essa arma foi feita para um personagem de que tamanho? Médio? Pequeno? Grande?");
    obj.label60:setHitTest(true);
    obj.label60:setName("label60");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.flowPart3);
    obj.edit27:setAlign("client");
    obj.edit27:setField("tamanho");
    obj.edit27:setFontSize(12);
    obj.edit27:setName("edit27");

    obj.flowPart4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart4:setParent(obj.flowLayout1);
    obj.flowPart4:setMinWidth(90);
    obj.flowPart4:setMaxWidth(100);
    obj.flowPart4:setHeight(35);
    obj.flowPart4:setName("flowPart4");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.flowPart4);
    obj.label61:setAlign("top");
    obj.label61:setFontSize(10);
    obj.label61:setText("MATERIAL");
    obj.label61:setHorzTextAlign("center");
    obj.label61:setWordWrap(true);
    obj.label61:setTextTrimming("none");
    obj.label61:setAutoSize(true);
    obj.label61:setHint("Essa arma foi feita de um material especial? Adamante? Prata?");
    obj.label61:setHitTest(true);
    obj.label61:setName("label61");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.flowPart4);
    obj.edit28:setAlign("client");
    obj.edit28:setField("material");
    obj.edit28:setFontSize(12);
    obj.edit28:setName("edit28");

    obj.flowPart5 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart5:setParent(obj.flowLayout1);
    obj.flowPart5:setMinWidth(90);
    obj.flowPart5:setMaxWidth(100);
    obj.flowPart5:setHeight(35);
    obj.flowPart5:setName("flowPart5");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.flowPart5);
    obj.label62:setAlign("top");
    obj.label62:setFontSize(10);
    obj.label62:setText("QUALIDADE");
    obj.label62:setHorzTextAlign("center");
    obj.label62:setWordWrap(true);
    obj.label62:setTextTrimming("none");
    obj.label62:setAutoSize(true);
    obj.label62:setHint("Essa arma é Obra-Prima? +1? +2?");
    obj.label62:setHitTest(true);
    obj.label62:setName("label62");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.flowPart5);
    obj.edit29:setAlign("client");
    obj.edit29:setField("qualidade");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setFontSize(12);
    obj.edit29:setName("edit29");

    obj.flowPart6 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart6:setParent(obj.flowLayout1);
    obj.flowPart6:setMinWidth(90);
    obj.flowPart6:setMaxWidth(100);
    obj.flowPart6:setHeight(35);
    obj.flowPart6:setName("flowPart6");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.flowPart6);
    obj.label63:setAlign("top");
    obj.label63:setFontSize(10);
    obj.label63:setText("CATEGORIA");
    obj.label63:setHorzTextAlign("center");
    obj.label63:setWordWrap(true);
    obj.label63:setTextTrimming("none");
    obj.label63:setAutoSize(true);
    obj.label63:setHint("Essa arma é Simples? Comum? Exotica?");
    obj.label63:setHitTest(true);
    obj.label63:setName("label63");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.flowPart6);
    obj.edit30:setAlign("client");
    obj.edit30:setField("categoria");
    obj.edit30:setFontSize(12);
    obj.edit30:setName("edit30");

    obj.flowPart7 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart7:setParent(obj.flowLayout1);
    obj.flowPart7:setMinWidth(90);
    obj.flowPart7:setMaxWidth(100);
    obj.flowPart7:setHeight(35);
    obj.flowPart7:setName("flowPart7");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.flowPart7);
    obj.label64:setAlign("top");
    obj.label64:setFontSize(10);
    obj.label64:setText("DANO");
    obj.label64:setHorzTextAlign("center");
    obj.label64:setWordWrap(true);
    obj.label64:setTextTrimming("none");
    obj.label64:setAutoSize(true);
    obj.label64:setHint("Qual o dado de dano dessa arma?");
    obj.label64:setHitTest(true);
    obj.label64:setName("label64");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.flowPart7);
    obj.edit31:setAlign("client");
    obj.edit31:setField("dano");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setFontSize(12);
    obj.edit31:setName("edit31");

    obj.flowPart8 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart8:setParent(obj.flowLayout1);
    obj.flowPart8:setMinWidth(90);
    obj.flowPart8:setMaxWidth(100);
    obj.flowPart8:setHeight(35);
    obj.flowPart8:setName("flowPart8");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.flowPart8);
    obj.label65:setAlign("top");
    obj.label65:setFontSize(10);
    obj.label65:setText("DECISIVO");
    obj.label65:setHorzTextAlign("center");
    obj.label65:setWordWrap(true);
    obj.label65:setTextTrimming("none");
    obj.label65:setAutoSize(true);
    obj.label65:setHint("Quando a margem de ameaça dessa arma?20? 19-20?");
    obj.label65:setHitTest(true);
    obj.label65:setName("label65");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.flowPart8);
    obj.edit32:setAlign("client");
    obj.edit32:setField("decisivo");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setFontSize(12);
    obj.edit32:setName("edit32");

    obj.flowPart9 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart9:setParent(obj.flowLayout1);
    obj.flowPart9:setMinWidth(90);
    obj.flowPart9:setMaxWidth(100);
    obj.flowPart9:setHeight(35);
    obj.flowPart9:setName("flowPart9");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.flowPart9);
    obj.label66:setAlign("top");
    obj.label66:setFontSize(10);
    obj.label66:setText("MULTIPLICADOR");
    obj.label66:setHorzTextAlign("center");
    obj.label66:setWordWrap(true);
    obj.label66:setTextTrimming("none");
    obj.label66:setAutoSize(true);
    obj.label66:setHint("Em um decisivo por quanto é multiplicado o dano dessa arma?");
    obj.label66:setHitTest(true);
    obj.label66:setName("label66");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.flowPart9);
    obj.edit33:setAlign("client");
    obj.edit33:setField("multiplicador");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setFontSize(12);
    obj.edit33:setName("edit33");

    obj.flowPart10 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart10:setParent(obj.flowLayout1);
    obj.flowPart10:setMinWidth(90);
    obj.flowPart10:setMaxWidth(100);
    obj.flowPart10:setHeight(35);
    obj.flowPart10:setName("flowPart10");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.flowPart10);
    obj.label67:setAlign("top");
    obj.label67:setFontSize(10);
    obj.label67:setText("ALCANCE");
    obj.label67:setHorzTextAlign("center");
    obj.label67:setWordWrap(true);
    obj.label67:setTextTrimming("none");
    obj.label67:setAutoSize(true);
    obj.label67:setHint("Qual o alcance em metros da arma? Normalmente usado apenas em armas de ataque a distancia. ");
    obj.label67:setHitTest(true);
    obj.label67:setName("label67");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.flowPart10);
    obj.edit34:setAlign("client");
    obj.edit34:setField("alcance");
    obj.edit34:setFontSize(12);
    obj.edit34:setName("edit34");

    obj.flowPart11 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart11:setParent(obj.flowLayout1);
    obj.flowPart11:setMinWidth(90);
    obj.flowPart11:setMaxWidth(100);
    obj.flowPart11:setHeight(35);
    obj.flowPart11:setName("flowPart11");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.flowPart11);
    obj.label68:setAlign("top");
    obj.label68:setFontSize(10);
    obj.label68:setText("ESPECIAL");
    obj.label68:setHorzTextAlign("center");
    obj.label68:setWordWrap(true);
    obj.label68:setTextTrimming("none");
    obj.label68:setAutoSize(true);
    obj.label68:setHint("Essa arma tem efeitos especiais? Pode ser usada em derrubar? desarmar? Pode ser preparada contra investida?");
    obj.label68:setHitTest(true);
    obj.label68:setName("label68");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.flowPart11);
    obj.edit35:setAlign("client");
    obj.edit35:setField("especial");
    obj.edit35:setFontSize(12);
    obj.edit35:setName("edit35");

    obj.flowPart12 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart12:setParent(obj.flowLayout1);
    obj.flowPart12:setMinWidth(90);
    obj.flowPart12:setMaxWidth(100);
    obj.flowPart12:setHeight(35);
    obj.flowPart12:setName("flowPart12");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.flowPart12);
    obj.label69:setAlign("top");
    obj.label69:setFontSize(10);
    obj.label69:setText("TIPO");
    obj.label69:setHorzTextAlign("center");
    obj.label69:setWordWrap(true);
    obj.label69:setTextTrimming("none");
    obj.label69:setAutoSize(true);
    obj.label69:setHint("Qual o tipo de dano que essa arma causa? Concusivo? Cortante?");
    obj.label69:setHitTest(true);
    obj.label69:setName("label69");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.flowPart12);
    obj.edit36:setAlign("client");
    obj.edit36:setField("tipo");
    obj.edit36:setFontSize(12);
    obj.edit36:setName("edit36");

    obj.flowPart13 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart13:setParent(obj.flowLayout1);
    obj.flowPart13:setMinWidth(290);
    obj.flowPart13:setMaxWidth(300);
    obj.flowPart13:setHeight(35);
    obj.flowPart13:setName("flowPart13");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.flowPart13);
    obj.label70:setAlign("top");
    obj.label70:setFontSize(10);
    obj.label70:setText("EFEITOS");
    obj.label70:setHorzTextAlign("center");
    obj.label70:setWordWrap(true);
    obj.label70:setTextTrimming("none");
    obj.label70:setAutoSize(true);
    obj.label70:setHint("Essa arma tem efeitos mágicos? Flamejante? Vorpal?");
    obj.label70:setHitTest(true);
    obj.label70:setName("label70");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.flowPart13);
    obj.edit37:setAlign("client");
    obj.edit37:setField("efeitos");
    obj.edit37:setFontSize(12);
    obj.edit37:setName("edit37");

    obj.flowPart14 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart14:setParent(obj.flowLayout1);
    obj.flowPart14:setMinWidth(90);
    obj.flowPart14:setMaxWidth(100);
    obj.flowPart14:setHeight(35);
    obj.flowPart14:setName("flowPart14");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.flowPart14);
    obj.label71:setAlign("top");
    obj.label71:setFontSize(10);
    obj.label71:setText("CA");
    obj.label71:setHorzTextAlign("center");
    obj.label71:setWordWrap(true);
    obj.label71:setTextTrimming("none");
    obj.label71:setAutoSize(true);
    obj.label71:setHint("Para escudos: qual o bonus que ele fornece na CA?");
    obj.label71:setHitTest(true);
    obj.label71:setName("label71");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.flowPart14);
    obj.edit38:setAlign("client");
    obj.edit38:setField("ca");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setFontSize(12);
    obj.edit38:setName("edit38");

    obj.flowPart15 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart15:setParent(obj.flowLayout1);
    obj.flowPart15:setMinWidth(90);
    obj.flowPart15:setMaxWidth(100);
    obj.flowPart15:setHeight(35);
    obj.flowPart15:setName("flowPart15");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.flowPart15);
    obj.label72:setAlign("top");
    obj.label72:setFontSize(10);
    obj.label72:setText("PEN");
    obj.label72:setHorzTextAlign("center");
    obj.label72:setWordWrap(true);
    obj.label72:setTextTrimming("none");
    obj.label72:setAutoSize(true);
    obj.label72:setHint("Para escudos: qual a penalidade do escudo?");
    obj.label72:setHitTest(true);
    obj.label72:setName("label72");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.flowPart15);
    obj.edit39:setAlign("client");
    obj.edit39:setField("penalidade");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setFontSize(12);
    obj.edit39:setName("edit39");

    obj.flowPart16 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart16:setParent(obj.flowLayout1);
    obj.flowPart16:setMinWidth(90);
    obj.flowPart16:setMaxWidth(100);
    obj.flowPart16:setHeight(35);
    obj.flowPart16:setName("flowPart16");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.flowPart16);
    obj.label73:setAlign("top");
    obj.label73:setFontSize(10);
    obj.label73:setText("FALHA");
    obj.label73:setHorzTextAlign("center");
    obj.label73:setWordWrap(true);
    obj.label73:setTextTrimming("none");
    obj.label73:setAutoSize(true);
    obj.label73:setHint("Para escudos: qual a falha arcana?");
    obj.label73:setHitTest(true);
    obj.label73:setName("label73");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.flowPart16);
    obj.edit40:setAlign("client");
    obj.edit40:setField("falha");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setFontSize(12);
    obj.edit40:setName("edit40");

    obj.textEditor10 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.popArma);
    obj.textEditor10:setAlign("client");
    obj.textEditor10:setField("descricao");
    obj.textEditor10:setName("textEditor10");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            self.rclListaDasArmas:append();
        end, obj);

    obj._e_event1 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            
            					-- Calculando todos gastos
            					local mod = 0;
            					mod = (getNumber(sheet.precoCabeca) or 0) +
            								(getNumber(sheet.precoOlhos) or 0) +
            								(getNumber(sheet.precoPescoco) or 0) +
            								(getNumber(sheet.precoOmbros) or 0) +
            								(getNumber(sheet.precoTorso) or 0) +
            								(getNumber(sheet.precoCorpo) or 0) +
            								(getNumber(sheet.precoPunhos) or 0) +
            								(getNumber(sheet.precoCintura) or 0) +
            								(getNumber(sheet.precoMaos) or 0) +
            								(getNumber(sheet.precoDedosI) or 0) +
            								(getNumber(sheet.precoDesdosII) or 0) +
            								(getNumber(sheet.precoPes) or 0) +
            								(getNumber(sheet.precoArmas) or 0) +
            								(getNumber(sheet.precoMochila) or 0) +
            								(getNumber(sheet.precoPermanencias) or 0) +
            								(getNumber(sheet.precoLivres) or 0) +
            								(getNumber(sheet.precoOutros) or 0) +
            								(getNumber(sheet.precoMunicoes) or 0) +
            								(getNumber(sheet.precoBolsos) or 0) +
            								(getNumber(sheet.precoImoveis) or 0) +
            								(getNumber(sheet.precoInventorioComp) or 0);
            
            					-- Calculando dinheiro restante
            					local total = getNumber(sheet.dinheiroTotal) or 0;
            					local restante = total - mod;
            					--showMessage(total .. " | " .. mod .. " | " .. restante);
            
            					-- Formatando texto
            					mod = string.gsub(mod, "%.", "_");
            					while true do  
            						mod, k = string.gsub(mod, "^(-?%d+)(%d%d%d)", '%1,%2')
            						if (k==0) then
            							break
            							end
            						end
            					mod = string.gsub(mod, ",", ".");
            					mod = string.gsub(mod, "_", ",");
            					sheet.gastos = mod;
            
            					restante = string.gsub(restante, "%.", "_");
            					while true do  
            						restante, k = string.gsub(restante, "^(-?%d+)(%d%d%d)", '%1,%2')
            						if (k==0) then
            							break
            							end
            						end
            					restante = string.gsub(restante, ",", ".");
            					restante = string.gsub(restante, "_", ",");
            					sheet.dinheiroRestante = restante;
            				end;
        end, obj);

    obj._e_event2 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            
            					local penalidade = (tonumber(sheet.penalidade) or 0)
            					
            					local nodes = ndb.getChildNodes(sheet.campoDasPericias); 
            					for i=1, #nodes, 1 do
            						nodes[i].penalidade = penalidade;
            					end
        end, obj);

    obj._e_event3 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            
            					local mod1 = sheet.cargaPesada;
            					if mod1==nil then
            						mod1 = "0";
            					end
            					mod1 = string.gsub(mod1, "Kg", "");
            					mod1 = string.gsub(mod1, "K", "");
            					mod1 = string.gsub(mod1, "k", "");
            					mod1 = string.gsub(mod1, "G", "");
            					mod1 = string.gsub(mod1, "g", "");
            					mod1 = string.gsub(mod1, ",", ".");
            					local mod = (tonumber(mod1) or 0);
            					sheet.cargaErguer = mod .. "Kg";
            					sheet.cargaLevantar = (2*mod) .. "Kg";
            					sheet.cargaEmpurrar = (5*mod) .. "Kg";
            				end;
        end, obj);

    obj._e_event4 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~=nil then
            					local mod = 0;
            					mod = (getNumber(sheet.pesoCabeca) or 0) +
            								(getNumber(sheet.pesoOlhos) or 0) +
            								(getNumber(sheet.pesoPescoco) or 0) +
            								(getNumber(sheet.pesoOmbros) or 0) +
            								(getNumber(sheet.pesoTorso) or 0) +
            								(getNumber(sheet.pesoCorpo) or 0) +
            								(getNumber(sheet.pesoPunhos) or 0) +
            								(getNumber(sheet.pesoCintura) or 0) +
            								(getNumber(sheet.pesoMaos) or 0) +
            								(getNumber(sheet.pesoDedosI) or 0) +
            								(getNumber(sheet.pesoDesdosII) or 0) +
            								(getNumber(sheet.pesoPes) or 0) +
            								(getNumber(sheet.pesoArmas) or 0) +
            								(getNumber(sheet.pesoMochila) or 0) +
            								(getNumber(sheet.pesoPermanencias) or 0) +
            								(getNumber(sheet.pesoLivres) or 0) +
            								(getNumber(sheet.pesoOutros) or 0) +
            								(getNumber(sheet.pesoMunicoes) or 0) +
            								(getNumber(sheet.pesoBolsos) or 0) +
            								(getNumber(sheet.pesoImoveis) or 0);
            					while true do  
            						mod, k = string.gsub(mod, "^(-?%d+)(%d%d%d)", '%1,%2')
            						if (k==0) then
            							break
            							end
            						end
            					mod = string.gsub(mod, ",", ".");
            					sheet.cargaAtual = mod .. "Kg";
            				end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.flowPart8 ~= nil then self.flowPart8:destroy(); self.flowPart8 = nil; end;
        if self.flowPart14 ~= nil then self.flowPart14:destroy(); self.flowPart14 = nil; end;
        if self.flowPart10 ~= nil then self.flowPart10:destroy(); self.flowPart10 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.flowPart13 ~= nil then self.flowPart13:destroy(); self.flowPart13 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.flowPart12 ~= nil then self.flowPart12:destroy(); self.flowPart12 = nil; end;
        if self.flowPart16 ~= nil then self.flowPart16:destroy(); self.flowPart16 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.popArma ~= nil then self.popArma:destroy(); self.popArma = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.flowPart9 ~= nil then self.flowPart9:destroy(); self.flowPart9 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.flowPart11 ~= nil then self.flowPart11:destroy(); self.flowPart11 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.rclListaDasArmas ~= nil then self.rclListaDasArmas:destroy(); self.rclListaDasArmas = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.flowPart15 ~= nil then self.flowPart15:destroy(); self.flowPart15 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFichaRPGmeister7_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFichaRPGmeister7_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFichaRPGmeister7_svg = {
    newEditor = newfrmFichaRPGmeister7_svg, 
    new = newfrmFichaRPGmeister7_svg, 
    name = "frmFichaRPGmeister7_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFichaRPGmeister7_svg = _frmFichaRPGmeister7_svg;
Firecast.registrarForm(_frmFichaRPGmeister7_svg);

return _frmFichaRPGmeister7_svg;
