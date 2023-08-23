require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmListaNote()
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
    obj:setName("frmListaNote");
    obj:setHeight(25);
    obj:setMargins({top=2,bottom=2});

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj);
    obj.edit1:setAlign("client");
    obj.edit1:setField("nome");
    obj.edit1:setHint("Anote aqui.");
    obj.edit1:setTransparent(true);
    obj.edit1:setName("edit1");
    obj.edit1:setFontColor("#C0504D");
    obj.edit1:setFontSize(20);
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setTextTrimming("word");
    obj.edit1:setFontFamily("kalam");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setHeight(2);
    obj.rectangle1:setWidth(400);
    obj.rectangle1:setTop(24);
    lfm_setPropAsString(obj.rectangle1, "sides",  "top");
    obj.rectangle1:setColor("#00000000");
    obj.rectangle1:setStrokeColor("black");
    obj.rectangle1:setStrokeSize(1);
    obj.rectangle1:setName("rectangle1");

    obj.Noteinfo = GUI.fromHandle(_obj_newObject("popup"));
    obj.Noteinfo:setParent(obj);
    obj.Noteinfo:setName("Noteinfo");
    obj.Noteinfo:setWidth(1200);
    obj.Noteinfo:setHeight(500);
    obj.Noteinfo:setBackOpacity(0.5);
    lfm_setPropAsString(obj.Noteinfo, "autoScopeNode",  "true");

    obj.NoteinfoEditor = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.NoteinfoEditor:setParent(obj.Noteinfo);
    obj.NoteinfoEditor:setName("NoteinfoEditor");
    obj.NoteinfoEditor:setTop(2);
    obj.NoteinfoEditor:setLeft(2);
    obj.NoteinfoEditor:setWidth(300);
    obj.NoteinfoEditor:setHeight(400);

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj);
    obj.button1:setAlign("left");
    obj.button1:setText("X");
    obj.button1:setWidth(25);
    obj.button1:setFontColor("white");
    obj.button1:setHint("Apagar a anotação.");
    obj.button1:setName("button1");
    obj.button1:setFontSize(20);
    obj.button1:setHorzTextAlign("center");
    obj.button1:setVertTextAlign("center");
    obj.button1:setTextTrimming("word");
    obj.button1:setFontFamily("kalam");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            Dialogs.confirmOkCancel("Quer mesmo apagar essa anotação?",
            						function (confirmado)
            							if confirmado then
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

        if self.Noteinfo ~= nil then self.Noteinfo:destroy(); self.Noteinfo = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.NoteinfoEditor ~= nil then self.NoteinfoEditor:destroy(); self.NoteinfoEditor = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmListaNote()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmListaNote();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmListaNote = {
    newEditor = newfrmListaNote, 
    new = newfrmListaNote, 
    name = "frmListaNote", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmListaNote = _frmListaNote;
Firecast.registrarForm(_frmListaNote);

return _frmListaNote;
