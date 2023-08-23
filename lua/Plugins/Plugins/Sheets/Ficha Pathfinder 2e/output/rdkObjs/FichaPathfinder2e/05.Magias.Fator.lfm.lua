require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFator()
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
    obj:setName("frmFator");
    obj:setWidth(225);
    obj:setHeight(25);
    obj:setMargins({top=1});

			
		local function askForDelete()
			Dialogs.confirmYesNo("Deseja realmente apagar esse fator?",
								 function (confirmado)
									if confirmado then
										NDB.deleteNode(sheet);
									end;
								 end);
		end;

		local function write(str)
            local mesa = Firecast.getMesaDe(sheet);
            if str then
                mesa.activeChat:escrever(str);
            else
                mesa.activeChat:escrever("String nula");
            end;
        end;
		


    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj);
    obj.edit1:setAlign("left");
    obj.edit1:setWidth(150);
    obj.edit1:setField("fator");
    obj.edit1:setName("edit1");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj);
    obj.edit2:setAlign("left");
    obj.edit2:setWidth(50);
    obj.edit2:setField("custo");
    obj.edit2:setName("edit2");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj);
    obj.button1:setAlign("right");
    obj.button1:setWidth(25);
    obj.button1:setText("X");
    obj.button1:setName("button1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("right");
    obj.layout1:setWidth(75);
    obj.layout1:setName("layout1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setTop(5);
    obj.layout2:setHeight(15);
    obj.layout2:setWidth(45);
    obj.layout2:setName("layout2");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout2);
    obj.imageCheckBox1:setAlign("client");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.Barrinha = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.Barrinha:setParent(obj.imageCheckBox1);
    obj.Barrinha:setColorMode("hl");
    obj.Barrinha:setWidth(45);
    obj.Barrinha:setHeight(15);
    obj.Barrinha:setMargins({top=5,bottom=5});
    obj.Barrinha:setHitTest(true);
    obj.Barrinha:setMouseGlow(true);
    obj.Barrinha:setColor("Green");
    obj.Barrinha:setName("Barrinha");
    obj.Barrinha:setField("BarrinhaValor");
    obj.Barrinha:setFieldMax("BarrinhaValorMax");

    obj.ValoresBarrinha = GUI.fromHandle(_obj_newObject("layout"));
    obj.ValoresBarrinha:setParent(obj.layout1);
    obj.ValoresBarrinha:setLeft(45);
    obj.ValoresBarrinha:setTop(5);
    obj.ValoresBarrinha:setHeight(15);
    obj.ValoresBarrinha:setWidth(30);
    obj.ValoresBarrinha:setMargins({top=5,bottom=5});
    obj.ValoresBarrinha:setVisible(false);
    obj.ValoresBarrinha:setName("ValoresBarrinha");

    obj.CorBarrinha = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.CorBarrinha:setParent(obj.ValoresBarrinha);
    obj.CorBarrinha:setAlign("client");
    obj.CorBarrinha:setXradius(2);
    obj.CorBarrinha:setYradius(2);
    obj.CorBarrinha:setName("CorBarrinha");
    obj.CorBarrinha:setColor("Green");

    obj.InfoBarrinha = GUI.fromHandle(_obj_newObject("label"));
    obj.InfoBarrinha:setParent(obj.CorBarrinha);
    obj.InfoBarrinha:setAlign("left");
    obj.InfoBarrinha:setFontColor("white");
    obj.InfoBarrinha:setFontSize(10);
    obj.InfoBarrinha:setAutoSize(true);
    obj.InfoBarrinha:setTextTrimming("none");
    obj.InfoBarrinha:setWordWrap(false);
    obj.InfoBarrinha:setName("InfoBarrinha");
    obj.InfoBarrinha:setField("InfoBarrinha");
    obj.InfoBarrinha:setHorzTextAlign("center");
    obj.InfoBarrinha:setText("0/0");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout1);
    obj.dataLink1:setField("CorBarrinha");
    obj.dataLink1:setDefaultValue("Green");
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'custo','mult'});
    obj.dataLink2:setName("dataLink2");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            askForDelete();
        end, obj);

    obj._e_event1 = obj.Barrinha:addEventListener("onMouseEnter",
        function (_)
            self.CorBarrinha.color = "Green";
            						self.ValoresBarrinha.visible = true;
            						sheet.InfoBarrinha = (sheet.BarrinhaValor or 0) .. "/"	.. (sheet.BarrinhaValorMax or 0);
        end, obj);

    obj._e_event2 = obj.Barrinha:addEventListener("onMouseLeave",
        function (_)
            self.ValoresBarrinha.visible = false;
        end, obj);

    obj._e_event3 = obj.Barrinha:addEventListener("onDblClick",
        function (_)
            sheet.BarrinhaID = sheet.index;
            						sheet.AtributoBarrinha = sheet.fator;
            						
            						sheet.ModificadorBarrinha = "igual";
            						sheet.ModificadorBarrinhaMax = "igual";
            						sheet.ValorTempAtualBarrinha = sheet.BarrinhaValor;
            						sheet.ValorTempMaxBarrinha = sheet.BarrinhaValorMax;
            						sheet.ValorMudadoAtualBarrinha = sheet.BarrinhaValor;
            						sheet.ValorMudadoMaxBarrinha = sheet.BarrinhaValorMax;
            
            						local rec = self:findControlByName("PopupBarColor");
            						if rec~=nil then rec.color = "Green" end;
            						
            						local pop = self:findControlByName("BarPopup");
            						if pop~= nil then
            							pop.scopeNode = sheet;
            							pop:show("top", self.Barrinha);
            							pop.top = (pop.top + 29 + 10);
            						end;
        end, obj);

    obj._e_event4 = obj.InfoBarrinha:addEventListener("onResize",
        function (_)
            self.InfoBarrinha.width = (self.ValoresBarrinha.width - 4);
        end, obj);

    obj._e_event5 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.Barrinha.color = "Green";
        end, obj);

    obj._e_event6 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet== nil then return end;
            
            			local pai = NDB.getParent(sheet);
            			local avo = NDB.getParent(pai);
            			local cd = 0;
            			local mitigation = 0;
            			local mult = 1;
            			
            			local nodes = NDB.getChildNodes(pai); 
            			for i=1, #nodes, 1 do
            				local custo = nodes[i].custo or "";
            				local tipo = string.sub(custo, 1, 1);
            				local value = string.sub(custo, 2);
            				if tipo=="-" then
            					mitigation = mitigation + (tonumber(value) or 0);
            				elseif tipo=="x" then
            					mult = mult + (tonumber(value) or 1) -1;
            				else
            					cd = cd + (tonumber(custo) or 0); 
            				end;
            			end
            
            			local idMagia = cd * mult - mitigation;
            			avo.idMagia = idMagia;
            			avo.mult = mult;
            			avo.po = idMagia * 9000;
            			avo.xp = idMagia * 360;
            
            			local rcl = self:findControlByName("rclFactors");
            			if rcl then rcl:sort() end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
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

        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.CorBarrinha ~= nil then self.CorBarrinha:destroy(); self.CorBarrinha = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.InfoBarrinha ~= nil then self.InfoBarrinha:destroy(); self.InfoBarrinha = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.ValoresBarrinha ~= nil then self.ValoresBarrinha:destroy(); self.ValoresBarrinha = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.Barrinha ~= nil then self.Barrinha:destroy(); self.Barrinha = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFator()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFator();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFator = {
    newEditor = newfrmFator, 
    new = newfrmFator, 
    name = "frmFator", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFator = _frmFator;
Firecast.registrarForm(_frmFator);

return _frmFator;
