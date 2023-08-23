require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFichaPersonaTPR()
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
    obj:setFormType("sheetTemplate");
    obj:setDataType("br.com.rpg.trpg.Ficha");
    obj:setTitle("Ficha De Personagem TRPG");
    obj:setName("frmFichaPersonaTPR");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setLeft(10);
    obj.layout1:setTop(10);
    obj.layout1:setWidth(64);
    obj.layout1:setHeight(64);
    obj.layout1:setName("layout1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setName("layout2");
    obj.layout2:setWidth(64);
    obj.layout2:setAlign("top");
    obj.layout2:setMargins({left=2, right=2});

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setField("personagem.armadura");
    obj.edit1:setName("edit1");
    obj.edit1:setHeight(30);
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setFontSize(20);
    obj.edit1:setAlign("top");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout2);
    obj.label1:setText("Armadura");
    obj.label1:setName("label1");
    obj.label1:setAlign("top");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setVertTextAlign("leading");
    obj.label1:setAutoSize(true);

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setName("layout3");
    obj.layout3:setWidth(64);
    obj.layout3:setAlign("top");
    obj.layout3:setMargins({left=2, right=2});

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout3);
    obj.edit2:setField("personagem.pv");
    obj.edit2:setName("edit2");
    obj.edit2:setHeight(30);
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setFontSize(20);
    obj.edit2:setAlign("top");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout3);
    obj.label2:setText("PV");
    obj.label2:setName("label2");
    obj.label2:setAlign("top");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setVertTextAlign("leading");
    obj.label2:setAutoSize(true);

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout1);
    obj.layout4:setName("layout4");
    obj.layout4:setWidth(64);
    obj.layout4:setAlign("top");
    obj.layout4:setMargins({left=2, right=2});

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout4);
    obj.edit3:setField("personagem.EST");
    obj.edit3:setName("edit3");
    obj.edit3:setHeight(30);
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setFontSize(20);
    obj.edit3:setAlign("top");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout4);
    obj.label3:setText("EST");
    obj.label3:setName("label3");
    obj.label3:setAlign("top");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setVertTextAlign("leading");
    obj.label3:setAutoSize(true);

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj);
    obj.layout5:setLeft(80);
    obj.layout5:setTop(100);
    obj.layout5:setWidth(100);
    obj.layout5:setHeight(100);
    obj.layout5:setName("layout5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout5);
    obj.layout6:setName("layout6");
    obj.layout6:setWidth(100);
    obj.layout6:setHeight(60);
    obj.layout6:setLeft(100);
    obj.layout6:setMargins({left=2, right=2});

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout6);
    obj.edit4:setField("texto.magias");
    obj.edit4:setName("edit4");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout6);
    obj.label4:setText("MAGIAS");
    obj.label4:setName("label4");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFichaPersonaTPR()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFichaPersonaTPR();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFichaPersonaTPR = {
    newEditor = newfrmFichaPersonaTPR, 
    new = newfrmFichaPersonaTPR, 
    name = "frmFichaPersonaTPR", 
    dataType = "br.com.rpg.trpg.Ficha", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Ficha De Personagem TRPG", 
    description=""};

frmFichaPersonaTPR = _frmFichaPersonaTPR;
Firecast.registrarForm(_frmFichaPersonaTPR);
Firecast.registrarDataType(_frmFichaPersonaTPR);

return _frmFichaPersonaTPR;
