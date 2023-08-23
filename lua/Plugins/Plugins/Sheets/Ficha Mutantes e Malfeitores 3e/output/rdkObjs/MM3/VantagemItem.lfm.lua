require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmVantagemItem()
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
    obj:setName("frmVantagemItem");
    obj:setWidth(110);
    obj:setHeight(125);
    obj:setMargins({top=1});

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("#212121");
    obj.rectangle1:setName("rectangle1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(25);
    obj.layout1:setName("layout1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setAlign("client");
    obj.edit1:setField("nome");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setAlign("right");
    obj.layout2:setWidth(75);
    obj.layout2:setName("layout2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setAlign("left");
    obj.edit2:setWidth(50);
    obj.edit2:setField("custo");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setType("number");
    obj.edit2:setName("edit2");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout2);
    obj.dataLink1:setFields({'custo'});
    obj.dataLink1:setName("dataLink1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout2);
    obj.button1:setAlign("right");
    obj.button1:setWidth(25);
    obj.button1:setText("X");
    obj.button1:setName("button1");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.rectangle1);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("efeitos");
    obj.textEditor1:setMargins({left=5,right=5,bottom=5});
    obj.textEditor1:setName("textEditor1");

    obj._e_event0 = obj.dataLink1:addEventListener("onUserChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            							local node = NDB.getRoot(sheet);
            
            							local custo = 0;
            							local nodes = NDB.getChildNodes(node.rclVantagens); 
            							for i=1, #nodes, 1 do
            								custo = custo + (tonumber(nodes[i].custo) or 0);
            							end
            
            							node.ppVantagens = custo
            						end;
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (_)
            Dialogs.confirmOkCancel("Tem certeza que quer apagar essa vantagem?",
            							function (confirmado)
            								if confirmado then
            									NDB.deleteNode(sheet);
            								end;
            						end);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmVantagemItem()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmVantagemItem();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmVantagemItem = {
    newEditor = newfrmVantagemItem, 
    new = newfrmVantagemItem, 
    name = "frmVantagemItem", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmVantagemItem = _frmVantagemItem;
Firecast.registrarForm(_frmVantagemItem);

return _frmVantagemItem;
