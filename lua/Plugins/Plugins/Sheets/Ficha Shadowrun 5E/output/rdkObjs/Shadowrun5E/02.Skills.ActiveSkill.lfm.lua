require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmActiveSkill()
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
    obj:setName("frmActiveSkill");
    obj:setWidth(250);
    obj:setHeight(25);
    obj:setMargins({top=1});

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("#212121");
    obj.rectangle1:setName("rectangle1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle1);
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(150);
    obj.edit1:setHeight(25);
    obj.edit1:setField("skill_name");
    obj.edit1:setName("edit1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.rectangle1);
    obj.rectangle2:setLeft(150);
    obj.rectangle2:setTop(0);
    obj.rectangle2:setWidth(50);
    obj.rectangle2:setHeight(25);
    obj.rectangle2:setColor("black");
    obj.rectangle2:setStrokeColor("white");
    obj.rectangle2:setStrokeSize(1);
    obj.rectangle2:setName("rectangle2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle1);
    obj.label1:setLeft(150);
    obj.label1:setTop(0);
    obj.label1:setWidth(50);
    obj.label1:setHeight(25);
    obj.label1:setField("skill_total");
    obj.label1:setVertTextAlign("center");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle1);
    obj.button1:setLeft(200);
    obj.button1:setTop(0);
    obj.button1:setWidth(25);
    obj.button1:setHeight(25);
    obj.button1:setText("i");
    obj.button1:setName("button1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.rectangle1);
    obj.button2:setLeft(225);
    obj.button2:setTop(0);
    obj.button2:setWidth(25);
    obj.button2:setHeight(25);
    obj.button2:setText("X");
    obj.button2:setName("button2");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.rectangle1);
    obj.dataLink1:setFields({'skill_base', 'skill_points', 'skill_karma_bonus', 'skill_group_points', 'skill_group_karma_bonus', 'skill_other'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.rectangle1);
    obj.dataLink2:setFields({'skill_karma_spent', 'skill_espec_karma', 'skill_group_karma_spent'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.rectangle1);
    obj.dataLink3:setFields({'skill_group_points'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.rectangle1);
    obj.dataLink4:setFields({'skill_points'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.rectangle1);
    obj.dataLink5:setFields({'skill_base'});
    obj.dataLink5:setName("dataLink5");


			local function containGroup(array, word)
				local contain = false;

				for i=1, #array, 1 do
					if Utils.compareStringPtBr(array[i], word)==0 then
						contain = true;
					end;
				end;

				return contain;
			end;
		


    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            local pop = self:findControlByName("popupActiveSkill");
            				
            				if pop ~= nil then
            					pop:setNodeObject(self.sheet);
            					pop:showPopupEx("right", self);
            				else
            					showMessage("Ops, bug.. nao encontrei o popup de pericias para exibir");
            				end;
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (_)
            Dialogs.confirmOkCancel("Tem certeza que quer apagar esse objeto?",
            					function (confirmado)
            						if confirmado then
            							NDB.deleteNode(sheet);
            						end;
            				end);
        end, obj);

    obj._e_event2 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            				sheet.skill_total = 	(tonumber(sheet.skill_base) or 0) + 
            										(tonumber(sheet.skill_points) or 0) + 
            										(tonumber(sheet.skill_karma_bonus) or 0) + 
            										(tonumber(sheet.skill_group_points) or 0) + 
            										(tonumber(sheet.skill_group_karma_bonus) or 0) + 
            										(tonumber(sheet.skill_other) or 0);
        end, obj);

    obj._e_event3 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            
            				local node = NDB.getRoot(sheet);
            				local objetos = NDB.getChildNodes(node.skillList);
            				local karma = 0;
            				local groups = {};
            
            				for i=1, #objetos, 1 do 
            					karma = karma + (tonumber(objetos[i].skill_karma_spent) or 0);
            					karma = karma + (tonumber(objetos[i].skill_espec_karma) or 0);
            					if not containGroup(groups, objetos[i].skill_group_name) then
            						karma = karma + (tonumber(objetos[i].skill_group_karma_spent) or 0);
            						groups[#groups+1] = objetos[i].skill_group_name;
            					end;
            				end;
            
            				node.skills_active_karma_spent = karma;
        end, obj);

    obj._e_event4 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            
            				local node = NDB.getRoot(sheet);
            				local objetos = NDB.getChildNodes(node.skillList);
            				local points = 0;
            				local groups = {};
            
            				for i=1, #objetos, 1 do 
            					if not containGroup(groups, objetos[i].skill_group_name) then
            						points = points + (tonumber(objetos[i].skill_group_points) or 0);
            						groups[#groups+1] = objetos[i].skill_group_name;
            					end;
            				end;
            
            				node.skills_active_group_spent = points;
        end, obj);

    obj._e_event5 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            
            				local node = NDB.getRoot(sheet);
            				local objetos = NDB.getChildNodes(node.skillList);
            				local points = 0;
            
            				for i=1, #objetos, 1 do 
            					points = points + (tonumber(objetos[i].skill_points) or 0);
            				end;
            
            				node.skills_active_points_spent = points;
        end, obj);

    obj._e_event6 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            
            				local node = NDB.getRoot(sheet);
            				local objetos = NDB.getChildNodes(node.skillList);
            				local base = 0;
            
            				for i=1, #objetos, 1 do 
            					base = base + (tonumber(objetos[i].skill_base) or 0);
            				end;
            
            				node.skills_active_base_spent = base;
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

        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmActiveSkill()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmActiveSkill();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmActiveSkill = {
    newEditor = newfrmActiveSkill, 
    new = newfrmActiveSkill, 
    name = "frmActiveSkill", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmActiveSkill = _frmActiveSkill;
Firecast.registrarForm(_frmActiveSkill);

return _frmActiveSkill;
