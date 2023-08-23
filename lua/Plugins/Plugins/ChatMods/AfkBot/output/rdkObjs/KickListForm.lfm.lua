require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmKickItem()
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
    obj:setName("frmKickItem");
    obj:setWidth(250);
    obj:setHeight(25);
    obj:setMargins({top=1});

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("#212121");
    obj.rectangle1:setName("rectangle1");

    obj.login = GUI.fromHandle(_obj_newObject("label"));
    obj.login:setParent(obj.rectangle1);
    obj.login:setLeft(5);
    obj.login:setTop(0);
    obj.login:setWidth(70);
    obj.login:setHeight(25);
    obj.login:setName("login");
    obj.login:setField("login");
    obj.login:setHorzTextAlign("center");
    obj.login:setHitTest(true);

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle1);
    obj.label1:setLeft(75);
    obj.label1:setTop(0);
    obj.label1:setWidth(70);
    obj.label1:setHeight(25);
    obj.label1:setField("dice");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.rectangle1);
    obj.label2:setLeft(145);
    obj.label2:setTop(0);
    obj.label2:setWidth(70);
    obj.label2:setHeight(25);
    obj.label2:setField("laugh");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setName("label2");

    obj.clean = GUI.fromHandle(_obj_newObject("button"));
    obj.clean:setParent(obj.rectangle1);
    obj.clean:setLeft(220);
    obj.clean:setWidth(25);
    obj.clean:setHeight(25);
    obj.clean:setFontSize(25);
    obj.clean:setText("C");
    obj.clean:setHint("Limpa o usuario.");
    obj.clean:setName("clean");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.rectangle1);
    obj.dataLink1:setField("login");
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.rectangle1);
    obj.dataLink2:setField("user");
    obj.dataLink2:setName("dataLink2");

    obj._e_event0 = obj.clean:addEventListener("onClick",
        function (_)
            if sheet==nil then return end;
            				sheet.dice = 0;
            				sheet.laugh = 0;
            				sheet.kicked = false;
        end, obj);

    obj._e_event1 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            				self.login.hint = sheet.login;
        end, obj);

    obj._e_event2 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            				if sheet.user then
            					self.clean.visible = true;
            				else
            					self.clean.visible = false;
            				end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.login ~= nil then self.login:destroy(); self.login = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.clean ~= nil then self.clean:destroy(); self.clean = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmKickItem()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmKickItem();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmKickItem = {
    newEditor = newfrmKickItem, 
    new = newfrmKickItem, 
    name = "frmKickItem", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmKickItem = _frmKickItem;
Firecast.registrarForm(_frmKickItem);

return _frmKickItem;
