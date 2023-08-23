require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmDbsSelector()
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
    obj:setName("frmDbsSelector");
    obj:setWidth(262);
    obj:setHeight(42);
    obj:setMargins({left=2,right=2,top=2,bottom=2});
    obj:setTheme("dark");


        


    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj);
    obj.image1:setWidth(262);
    obj.image1:setHeight(42);
    obj.image1:setSRC("/imagens/Extra_Poder_Magia_Nome.png");
    obj.image1:setName("image1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj);
    obj.button1:setLeft(0);
    obj.button1:setTop(0);
    obj.button1:setWidth(28);
    obj.button1:setHeight(42);
    obj.button1:setOpacity(0.5);
    obj.button1:setName("button1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj);
    obj.edit1:setLeft(35);
    obj.edit1:setTop(4);
    obj.edit1:setWidth(223);
    obj.edit1:setHeight(34);
    obj.edit1:setField("nome");
    obj.edit1:setFontColor("black");
    obj.edit1:setTransparent(true);
    obj.edit1:setName("edit1");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            Dialogs.confirmYesNo("Deseja realmente apagar?",
                                             function (confirmado)
                                                if confirmado then
                                                    sheet.trained = false
                                                    NDB.deleteNode(sheet);
                                                end;
                                             end);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmDbsSelector()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmDbsSelector();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmDbsSelector = {
    newEditor = newfrmDbsSelector, 
    new = newfrmDbsSelector, 
    name = "frmDbsSelector", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmDbsSelector = _frmDbsSelector;
Firecast.registrarForm(_frmDbsSelector);

return _frmDbsSelector;
