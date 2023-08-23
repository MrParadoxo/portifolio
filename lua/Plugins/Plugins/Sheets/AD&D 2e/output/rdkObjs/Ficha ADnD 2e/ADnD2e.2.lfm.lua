require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmADnD2()
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
    obj:setName("frmADnD2");
    obj:setAlign("client");
    obj:setTheme("dark");
    obj:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(250);
    obj.layout1:setHeight(610);
    obj.layout1:setName("layout1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("black");
    obj.rectangle1:setXradius(5);
    obj.rectangle1:setYradius(5);
    obj.rectangle1:setCornerType("round");
    obj.rectangle1:setName("rectangle1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(0);
    obj.label1:setTop(5);
    obj.label1:setWidth(250);
    obj.label1:setHeight(20);
    obj.label1:setText("PERÍCIA COM ARMA");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(30);
    obj.layout2:setWidth(250);
    obj.layout2:setHeight(25);
    obj.layout2:setName("layout2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setLeft(5);
    obj.label2:setTop(5);
    obj.label2:setWidth(40);
    obj.label2:setHeight(20);
    obj.label2:setText("Iniciais");
    obj.label2:setFontSize(11);
    obj.label2:setHorzTextAlign("center");
    obj.label2:setName("label2");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setLeft(45);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(40);
    obj.edit1:setHeight(25);
    obj.edit1:setField("Pericia_Arma_Inicial");
    obj.edit1:setName("edit1");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setLeft(85);
    obj.label3:setTop(5);
    obj.label3:setWidth(40);
    obj.label3:setHeight(20);
    obj.label3:setText("Adicionais");
    obj.label3:setFontSize(8);
    obj.label3:setHorzTextAlign("center");
    obj.label3:setName("label3");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setLeft(125);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(40);
    obj.edit2:setHeight(25);
    obj.edit2:setField("Pericia_Arma_Adicional");
    obj.edit2:setName("edit2");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setLeft(165);
    obj.label4:setTop(5);
    obj.label4:setWidth(40);
    obj.label4:setHeight(20);
    obj.label4:setText("Penalidade");
    obj.label4:setFontSize(8);
    obj.label4:setHorzTextAlign("center");
    obj.label4:setName("label4");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout2);
    obj.edit3:setLeft(205);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(40);
    obj.edit3:setHeight(25);
    obj.edit3:setField("Pericia_Arma_Penalidade");
    obj.edit3:setName("edit3");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(55);
    obj.layout3:setWidth(250);
    obj.layout3:setHeight(25);
    obj.layout3:setName("layout3");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout3);
    obj.label5:setLeft(5);
    obj.label5:setTop(0);
    obj.label5:setWidth(190);
    obj.label5:setHeight(25);
    obj.label5:setFontSize(13);
    obj.label5:setHorzTextAlign("center");
    obj.label5:setText("Arma");
    obj.label5:setName("label5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout3);
    obj.label6:setLeft(195);
    obj.label6:setTop(0);
    obj.label6:setWidth(50);
    obj.label6:setHeight(25);
    obj.label6:setFontSize(13);
    obj.label6:setHorzTextAlign("center");
    obj.label6:setText("Pontos");
    obj.label6:setName("label6");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout1);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(80);
    obj.layout4:setWidth(250);
    obj.layout4:setHeight(25);
    obj.layout4:setName("layout4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setLeft(5);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(190);
    obj.edit4:setHeight(25);
    obj.edit4:setField("Pericia_Arma_2");
    obj.edit4:setName("edit4");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout4);
    obj.edit5:setLeft(195);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(50);
    obj.edit5:setHeight(25);
    obj.edit5:setField("Pericia_Arma_Pontos_2");
    obj.edit5:setName("edit5");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout1);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(105);
    obj.layout5:setWidth(250);
    obj.layout5:setHeight(25);
    obj.layout5:setName("layout5");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout5);
    obj.edit6:setLeft(5);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(190);
    obj.edit6:setHeight(25);
    obj.edit6:setField("Pericia_Arma_3");
    obj.edit6:setName("edit6");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout5);
    obj.edit7:setLeft(195);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(50);
    obj.edit7:setHeight(25);
    obj.edit7:setField("Pericia_Arma_Pontos_3");
    obj.edit7:setName("edit7");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout1);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(130);
    obj.layout6:setWidth(250);
    obj.layout6:setHeight(25);
    obj.layout6:setName("layout6");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout6);
    obj.edit8:setLeft(5);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(190);
    obj.edit8:setHeight(25);
    obj.edit8:setField("Pericia_Arma_4");
    obj.edit8:setName("edit8");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout6);
    obj.edit9:setLeft(195);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(50);
    obj.edit9:setHeight(25);
    obj.edit9:setField("Pericia_Arma_Pontos_4");
    obj.edit9:setName("edit9");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout1);
    obj.layout7:setLeft(0);
    obj.layout7:setTop(155);
    obj.layout7:setWidth(250);
    obj.layout7:setHeight(25);
    obj.layout7:setName("layout7");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout7);
    obj.edit10:setLeft(5);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(190);
    obj.edit10:setHeight(25);
    obj.edit10:setField("Pericia_Arma_5");
    obj.edit10:setName("edit10");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout7);
    obj.edit11:setLeft(195);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(50);
    obj.edit11:setHeight(25);
    obj.edit11:setField("Pericia_Arma_Pontos_5");
    obj.edit11:setName("edit11");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout1);
    obj.layout8:setLeft(0);
    obj.layout8:setTop(180);
    obj.layout8:setWidth(250);
    obj.layout8:setHeight(25);
    obj.layout8:setName("layout8");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout8);
    obj.edit12:setLeft(5);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(190);
    obj.edit12:setHeight(25);
    obj.edit12:setField("Pericia_Arma_7");
    obj.edit12:setName("edit12");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout8);
    obj.edit13:setLeft(195);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(50);
    obj.edit13:setHeight(25);
    obj.edit13:setField("Pericia_Arma_Pontos_7");
    obj.edit13:setName("edit13");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout1);
    obj.layout9:setLeft(0);
    obj.layout9:setTop(205);
    obj.layout9:setWidth(250);
    obj.layout9:setHeight(25);
    obj.layout9:setName("layout9");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout9);
    obj.edit14:setLeft(5);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(190);
    obj.edit14:setHeight(25);
    obj.edit14:setField("Pericia_Arma_8");
    obj.edit14:setName("edit14");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout9);
    obj.edit15:setLeft(195);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(50);
    obj.edit15:setHeight(25);
    obj.edit15:setField("Pericia_Arma_Pontos_8");
    obj.edit15:setName("edit15");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout1);
    obj.layout10:setLeft(0);
    obj.layout10:setTop(230);
    obj.layout10:setWidth(250);
    obj.layout10:setHeight(25);
    obj.layout10:setName("layout10");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout10);
    obj.edit16:setLeft(5);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(190);
    obj.edit16:setHeight(25);
    obj.edit16:setField("Pericia_Arma_9");
    obj.edit16:setName("edit16");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout10);
    obj.edit17:setLeft(195);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(50);
    obj.edit17:setHeight(25);
    obj.edit17:setField("Pericia_Arma_Pontos_9");
    obj.edit17:setName("edit17");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout1);
    obj.layout11:setLeft(0);
    obj.layout11:setTop(255);
    obj.layout11:setWidth(250);
    obj.layout11:setHeight(25);
    obj.layout11:setName("layout11");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout11);
    obj.edit18:setLeft(5);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(190);
    obj.edit18:setHeight(25);
    obj.edit18:setField("Pericia_Arma_10");
    obj.edit18:setName("edit18");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout11);
    obj.edit19:setLeft(195);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(50);
    obj.edit19:setHeight(25);
    obj.edit19:setField("Pericia_Arma_Pontos_10");
    obj.edit19:setName("edit19");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout1);
    obj.layout12:setLeft(0);
    obj.layout12:setTop(280);
    obj.layout12:setWidth(250);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout12);
    obj.edit20:setLeft(5);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(190);
    obj.edit20:setHeight(25);
    obj.edit20:setField("Pericia_Arma_11");
    obj.edit20:setName("edit20");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout12);
    obj.edit21:setLeft(195);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(50);
    obj.edit21:setHeight(25);
    obj.edit21:setField("Pericia_Arma_Pontos_11");
    obj.edit21:setName("edit21");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout1);
    obj.layout13:setLeft(0);
    obj.layout13:setTop(305);
    obj.layout13:setWidth(250);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout13);
    obj.edit22:setLeft(5);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(190);
    obj.edit22:setHeight(25);
    obj.edit22:setField("Pericia_Arma_12");
    obj.edit22:setName("edit22");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout13);
    obj.edit23:setLeft(195);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(50);
    obj.edit23:setHeight(25);
    obj.edit23:setField("Pericia_Arma_Pontos_12");
    obj.edit23:setName("edit23");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout1);
    obj.layout14:setLeft(0);
    obj.layout14:setTop(330);
    obj.layout14:setWidth(250);
    obj.layout14:setHeight(25);
    obj.layout14:setName("layout14");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout14);
    obj.edit24:setLeft(5);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(190);
    obj.edit24:setHeight(25);
    obj.edit24:setField("Pericia_Arma_13");
    obj.edit24:setName("edit24");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout14);
    obj.edit25:setLeft(195);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(50);
    obj.edit25:setHeight(25);
    obj.edit25:setField("Pericia_Arma_Pontos_13");
    obj.edit25:setName("edit25");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout1);
    obj.layout15:setLeft(0);
    obj.layout15:setTop(355);
    obj.layout15:setWidth(250);
    obj.layout15:setHeight(25);
    obj.layout15:setName("layout15");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout15);
    obj.edit26:setLeft(5);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(190);
    obj.edit26:setHeight(25);
    obj.edit26:setField("Pericia_Arma_14");
    obj.edit26:setName("edit26");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout15);
    obj.edit27:setLeft(195);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(50);
    obj.edit27:setHeight(25);
    obj.edit27:setField("Pericia_Arma_Pontos_14");
    obj.edit27:setName("edit27");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout1);
    obj.layout16:setLeft(0);
    obj.layout16:setTop(380);
    obj.layout16:setWidth(250);
    obj.layout16:setHeight(25);
    obj.layout16:setName("layout16");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout16);
    obj.edit28:setLeft(5);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(190);
    obj.edit28:setHeight(25);
    obj.edit28:setField("Pericia_Arma_15");
    obj.edit28:setName("edit28");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout16);
    obj.edit29:setLeft(195);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(50);
    obj.edit29:setHeight(25);
    obj.edit29:setField("Pericia_Arma_Pontos_15");
    obj.edit29:setName("edit29");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout1);
    obj.layout17:setLeft(0);
    obj.layout17:setTop(405);
    obj.layout17:setWidth(250);
    obj.layout17:setHeight(25);
    obj.layout17:setName("layout17");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout17);
    obj.edit30:setLeft(5);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(190);
    obj.edit30:setHeight(25);
    obj.edit30:setField("Pericia_Arma_16");
    obj.edit30:setName("edit30");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout17);
    obj.edit31:setLeft(195);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(50);
    obj.edit31:setHeight(25);
    obj.edit31:setField("Pericia_Arma_Pontos_16");
    obj.edit31:setName("edit31");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout1);
    obj.layout18:setLeft(0);
    obj.layout18:setTop(430);
    obj.layout18:setWidth(250);
    obj.layout18:setHeight(25);
    obj.layout18:setName("layout18");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout18);
    obj.edit32:setLeft(5);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(190);
    obj.edit32:setHeight(25);
    obj.edit32:setField("Pericia_Arma_17");
    obj.edit32:setName("edit32");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout18);
    obj.edit33:setLeft(195);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(50);
    obj.edit33:setHeight(25);
    obj.edit33:setField("Pericia_Arma_Pontos_17");
    obj.edit33:setName("edit33");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout1);
    obj.layout19:setLeft(0);
    obj.layout19:setTop(455);
    obj.layout19:setWidth(250);
    obj.layout19:setHeight(25);
    obj.layout19:setName("layout19");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout19);
    obj.edit34:setLeft(5);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(190);
    obj.edit34:setHeight(25);
    obj.edit34:setField("Pericia_Arma_18");
    obj.edit34:setName("edit34");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout19);
    obj.edit35:setLeft(195);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(50);
    obj.edit35:setHeight(25);
    obj.edit35:setField("Pericia_Arma_Pontos_18");
    obj.edit35:setName("edit35");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layout1);
    obj.layout20:setLeft(0);
    obj.layout20:setTop(480);
    obj.layout20:setWidth(250);
    obj.layout20:setHeight(25);
    obj.layout20:setName("layout20");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout20);
    obj.edit36:setLeft(5);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(190);
    obj.edit36:setHeight(25);
    obj.edit36:setField("Pericia_Arma_19");
    obj.edit36:setName("edit36");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout20);
    obj.edit37:setLeft(195);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(50);
    obj.edit37:setHeight(25);
    obj.edit37:setField("Pericia_Arma_Pontos_19");
    obj.edit37:setName("edit37");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout1);
    obj.layout21:setLeft(0);
    obj.layout21:setTop(505);
    obj.layout21:setWidth(250);
    obj.layout21:setHeight(25);
    obj.layout21:setName("layout21");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout21);
    obj.edit38:setLeft(5);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(190);
    obj.edit38:setHeight(25);
    obj.edit38:setField("Pericia_Arma_20");
    obj.edit38:setName("edit38");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout21);
    obj.edit39:setLeft(195);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(50);
    obj.edit39:setHeight(25);
    obj.edit39:setField("Pericia_Arma_Pontos_20");
    obj.edit39:setName("edit39");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.layout1);
    obj.layout22:setLeft(0);
    obj.layout22:setTop(530);
    obj.layout22:setWidth(250);
    obj.layout22:setHeight(25);
    obj.layout22:setName("layout22");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout22);
    obj.edit40:setLeft(5);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(190);
    obj.edit40:setHeight(25);
    obj.edit40:setField("Pericia_Arma_21");
    obj.edit40:setName("edit40");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout22);
    obj.edit41:setLeft(195);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(50);
    obj.edit41:setHeight(25);
    obj.edit41:setField("Pericia_Arma_Pontos_21");
    obj.edit41:setName("edit41");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout1);
    obj.layout23:setLeft(0);
    obj.layout23:setTop(555);
    obj.layout23:setWidth(250);
    obj.layout23:setHeight(25);
    obj.layout23:setName("layout23");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout23);
    obj.edit42:setLeft(5);
    obj.edit42:setTop(0);
    obj.edit42:setWidth(190);
    obj.edit42:setHeight(25);
    obj.edit42:setField("Pericia_Arma_22");
    obj.edit42:setName("edit42");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout23);
    obj.edit43:setLeft(195);
    obj.edit43:setTop(0);
    obj.edit43:setWidth(50);
    obj.edit43:setHeight(25);
    obj.edit43:setField("Pericia_Arma_Pontos_22");
    obj.edit43:setName("edit43");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout1);
    obj.layout24:setLeft(0);
    obj.layout24:setTop(580);
    obj.layout24:setWidth(250);
    obj.layout24:setHeight(25);
    obj.layout24:setName("layout24");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout24);
    obj.edit44:setLeft(5);
    obj.edit44:setTop(0);
    obj.edit44:setWidth(190);
    obj.edit44:setHeight(25);
    obj.edit44:setField("Pericia_Arma_23");
    obj.edit44:setName("edit44");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout24);
    obj.edit45:setLeft(195);
    obj.edit45:setTop(0);
    obj.edit45:setWidth(50);
    obj.edit45:setHeight(25);
    obj.edit45:setField("Pericia_Arma_Pontos_23");
    obj.edit45:setName("edit45");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.scrollBox1);
    obj.layout25:setLeft(260);
    obj.layout25:setTop(0);
    obj.layout25:setWidth(350);
    obj.layout25:setHeight(610);
    obj.layout25:setName("layout25");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout25);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setXradius(5);
    obj.rectangle2:setYradius(5);
    obj.rectangle2:setCornerType("round");
    obj.rectangle2:setName("rectangle2");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout25);
    obj.label7:setLeft(0);
    obj.label7:setTop(5);
    obj.label7:setWidth(350);
    obj.label7:setHeight(20);
    obj.label7:setText("PERÍCIA GERAL");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setName("label7");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout25);
    obj.layout26:setLeft(0);
    obj.layout26:setTop(30);
    obj.layout26:setWidth(350);
    obj.layout26:setHeight(25);
    obj.layout26:setName("layout26");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout26);
    obj.label8:setLeft(55);
    obj.label8:setTop(5);
    obj.label8:setWidth(40);
    obj.label8:setHeight(20);
    obj.label8:setText("Iniciais");
    obj.label8:setFontSize(11);
    obj.label8:setHorzTextAlign("center");
    obj.label8:setName("label8");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout26);
    obj.edit46:setLeft(95);
    obj.edit46:setTop(0);
    obj.edit46:setWidth(40);
    obj.edit46:setHeight(25);
    obj.edit46:setField("Pericia_Geral_Inicial");
    obj.edit46:setName("edit46");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout26);
    obj.label9:setLeft(135);
    obj.label9:setTop(5);
    obj.label9:setWidth(40);
    obj.label9:setHeight(20);
    obj.label9:setText("Adicionais");
    obj.label9:setFontSize(8);
    obj.label9:setHorzTextAlign("center");
    obj.label9:setName("label9");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout26);
    obj.edit47:setLeft(175);
    obj.edit47:setTop(0);
    obj.edit47:setWidth(40);
    obj.edit47:setHeight(25);
    obj.edit47:setField("Pericia_Geral_Adicional");
    obj.edit47:setName("edit47");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout26);
    obj.label10:setLeft(215);
    obj.label10:setTop(5);
    obj.label10:setWidth(40);
    obj.label10:setHeight(20);
    obj.label10:setText("Penalidade");
    obj.label10:setFontSize(8);
    obj.label10:setHorzTextAlign("center");
    obj.label10:setName("label10");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout26);
    obj.edit48:setLeft(255);
    obj.edit48:setTop(0);
    obj.edit48:setWidth(40);
    obj.edit48:setHeight(25);
    obj.edit48:setField("Pericia_Geral_Penalidade");
    obj.edit48:setName("edit48");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout25);
    obj.layout27:setLeft(0);
    obj.layout27:setTop(55);
    obj.layout27:setWidth(350);
    obj.layout27:setHeight(25);
    obj.layout27:setName("layout27");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout27);
    obj.label11:setLeft(5);
    obj.label11:setTop(0);
    obj.label11:setWidth(190);
    obj.label11:setHeight(25);
    obj.label11:setFontSize(13);
    obj.label11:setHorzTextAlign("center");
    obj.label11:setText("Perícia");
    obj.label11:setName("label11");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout27);
    obj.label12:setLeft(195);
    obj.label12:setTop(0);
    obj.label12:setWidth(50);
    obj.label12:setHeight(25);
    obj.label12:setFontSize(13);
    obj.label12:setHorzTextAlign("center");
    obj.label12:setText("Pontos");
    obj.label12:setName("label12");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout27);
    obj.label13:setLeft(245);
    obj.label13:setTop(0);
    obj.label13:setWidth(50);
    obj.label13:setHeight(25);
    obj.label13:setFontSize(13);
    obj.label13:setHorzTextAlign("center");
    obj.label13:setText("HAB");
    obj.label13:setName("label13");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout27);
    obj.label14:setLeft(295);
    obj.label14:setTop(0);
    obj.label14:setWidth(50);
    obj.label14:setHeight(25);
    obj.label14:setFontSize(13);
    obj.label14:setHorzTextAlign("center");
    obj.label14:setText("MOD");
    obj.label14:setName("label14");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.layout25);
    obj.layout28:setLeft(0);
    obj.layout28:setTop(80);
    obj.layout28:setWidth(350);
    obj.layout28:setHeight(25);
    obj.layout28:setName("layout28");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout28);
    obj.edit49:setLeft(5);
    obj.edit49:setTop(0);
    obj.edit49:setWidth(190);
    obj.edit49:setHeight(25);
    obj.edit49:setField("Pericia_Geral_2");
    obj.edit49:setName("edit49");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout28);
    obj.edit50:setLeft(195);
    obj.edit50:setTop(0);
    obj.edit50:setWidth(50);
    obj.edit50:setHeight(25);
    obj.edit50:setField("Pericia_Geral_Pontos_2");
    obj.edit50:setName("edit50");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout28);
    obj.edit51:setLeft(245);
    obj.edit51:setTop(0);
    obj.edit51:setWidth(50);
    obj.edit51:setHeight(25);
    obj.edit51:setField("Pericia_Geral_HAB2");
    obj.edit51:setName("edit51");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout28);
    obj.edit52:setLeft(295);
    obj.edit52:setTop(0);
    obj.edit52:setWidth(50);
    obj.edit52:setHeight(25);
    obj.edit52:setField("Pericia_Geral_MOD_2");
    obj.edit52:setName("edit52");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.layout25);
    obj.layout29:setLeft(0);
    obj.layout29:setTop(105);
    obj.layout29:setWidth(350);
    obj.layout29:setHeight(25);
    obj.layout29:setName("layout29");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout29);
    obj.edit53:setLeft(5);
    obj.edit53:setTop(0);
    obj.edit53:setWidth(190);
    obj.edit53:setHeight(25);
    obj.edit53:setField("Pericia_Geral_3");
    obj.edit53:setName("edit53");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout29);
    obj.edit54:setLeft(195);
    obj.edit54:setTop(0);
    obj.edit54:setWidth(50);
    obj.edit54:setHeight(25);
    obj.edit54:setField("Pericia_Geral_Pontos_3");
    obj.edit54:setName("edit54");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout29);
    obj.edit55:setLeft(245);
    obj.edit55:setTop(0);
    obj.edit55:setWidth(50);
    obj.edit55:setHeight(25);
    obj.edit55:setField("Pericia_Geral_HAB3");
    obj.edit55:setName("edit55");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout29);
    obj.edit56:setLeft(295);
    obj.edit56:setTop(0);
    obj.edit56:setWidth(50);
    obj.edit56:setHeight(25);
    obj.edit56:setField("Pericia_Geral_MOD_3");
    obj.edit56:setName("edit56");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.layout25);
    obj.layout30:setLeft(0);
    obj.layout30:setTop(130);
    obj.layout30:setWidth(350);
    obj.layout30:setHeight(25);
    obj.layout30:setName("layout30");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout30);
    obj.edit57:setLeft(5);
    obj.edit57:setTop(0);
    obj.edit57:setWidth(190);
    obj.edit57:setHeight(25);
    obj.edit57:setField("Pericia_Geral_4");
    obj.edit57:setName("edit57");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout30);
    obj.edit58:setLeft(195);
    obj.edit58:setTop(0);
    obj.edit58:setWidth(50);
    obj.edit58:setHeight(25);
    obj.edit58:setField("Pericia_Geral_Pontos_4");
    obj.edit58:setName("edit58");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout30);
    obj.edit59:setLeft(245);
    obj.edit59:setTop(0);
    obj.edit59:setWidth(50);
    obj.edit59:setHeight(25);
    obj.edit59:setField("Pericia_Geral_HAB4");
    obj.edit59:setName("edit59");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.layout30);
    obj.edit60:setLeft(295);
    obj.edit60:setTop(0);
    obj.edit60:setWidth(50);
    obj.edit60:setHeight(25);
    obj.edit60:setField("Pericia_Geral_MOD_4");
    obj.edit60:setName("edit60");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.layout25);
    obj.layout31:setLeft(0);
    obj.layout31:setTop(155);
    obj.layout31:setWidth(350);
    obj.layout31:setHeight(25);
    obj.layout31:setName("layout31");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.layout31);
    obj.edit61:setLeft(5);
    obj.edit61:setTop(0);
    obj.edit61:setWidth(190);
    obj.edit61:setHeight(25);
    obj.edit61:setField("Pericia_Geral_5");
    obj.edit61:setName("edit61");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.layout31);
    obj.edit62:setLeft(195);
    obj.edit62:setTop(0);
    obj.edit62:setWidth(50);
    obj.edit62:setHeight(25);
    obj.edit62:setField("Pericia_Geral_Pontos_5");
    obj.edit62:setName("edit62");

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.layout31);
    obj.edit63:setLeft(245);
    obj.edit63:setTop(0);
    obj.edit63:setWidth(50);
    obj.edit63:setHeight(25);
    obj.edit63:setField("Pericia_Geral_HAB5");
    obj.edit63:setName("edit63");

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.layout31);
    obj.edit64:setLeft(295);
    obj.edit64:setTop(0);
    obj.edit64:setWidth(50);
    obj.edit64:setHeight(25);
    obj.edit64:setField("Pericia_Geral_MOD_5");
    obj.edit64:setName("edit64");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.layout25);
    obj.layout32:setLeft(0);
    obj.layout32:setTop(180);
    obj.layout32:setWidth(350);
    obj.layout32:setHeight(25);
    obj.layout32:setName("layout32");

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.layout32);
    obj.edit65:setLeft(5);
    obj.edit65:setTop(0);
    obj.edit65:setWidth(190);
    obj.edit65:setHeight(25);
    obj.edit65:setField("Pericia_Geral_7");
    obj.edit65:setName("edit65");

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.layout32);
    obj.edit66:setLeft(195);
    obj.edit66:setTop(0);
    obj.edit66:setWidth(50);
    obj.edit66:setHeight(25);
    obj.edit66:setField("Pericia_Geral_Pontos_7");
    obj.edit66:setName("edit66");

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.layout32);
    obj.edit67:setLeft(245);
    obj.edit67:setTop(0);
    obj.edit67:setWidth(50);
    obj.edit67:setHeight(25);
    obj.edit67:setField("Pericia_Geral_HAB7");
    obj.edit67:setName("edit67");

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.layout32);
    obj.edit68:setLeft(295);
    obj.edit68:setTop(0);
    obj.edit68:setWidth(50);
    obj.edit68:setHeight(25);
    obj.edit68:setField("Pericia_Geral_MOD_7");
    obj.edit68:setName("edit68");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.layout25);
    obj.layout33:setLeft(0);
    obj.layout33:setTop(205);
    obj.layout33:setWidth(350);
    obj.layout33:setHeight(25);
    obj.layout33:setName("layout33");

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.layout33);
    obj.edit69:setLeft(5);
    obj.edit69:setTop(0);
    obj.edit69:setWidth(190);
    obj.edit69:setHeight(25);
    obj.edit69:setField("Pericia_Geral_8");
    obj.edit69:setName("edit69");

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.layout33);
    obj.edit70:setLeft(195);
    obj.edit70:setTop(0);
    obj.edit70:setWidth(50);
    obj.edit70:setHeight(25);
    obj.edit70:setField("Pericia_Geral_Pontos_8");
    obj.edit70:setName("edit70");

    obj.edit71 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.layout33);
    obj.edit71:setLeft(245);
    obj.edit71:setTop(0);
    obj.edit71:setWidth(50);
    obj.edit71:setHeight(25);
    obj.edit71:setField("Pericia_Geral_HAB8");
    obj.edit71:setName("edit71");

    obj.edit72 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.layout33);
    obj.edit72:setLeft(295);
    obj.edit72:setTop(0);
    obj.edit72:setWidth(50);
    obj.edit72:setHeight(25);
    obj.edit72:setField("Pericia_Geral_MOD_8");
    obj.edit72:setName("edit72");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.layout25);
    obj.layout34:setLeft(0);
    obj.layout34:setTop(230);
    obj.layout34:setWidth(350);
    obj.layout34:setHeight(25);
    obj.layout34:setName("layout34");

    obj.edit73 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.layout34);
    obj.edit73:setLeft(5);
    obj.edit73:setTop(0);
    obj.edit73:setWidth(190);
    obj.edit73:setHeight(25);
    obj.edit73:setField("Pericia_Geral_9");
    obj.edit73:setName("edit73");

    obj.edit74 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.layout34);
    obj.edit74:setLeft(195);
    obj.edit74:setTop(0);
    obj.edit74:setWidth(50);
    obj.edit74:setHeight(25);
    obj.edit74:setField("Pericia_Geral_Pontos_9");
    obj.edit74:setName("edit74");

    obj.edit75 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.layout34);
    obj.edit75:setLeft(245);
    obj.edit75:setTop(0);
    obj.edit75:setWidth(50);
    obj.edit75:setHeight(25);
    obj.edit75:setField("Pericia_Geral_HAB9");
    obj.edit75:setName("edit75");

    obj.edit76 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.layout34);
    obj.edit76:setLeft(295);
    obj.edit76:setTop(0);
    obj.edit76:setWidth(50);
    obj.edit76:setHeight(25);
    obj.edit76:setField("Pericia_Geral_MOD_9");
    obj.edit76:setName("edit76");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.layout25);
    obj.layout35:setLeft(0);
    obj.layout35:setTop(255);
    obj.layout35:setWidth(350);
    obj.layout35:setHeight(25);
    obj.layout35:setName("layout35");

    obj.edit77 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.layout35);
    obj.edit77:setLeft(5);
    obj.edit77:setTop(0);
    obj.edit77:setWidth(190);
    obj.edit77:setHeight(25);
    obj.edit77:setField("Pericia_Geral_10");
    obj.edit77:setName("edit77");

    obj.edit78 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.layout35);
    obj.edit78:setLeft(195);
    obj.edit78:setTop(0);
    obj.edit78:setWidth(50);
    obj.edit78:setHeight(25);
    obj.edit78:setField("Pericia_Geral_Pontos_10");
    obj.edit78:setName("edit78");

    obj.edit79 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.layout35);
    obj.edit79:setLeft(245);
    obj.edit79:setTop(0);
    obj.edit79:setWidth(50);
    obj.edit79:setHeight(25);
    obj.edit79:setField("Pericia_Geral_HAB10");
    obj.edit79:setName("edit79");

    obj.edit80 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.layout35);
    obj.edit80:setLeft(295);
    obj.edit80:setTop(0);
    obj.edit80:setWidth(50);
    obj.edit80:setHeight(25);
    obj.edit80:setField("Pericia_Geral_MOD_10");
    obj.edit80:setName("edit80");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.layout25);
    obj.layout36:setLeft(0);
    obj.layout36:setTop(280);
    obj.layout36:setWidth(350);
    obj.layout36:setHeight(25);
    obj.layout36:setName("layout36");

    obj.edit81 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.layout36);
    obj.edit81:setLeft(5);
    obj.edit81:setTop(0);
    obj.edit81:setWidth(190);
    obj.edit81:setHeight(25);
    obj.edit81:setField("Pericia_Geral_11");
    obj.edit81:setName("edit81");

    obj.edit82 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.layout36);
    obj.edit82:setLeft(195);
    obj.edit82:setTop(0);
    obj.edit82:setWidth(50);
    obj.edit82:setHeight(25);
    obj.edit82:setField("Pericia_Geral_Pontos_11");
    obj.edit82:setName("edit82");

    obj.edit83 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.layout36);
    obj.edit83:setLeft(245);
    obj.edit83:setTop(0);
    obj.edit83:setWidth(50);
    obj.edit83:setHeight(25);
    obj.edit83:setField("Pericia_Geral_HAB11");
    obj.edit83:setName("edit83");

    obj.edit84 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.layout36);
    obj.edit84:setLeft(295);
    obj.edit84:setTop(0);
    obj.edit84:setWidth(50);
    obj.edit84:setHeight(25);
    obj.edit84:setField("Pericia_Geral_MOD_11");
    obj.edit84:setName("edit84");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.layout25);
    obj.layout37:setLeft(0);
    obj.layout37:setTop(305);
    obj.layout37:setWidth(350);
    obj.layout37:setHeight(25);
    obj.layout37:setName("layout37");

    obj.edit85 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.layout37);
    obj.edit85:setLeft(5);
    obj.edit85:setTop(0);
    obj.edit85:setWidth(190);
    obj.edit85:setHeight(25);
    obj.edit85:setField("Pericia_Geral_12");
    obj.edit85:setName("edit85");

    obj.edit86 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.layout37);
    obj.edit86:setLeft(195);
    obj.edit86:setTop(0);
    obj.edit86:setWidth(50);
    obj.edit86:setHeight(25);
    obj.edit86:setField("Pericia_Geral_Pontos_12");
    obj.edit86:setName("edit86");

    obj.edit87 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.layout37);
    obj.edit87:setLeft(245);
    obj.edit87:setTop(0);
    obj.edit87:setWidth(50);
    obj.edit87:setHeight(25);
    obj.edit87:setField("Pericia_Geral_HAB12");
    obj.edit87:setName("edit87");

    obj.edit88 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.layout37);
    obj.edit88:setLeft(295);
    obj.edit88:setTop(0);
    obj.edit88:setWidth(50);
    obj.edit88:setHeight(25);
    obj.edit88:setField("Pericia_Geral_MOD_12");
    obj.edit88:setName("edit88");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.layout25);
    obj.layout38:setLeft(0);
    obj.layout38:setTop(330);
    obj.layout38:setWidth(350);
    obj.layout38:setHeight(25);
    obj.layout38:setName("layout38");

    obj.edit89 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.layout38);
    obj.edit89:setLeft(5);
    obj.edit89:setTop(0);
    obj.edit89:setWidth(190);
    obj.edit89:setHeight(25);
    obj.edit89:setField("Pericia_Geral_13");
    obj.edit89:setName("edit89");

    obj.edit90 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.layout38);
    obj.edit90:setLeft(195);
    obj.edit90:setTop(0);
    obj.edit90:setWidth(50);
    obj.edit90:setHeight(25);
    obj.edit90:setField("Pericia_Geral_Pontos_13");
    obj.edit90:setName("edit90");

    obj.edit91 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.layout38);
    obj.edit91:setLeft(245);
    obj.edit91:setTop(0);
    obj.edit91:setWidth(50);
    obj.edit91:setHeight(25);
    obj.edit91:setField("Pericia_Geral_HAB13");
    obj.edit91:setName("edit91");

    obj.edit92 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.layout38);
    obj.edit92:setLeft(295);
    obj.edit92:setTop(0);
    obj.edit92:setWidth(50);
    obj.edit92:setHeight(25);
    obj.edit92:setField("Pericia_Geral_MOD_13");
    obj.edit92:setName("edit92");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.layout25);
    obj.layout39:setLeft(0);
    obj.layout39:setTop(355);
    obj.layout39:setWidth(350);
    obj.layout39:setHeight(25);
    obj.layout39:setName("layout39");

    obj.edit93 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.layout39);
    obj.edit93:setLeft(5);
    obj.edit93:setTop(0);
    obj.edit93:setWidth(190);
    obj.edit93:setHeight(25);
    obj.edit93:setField("Pericia_Geral_14");
    obj.edit93:setName("edit93");

    obj.edit94 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.layout39);
    obj.edit94:setLeft(195);
    obj.edit94:setTop(0);
    obj.edit94:setWidth(50);
    obj.edit94:setHeight(25);
    obj.edit94:setField("Pericia_Geral_Pontos_14");
    obj.edit94:setName("edit94");

    obj.edit95 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.layout39);
    obj.edit95:setLeft(245);
    obj.edit95:setTop(0);
    obj.edit95:setWidth(50);
    obj.edit95:setHeight(25);
    obj.edit95:setField("Pericia_Geral_HAB14");
    obj.edit95:setName("edit95");

    obj.edit96 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.layout39);
    obj.edit96:setLeft(295);
    obj.edit96:setTop(0);
    obj.edit96:setWidth(50);
    obj.edit96:setHeight(25);
    obj.edit96:setField("Pericia_Geral_MOD_14");
    obj.edit96:setName("edit96");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.layout25);
    obj.layout40:setLeft(0);
    obj.layout40:setTop(380);
    obj.layout40:setWidth(350);
    obj.layout40:setHeight(25);
    obj.layout40:setName("layout40");

    obj.edit97 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.layout40);
    obj.edit97:setLeft(5);
    obj.edit97:setTop(0);
    obj.edit97:setWidth(190);
    obj.edit97:setHeight(25);
    obj.edit97:setField("Pericia_Geral_15");
    obj.edit97:setName("edit97");

    obj.edit98 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.layout40);
    obj.edit98:setLeft(195);
    obj.edit98:setTop(0);
    obj.edit98:setWidth(50);
    obj.edit98:setHeight(25);
    obj.edit98:setField("Pericia_Geral_Pontos_15");
    obj.edit98:setName("edit98");

    obj.edit99 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.layout40);
    obj.edit99:setLeft(245);
    obj.edit99:setTop(0);
    obj.edit99:setWidth(50);
    obj.edit99:setHeight(25);
    obj.edit99:setField("Pericia_Geral_HAB15");
    obj.edit99:setName("edit99");

    obj.edit100 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.layout40);
    obj.edit100:setLeft(295);
    obj.edit100:setTop(0);
    obj.edit100:setWidth(50);
    obj.edit100:setHeight(25);
    obj.edit100:setField("Pericia_Geral_MOD_15");
    obj.edit100:setName("edit100");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.layout25);
    obj.layout41:setLeft(0);
    obj.layout41:setTop(405);
    obj.layout41:setWidth(350);
    obj.layout41:setHeight(25);
    obj.layout41:setName("layout41");

    obj.edit101 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.layout41);
    obj.edit101:setLeft(5);
    obj.edit101:setTop(0);
    obj.edit101:setWidth(190);
    obj.edit101:setHeight(25);
    obj.edit101:setField("Pericia_Geral_16");
    obj.edit101:setName("edit101");

    obj.edit102 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.layout41);
    obj.edit102:setLeft(195);
    obj.edit102:setTop(0);
    obj.edit102:setWidth(50);
    obj.edit102:setHeight(25);
    obj.edit102:setField("Pericia_Geral_Pontos_16");
    obj.edit102:setName("edit102");

    obj.edit103 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.layout41);
    obj.edit103:setLeft(245);
    obj.edit103:setTop(0);
    obj.edit103:setWidth(50);
    obj.edit103:setHeight(25);
    obj.edit103:setField("Pericia_Geral_HAB16");
    obj.edit103:setName("edit103");

    obj.edit104 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.layout41);
    obj.edit104:setLeft(295);
    obj.edit104:setTop(0);
    obj.edit104:setWidth(50);
    obj.edit104:setHeight(25);
    obj.edit104:setField("Pericia_Geral_MOD_16");
    obj.edit104:setName("edit104");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.layout25);
    obj.layout42:setLeft(0);
    obj.layout42:setTop(430);
    obj.layout42:setWidth(350);
    obj.layout42:setHeight(25);
    obj.layout42:setName("layout42");

    obj.edit105 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit105:setParent(obj.layout42);
    obj.edit105:setLeft(5);
    obj.edit105:setTop(0);
    obj.edit105:setWidth(190);
    obj.edit105:setHeight(25);
    obj.edit105:setField("Pericia_Geral_17");
    obj.edit105:setName("edit105");

    obj.edit106 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit106:setParent(obj.layout42);
    obj.edit106:setLeft(195);
    obj.edit106:setTop(0);
    obj.edit106:setWidth(50);
    obj.edit106:setHeight(25);
    obj.edit106:setField("Pericia_Geral_Pontos_17");
    obj.edit106:setName("edit106");

    obj.edit107 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit107:setParent(obj.layout42);
    obj.edit107:setLeft(245);
    obj.edit107:setTop(0);
    obj.edit107:setWidth(50);
    obj.edit107:setHeight(25);
    obj.edit107:setField("Pericia_Geral_HAB17");
    obj.edit107:setName("edit107");

    obj.edit108 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit108:setParent(obj.layout42);
    obj.edit108:setLeft(295);
    obj.edit108:setTop(0);
    obj.edit108:setWidth(50);
    obj.edit108:setHeight(25);
    obj.edit108:setField("Pericia_Geral_MOD_17");
    obj.edit108:setName("edit108");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.layout25);
    obj.layout43:setLeft(0);
    obj.layout43:setTop(455);
    obj.layout43:setWidth(350);
    obj.layout43:setHeight(25);
    obj.layout43:setName("layout43");

    obj.edit109 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit109:setParent(obj.layout43);
    obj.edit109:setLeft(5);
    obj.edit109:setTop(0);
    obj.edit109:setWidth(190);
    obj.edit109:setHeight(25);
    obj.edit109:setField("Pericia_Geral_18");
    obj.edit109:setName("edit109");

    obj.edit110 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit110:setParent(obj.layout43);
    obj.edit110:setLeft(195);
    obj.edit110:setTop(0);
    obj.edit110:setWidth(50);
    obj.edit110:setHeight(25);
    obj.edit110:setField("Pericia_Geral_Pontos_18");
    obj.edit110:setName("edit110");

    obj.edit111 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit111:setParent(obj.layout43);
    obj.edit111:setLeft(245);
    obj.edit111:setTop(0);
    obj.edit111:setWidth(50);
    obj.edit111:setHeight(25);
    obj.edit111:setField("Pericia_Geral_HAB18");
    obj.edit111:setName("edit111");

    obj.edit112 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit112:setParent(obj.layout43);
    obj.edit112:setLeft(295);
    obj.edit112:setTop(0);
    obj.edit112:setWidth(50);
    obj.edit112:setHeight(25);
    obj.edit112:setField("Pericia_Geral_MOD_18");
    obj.edit112:setName("edit112");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.layout25);
    obj.layout44:setLeft(0);
    obj.layout44:setTop(480);
    obj.layout44:setWidth(350);
    obj.layout44:setHeight(25);
    obj.layout44:setName("layout44");

    obj.edit113 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit113:setParent(obj.layout44);
    obj.edit113:setLeft(5);
    obj.edit113:setTop(0);
    obj.edit113:setWidth(190);
    obj.edit113:setHeight(25);
    obj.edit113:setField("Pericia_Geral_19");
    obj.edit113:setName("edit113");

    obj.edit114 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit114:setParent(obj.layout44);
    obj.edit114:setLeft(195);
    obj.edit114:setTop(0);
    obj.edit114:setWidth(50);
    obj.edit114:setHeight(25);
    obj.edit114:setField("Pericia_Geral_Pontos_19");
    obj.edit114:setName("edit114");

    obj.edit115 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit115:setParent(obj.layout44);
    obj.edit115:setLeft(245);
    obj.edit115:setTop(0);
    obj.edit115:setWidth(50);
    obj.edit115:setHeight(25);
    obj.edit115:setField("Pericia_Geral_HAB19");
    obj.edit115:setName("edit115");

    obj.edit116 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit116:setParent(obj.layout44);
    obj.edit116:setLeft(295);
    obj.edit116:setTop(0);
    obj.edit116:setWidth(50);
    obj.edit116:setHeight(25);
    obj.edit116:setField("Pericia_Geral_MOD_19");
    obj.edit116:setName("edit116");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.layout25);
    obj.layout45:setLeft(0);
    obj.layout45:setTop(505);
    obj.layout45:setWidth(350);
    obj.layout45:setHeight(25);
    obj.layout45:setName("layout45");

    obj.edit117 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit117:setParent(obj.layout45);
    obj.edit117:setLeft(5);
    obj.edit117:setTop(0);
    obj.edit117:setWidth(190);
    obj.edit117:setHeight(25);
    obj.edit117:setField("Pericia_Geral_20");
    obj.edit117:setName("edit117");

    obj.edit118 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit118:setParent(obj.layout45);
    obj.edit118:setLeft(195);
    obj.edit118:setTop(0);
    obj.edit118:setWidth(50);
    obj.edit118:setHeight(25);
    obj.edit118:setField("Pericia_Geral_Pontos_20");
    obj.edit118:setName("edit118");

    obj.edit119 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit119:setParent(obj.layout45);
    obj.edit119:setLeft(245);
    obj.edit119:setTop(0);
    obj.edit119:setWidth(50);
    obj.edit119:setHeight(25);
    obj.edit119:setField("Pericia_Geral_HAB20");
    obj.edit119:setName("edit119");

    obj.edit120 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit120:setParent(obj.layout45);
    obj.edit120:setLeft(295);
    obj.edit120:setTop(0);
    obj.edit120:setWidth(50);
    obj.edit120:setHeight(25);
    obj.edit120:setField("Pericia_Geral_MOD_20");
    obj.edit120:setName("edit120");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.layout25);
    obj.layout46:setLeft(0);
    obj.layout46:setTop(530);
    obj.layout46:setWidth(350);
    obj.layout46:setHeight(25);
    obj.layout46:setName("layout46");

    obj.edit121 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit121:setParent(obj.layout46);
    obj.edit121:setLeft(5);
    obj.edit121:setTop(0);
    obj.edit121:setWidth(190);
    obj.edit121:setHeight(25);
    obj.edit121:setField("Pericia_Geral_21");
    obj.edit121:setName("edit121");

    obj.edit122 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit122:setParent(obj.layout46);
    obj.edit122:setLeft(195);
    obj.edit122:setTop(0);
    obj.edit122:setWidth(50);
    obj.edit122:setHeight(25);
    obj.edit122:setField("Pericia_Geral_Pontos_21");
    obj.edit122:setName("edit122");

    obj.edit123 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit123:setParent(obj.layout46);
    obj.edit123:setLeft(245);
    obj.edit123:setTop(0);
    obj.edit123:setWidth(50);
    obj.edit123:setHeight(25);
    obj.edit123:setField("Pericia_Geral_HAB21");
    obj.edit123:setName("edit123");

    obj.edit124 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit124:setParent(obj.layout46);
    obj.edit124:setLeft(295);
    obj.edit124:setTop(0);
    obj.edit124:setWidth(50);
    obj.edit124:setHeight(25);
    obj.edit124:setField("Pericia_Geral_MOD_21");
    obj.edit124:setName("edit124");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.layout25);
    obj.layout47:setLeft(0);
    obj.layout47:setTop(555);
    obj.layout47:setWidth(350);
    obj.layout47:setHeight(25);
    obj.layout47:setName("layout47");

    obj.edit125 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit125:setParent(obj.layout47);
    obj.edit125:setLeft(5);
    obj.edit125:setTop(0);
    obj.edit125:setWidth(190);
    obj.edit125:setHeight(25);
    obj.edit125:setField("Pericia_Geral_22");
    obj.edit125:setName("edit125");

    obj.edit126 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit126:setParent(obj.layout47);
    obj.edit126:setLeft(195);
    obj.edit126:setTop(0);
    obj.edit126:setWidth(50);
    obj.edit126:setHeight(25);
    obj.edit126:setField("Pericia_Geral_Pontos_22");
    obj.edit126:setName("edit126");

    obj.edit127 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit127:setParent(obj.layout47);
    obj.edit127:setLeft(245);
    obj.edit127:setTop(0);
    obj.edit127:setWidth(50);
    obj.edit127:setHeight(25);
    obj.edit127:setField("Pericia_Geral_HAB22");
    obj.edit127:setName("edit127");

    obj.edit128 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit128:setParent(obj.layout47);
    obj.edit128:setLeft(295);
    obj.edit128:setTop(0);
    obj.edit128:setWidth(50);
    obj.edit128:setHeight(25);
    obj.edit128:setField("Pericia_Geral_MOD_22");
    obj.edit128:setName("edit128");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.layout25);
    obj.layout48:setLeft(0);
    obj.layout48:setTop(580);
    obj.layout48:setWidth(350);
    obj.layout48:setHeight(25);
    obj.layout48:setName("layout48");

    obj.edit129 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit129:setParent(obj.layout48);
    obj.edit129:setLeft(5);
    obj.edit129:setTop(0);
    obj.edit129:setWidth(190);
    obj.edit129:setHeight(25);
    obj.edit129:setField("Pericia_Geral_23");
    obj.edit129:setName("edit129");

    obj.edit130 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit130:setParent(obj.layout48);
    obj.edit130:setLeft(195);
    obj.edit130:setTop(0);
    obj.edit130:setWidth(50);
    obj.edit130:setHeight(25);
    obj.edit130:setField("Pericia_Geral_Pontos_23");
    obj.edit130:setName("edit130");

    obj.edit131 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit131:setParent(obj.layout48);
    obj.edit131:setLeft(245);
    obj.edit131:setTop(0);
    obj.edit131:setWidth(50);
    obj.edit131:setHeight(25);
    obj.edit131:setField("Pericia_Geral_HAB23");
    obj.edit131:setName("edit131");

    obj.edit132 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit132:setParent(obj.layout48);
    obj.edit132:setLeft(295);
    obj.edit132:setTop(0);
    obj.edit132:setWidth(50);
    obj.edit132:setHeight(25);
    obj.edit132:setField("Pericia_Geral_MOD_23");
    obj.edit132:setName("edit132");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.scrollBox1);
    obj.layout49:setLeft(620);
    obj.layout49:setTop(0);
    obj.layout49:setWidth(150);
    obj.layout49:setHeight(255);
    obj.layout49:setName("layout49");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout49);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("black");
    obj.rectangle3:setXradius(5);
    obj.rectangle3:setYradius(5);
    obj.rectangle3:setCornerType("round");
    obj.rectangle3:setName("rectangle3");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout49);
    obj.label15:setLeft(0);
    obj.label15:setTop(5);
    obj.label15:setWidth(150);
    obj.label15:setHeight(20);
    obj.label15:setText("TALENTOS LADINOS");
    obj.label15:setHorzTextAlign("center");
    obj.label15:setName("label15");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout49);
    obj.label16:setLeft(5);
    obj.label16:setTop(25);
    obj.label16:setWidth(100);
    obj.label16:setHeight(20);
    obj.label16:setFontSize(13);
    obj.label16:setHorzTextAlign("center");
    obj.label16:setText("Furtar Bolsos");
    obj.label16:setName("label16");

    obj.edit133 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit133:setParent(obj.layout49);
    obj.edit133:setLeft(105);
    obj.edit133:setTop(25);
    obj.edit133:setWidth(40);
    obj.edit133:setHeight(25);
    obj.edit133:setField("Talento_Furto");
    obj.edit133:setName("edit133");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout49);
    obj.label17:setLeft(5);
    obj.label17:setTop(50);
    obj.label17:setWidth(100);
    obj.label17:setHeight(20);
    obj.label17:setFontSize(13);
    obj.label17:setHorzTextAlign("center");
    obj.label17:setText("Abrir Fechaduras");
    obj.label17:setName("label17");

    obj.edit134 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit134:setParent(obj.layout49);
    obj.edit134:setLeft(105);
    obj.edit134:setTop(50);
    obj.edit134:setWidth(40);
    obj.edit134:setHeight(25);
    obj.edit134:setField("Talento_Abrir_Fechaduras");
    obj.edit134:setName("edit134");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout49);
    obj.label18:setLeft(5);
    obj.label18:setTop(75);
    obj.label18:setWidth(100);
    obj.label18:setHeight(20);
    obj.label18:setFontSize(8);
    obj.label18:setHorzTextAlign("center");
    obj.label18:setText("Achar/Desarmar Armadilhas");
    obj.label18:setName("label18");

    obj.edit135 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit135:setParent(obj.layout49);
    obj.edit135:setLeft(105);
    obj.edit135:setTop(75);
    obj.edit135:setWidth(40);
    obj.edit135:setHeight(25);
    obj.edit135:setField("Talento_Armadilhas");
    obj.edit135:setName("edit135");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout49);
    obj.label19:setLeft(5);
    obj.label19:setTop(100);
    obj.label19:setWidth(100);
    obj.label19:setHeight(20);
    obj.label19:setFontSize(10);
    obj.label19:setHorzTextAlign("center");
    obj.label19:setText("Mover-se em Silêncio");
    obj.label19:setName("label19");

    obj.edit136 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit136:setParent(obj.layout49);
    obj.edit136:setLeft(105);
    obj.edit136:setTop(100);
    obj.edit136:setWidth(40);
    obj.edit136:setHeight(25);
    obj.edit136:setField("Talento_Furtividade");
    obj.edit136:setName("edit136");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout49);
    obj.label20:setLeft(5);
    obj.label20:setTop(125);
    obj.label20:setWidth(100);
    obj.label20:setHeight(20);
    obj.label20:setFontSize(10);
    obj.label20:setHorzTextAlign("center");
    obj.label20:setText("Esconder-se nas Sombras");
    obj.label20:setName("label20");

    obj.edit137 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit137:setParent(obj.layout49);
    obj.edit137:setLeft(105);
    obj.edit137:setTop(125);
    obj.edit137:setWidth(40);
    obj.edit137:setHeight(25);
    obj.edit137:setField("Talento_Esconder");
    obj.edit137:setName("edit137");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout49);
    obj.label21:setLeft(5);
    obj.label21:setTop(150);
    obj.label21:setWidth(100);
    obj.label21:setHeight(20);
    obj.label21:setFontSize(13);
    obj.label21:setHorzTextAlign("center");
    obj.label21:setText("Ouvir Ruídos");
    obj.label21:setName("label21");

    obj.edit138 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit138:setParent(obj.layout49);
    obj.edit138:setLeft(105);
    obj.edit138:setTop(150);
    obj.edit138:setWidth(40);
    obj.edit138:setHeight(25);
    obj.edit138:setField("Talento_Ouvir");
    obj.edit138:setName("edit138");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout49);
    obj.label22:setLeft(5);
    obj.label22:setTop(175);
    obj.label22:setWidth(100);
    obj.label22:setHeight(20);
    obj.label22:setFontSize(13);
    obj.label22:setHorzTextAlign("center");
    obj.label22:setText("Escalar Muros");
    obj.label22:setName("label22");

    obj.edit139 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit139:setParent(obj.layout49);
    obj.edit139:setLeft(105);
    obj.edit139:setTop(175);
    obj.edit139:setWidth(40);
    obj.edit139:setHeight(25);
    obj.edit139:setField("Talento_Escalar");
    obj.edit139:setName("edit139");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout49);
    obj.label23:setLeft(5);
    obj.label23:setTop(200);
    obj.label23:setWidth(100);
    obj.label23:setHeight(20);
    obj.label23:setFontSize(11);
    obj.label23:setHorzTextAlign("center");
    obj.label23:setText("Decifrar Linguagens");
    obj.label23:setName("label23");

    obj.edit140 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit140:setParent(obj.layout49);
    obj.edit140:setLeft(105);
    obj.edit140:setTop(200);
    obj.edit140:setWidth(40);
    obj.edit140:setHeight(25);
    obj.edit140:setField("Talento_Decifrar");
    obj.edit140:setName("edit140");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout49);
    obj.label24:setLeft(5);
    obj.label24:setTop(225);
    obj.label24:setWidth(100);
    obj.label24:setHeight(20);
    obj.label24:setFontSize(11);
    obj.label24:setHorzTextAlign("center");
    obj.label24:setText("Ataque pelas Costas");
    obj.label24:setName("label24");

    obj.edit141 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit141:setParent(obj.layout49);
    obj.edit141:setLeft(105);
    obj.edit141:setTop(225);
    obj.edit141:setWidth(40);
    obj.edit141:setHeight(25);
    obj.edit141:setField("Talento_Ataque_Furtivo");
    obj.edit141:setName("edit141");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.scrollBox1);
    obj.layout50:setLeft(620);
    obj.layout50:setTop(259);
    obj.layout50:setWidth(150);
    obj.layout50:setHeight(355);
    obj.layout50:setName("layout50");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout50);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("black");
    obj.rectangle4:setXradius(5);
    obj.rectangle4:setYradius(5);
    obj.rectangle4:setCornerType("round");
    obj.rectangle4:setName("rectangle4");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout50);
    obj.label25:setLeft(0);
    obj.label25:setTop(5);
    obj.label25:setWidth(150);
    obj.label25:setHeight(20);
    obj.label25:setText("PODER DA FÉ");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setName("label25");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout50);
    obj.label26:setLeft(5);
    obj.label26:setTop(25);
    obj.label26:setWidth(100);
    obj.label26:setHeight(20);
    obj.label26:setFontSize(13);
    obj.label26:setHorzTextAlign("center");
    obj.label26:setText("Esqueleto (1DV)");
    obj.label26:setName("label26");

    obj.edit142 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit142:setParent(obj.layout50);
    obj.edit142:setLeft(105);
    obj.edit142:setTop(25);
    obj.edit142:setWidth(40);
    obj.edit142:setHeight(25);
    obj.edit142:setField("Fe1");
    obj.edit142:setName("edit142");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout50);
    obj.label27:setLeft(5);
    obj.label27:setTop(50);
    obj.label27:setWidth(100);
    obj.label27:setHeight(20);
    obj.label27:setFontSize(13);
    obj.label27:setHorzTextAlign("center");
    obj.label27:setText("Zumbi");
    obj.label27:setName("label27");

    obj.edit143 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit143:setParent(obj.layout50);
    obj.edit143:setLeft(105);
    obj.edit143:setTop(50);
    obj.edit143:setWidth(40);
    obj.edit143:setHeight(25);
    obj.edit143:setField("Fe2");
    obj.edit143:setName("edit143");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout50);
    obj.label28:setLeft(5);
    obj.label28:setTop(75);
    obj.label28:setWidth(100);
    obj.label28:setHeight(20);
    obj.label28:setFontSize(13);
    obj.label28:setHorzTextAlign("center");
    obj.label28:setText("Carniçal (2DV)");
    obj.label28:setName("label28");

    obj.edit144 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit144:setParent(obj.layout50);
    obj.edit144:setLeft(105);
    obj.edit144:setTop(75);
    obj.edit144:setWidth(40);
    obj.edit144:setHeight(25);
    obj.edit144:setField("Fe3");
    obj.edit144:setName("edit144");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout50);
    obj.label29:setLeft(5);
    obj.label29:setTop(100);
    obj.label29:setWidth(100);
    obj.label29:setHeight(20);
    obj.label29:setFontSize(13);
    obj.label29:setHorzTextAlign("center");
    obj.label29:setText("Sombra (3-4DV)");
    obj.label29:setName("label29");

    obj.edit145 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit145:setParent(obj.layout50);
    obj.edit145:setLeft(105);
    obj.edit145:setTop(100);
    obj.edit145:setWidth(40);
    obj.edit145:setHeight(25);
    obj.edit145:setField("Fe4");
    obj.edit145:setName("edit145");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout50);
    obj.label30:setLeft(5);
    obj.label30:setTop(125);
    obj.label30:setWidth(100);
    obj.label30:setHeight(20);
    obj.label30:setFontSize(13);
    obj.label30:setHorzTextAlign("center");
    obj.label30:setText("Vulto (5DV)");
    obj.label30:setName("label30");

    obj.edit146 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit146:setParent(obj.layout50);
    obj.edit146:setLeft(105);
    obj.edit146:setTop(125);
    obj.edit146:setWidth(40);
    obj.edit146:setHeight(25);
    obj.edit146:setField("Fe5");
    obj.edit146:setName("edit146");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout50);
    obj.label31:setLeft(5);
    obj.label31:setTop(150);
    obj.label31:setWidth(100);
    obj.label31:setHeight(20);
    obj.label31:setFontSize(13);
    obj.label31:setHorzTextAlign("center");
    obj.label31:setText("Carniçal");
    obj.label31:setName("label31");

    obj.edit147 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit147:setParent(obj.layout50);
    obj.edit147:setLeft(105);
    obj.edit147:setTop(150);
    obj.edit147:setWidth(40);
    obj.edit147:setHeight(25);
    obj.edit147:setField("Fe6");
    obj.edit147:setName("edit147");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout50);
    obj.label32:setLeft(5);
    obj.label32:setTop(175);
    obj.label32:setWidth(100);
    obj.label32:setHeight(20);
    obj.label32:setFontSize(13);
    obj.label32:setHorzTextAlign("center");
    obj.label32:setText("Aparição (6DV)");
    obj.label32:setName("label32");

    obj.edit148 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit148:setParent(obj.layout50);
    obj.edit148:setLeft(105);
    obj.edit148:setTop(175);
    obj.edit148:setWidth(40);
    obj.edit148:setHeight(25);
    obj.edit148:setField("Fe7");
    obj.edit148:setName("edit148");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout50);
    obj.label33:setLeft(5);
    obj.label33:setTop(200);
    obj.label33:setWidth(100);
    obj.label33:setHeight(20);
    obj.label33:setFontSize(13);
    obj.label33:setHorzTextAlign("center");
    obj.label33:setText("Múmia (7DV)");
    obj.label33:setName("label33");

    obj.edit149 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit149:setParent(obj.layout50);
    obj.edit149:setLeft(105);
    obj.edit149:setTop(200);
    obj.edit149:setWidth(40);
    obj.edit149:setHeight(25);
    obj.edit149:setField("Fe8");
    obj.edit149:setName("edit149");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout50);
    obj.label34:setLeft(5);
    obj.label34:setTop(225);
    obj.label34:setWidth(100);
    obj.label34:setHeight(20);
    obj.label34:setFontSize(13);
    obj.label34:setHorzTextAlign("center");
    obj.label34:setText("Espectro (8DV)");
    obj.label34:setName("label34");

    obj.edit150 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit150:setParent(obj.layout50);
    obj.edit150:setLeft(105);
    obj.edit150:setTop(225);
    obj.edit150:setWidth(40);
    obj.edit150:setHeight(25);
    obj.edit150:setField("Fe9");
    obj.edit150:setName("edit150");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout50);
    obj.label35:setLeft(5);
    obj.label35:setTop(250);
    obj.label35:setWidth(100);
    obj.label35:setHeight(20);
    obj.label35:setFontSize(13);
    obj.label35:setHorzTextAlign("center");
    obj.label35:setText("Vampiro (9DV)");
    obj.label35:setName("label35");

    obj.edit151 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit151:setParent(obj.layout50);
    obj.edit151:setLeft(105);
    obj.edit151:setTop(250);
    obj.edit151:setWidth(40);
    obj.edit151:setHeight(25);
    obj.edit151:setField("Fe10");
    obj.edit151:setName("edit151");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout50);
    obj.label36:setLeft(5);
    obj.label36:setTop(275);
    obj.label36:setWidth(100);
    obj.label36:setHeight(20);
    obj.label36:setFontSize(13);
    obj.label36:setHorzTextAlign("center");
    obj.label36:setText("Fantasma (10DV)");
    obj.label36:setName("label36");

    obj.edit152 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit152:setParent(obj.layout50);
    obj.edit152:setLeft(105);
    obj.edit152:setTop(275);
    obj.edit152:setWidth(40);
    obj.edit152:setHeight(25);
    obj.edit152:setField("Fe11");
    obj.edit152:setName("edit152");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout50);
    obj.label37:setLeft(5);
    obj.label37:setTop(300);
    obj.label37:setWidth(100);
    obj.label37:setHeight(20);
    obj.label37:setFontSize(13);
    obj.label37:setHorzTextAlign("center");
    obj.label37:setText("Lich (11DV+)");
    obj.label37:setName("label37");

    obj.edit153 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit153:setParent(obj.layout50);
    obj.edit153:setLeft(105);
    obj.edit153:setTop(300);
    obj.edit153:setWidth(40);
    obj.edit153:setHeight(25);
    obj.edit153:setField("Fe12");
    obj.edit153:setName("edit153");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout50);
    obj.label38:setLeft(5);
    obj.label38:setTop(325);
    obj.label38:setWidth(100);
    obj.label38:setHeight(20);
    obj.label38:setFontSize(13);
    obj.label38:setHorzTextAlign("center");
    obj.label38:setText("Especial");
    obj.label38:setName("label38");

    obj.edit154 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit154:setParent(obj.layout50);
    obj.edit154:setLeft(105);
    obj.edit154:setTop(325);
    obj.edit154:setWidth(40);
    obj.edit154:setHeight(25);
    obj.edit154:setField("Fe13");
    obj.edit154:setName("edit154");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.scrollBox1);
    obj.layout51:setLeft(780);
    obj.layout51:setTop(0);
    obj.layout51:setWidth(265);
    obj.layout51:setHeight(300);
    obj.layout51:setName("layout51");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout51);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("black");
    obj.rectangle5:setXradius(5);
    obj.rectangle5:setYradius(5);
    obj.rectangle5:setCornerType("round");
    obj.rectangle5:setName("rectangle5");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout51);
    obj.label39:setLeft(0);
    obj.label39:setTop(0);
    obj.label39:setWidth(265);
    obj.label39:setHeight(20);
    obj.label39:setText("Habilidades Especificas");
    obj.label39:setHorzTextAlign("center");
    obj.label39:setName("label39");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout51);
    obj.textEditor1:setLeft(5);
    obj.textEditor1:setTop(25);
    obj.textEditor1:setWidth(255);
    obj.textEditor1:setHeight(265);
    obj.textEditor1:setField("HE1");
    obj.textEditor1:setName("textEditor1");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.scrollBox1);
    obj.layout52:setLeft(780);
    obj.layout52:setTop(310);
    obj.layout52:setWidth(265);
    obj.layout52:setHeight(300);
    obj.layout52:setName("layout52");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout52);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("black");
    obj.rectangle6:setXradius(5);
    obj.rectangle6:setYradius(5);
    obj.rectangle6:setCornerType("round");
    obj.rectangle6:setName("rectangle6");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout52);
    obj.label40:setLeft(0);
    obj.label40:setTop(0);
    obj.label40:setWidth(265);
    obj.label40:setHeight(20);
    obj.label40:setText("Habilidades Especificas");
    obj.label40:setHorzTextAlign("center");
    obj.label40:setName("label40");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout52);
    obj.textEditor2:setLeft(5);
    obj.textEditor2:setTop(25);
    obj.textEditor2:setWidth(255);
    obj.textEditor2:setHeight(265);
    obj.textEditor2:setField("HE3");
    obj.textEditor2:setName("textEditor2");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.scrollBox1);
    obj.layout53:setLeft(1055);
    obj.layout53:setTop(0);
    obj.layout53:setWidth(265);
    obj.layout53:setHeight(300);
    obj.layout53:setName("layout53");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout53);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("black");
    obj.rectangle7:setXradius(5);
    obj.rectangle7:setYradius(5);
    obj.rectangle7:setCornerType("round");
    obj.rectangle7:setName("rectangle7");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout53);
    obj.label41:setLeft(0);
    obj.label41:setTop(0);
    obj.label41:setWidth(265);
    obj.label41:setHeight(20);
    obj.label41:setText("Habilidades Especificas");
    obj.label41:setHorzTextAlign("center");
    obj.label41:setName("label41");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout53);
    obj.textEditor3:setLeft(5);
    obj.textEditor3:setTop(25);
    obj.textEditor3:setWidth(255);
    obj.textEditor3:setHeight(265);
    obj.textEditor3:setField("HE2");
    obj.textEditor3:setName("textEditor3");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.scrollBox1);
    obj.layout54:setLeft(1055);
    obj.layout54:setTop(310);
    obj.layout54:setWidth(265);
    obj.layout54:setHeight(300);
    obj.layout54:setName("layout54");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout54);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("black");
    obj.rectangle8:setXradius(5);
    obj.rectangle8:setYradius(5);
    obj.rectangle8:setCornerType("round");
    obj.rectangle8:setName("rectangle8");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout54);
    obj.label42:setLeft(0);
    obj.label42:setTop(0);
    obj.label42:setWidth(265);
    obj.label42:setHeight(20);
    obj.label42:setText("Habilidades Especificas");
    obj.label42:setHorzTextAlign("center");
    obj.label42:setName("label42");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout54);
    obj.textEditor4:setLeft(5);
    obj.textEditor4:setTop(25);
    obj.textEditor4:setWidth(255);
    obj.textEditor4:setHeight(265);
    obj.textEditor4:setField("HE4");
    obj.textEditor4:setName("textEditor4");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setAlign("client");
    obj.image1:setSRC("https://dl.dropboxusercontent.com/u/31086811/Plugins/Ficha%20ADnD%20releases/imagens/block.png");
    obj.image1:setStyle("autoFit");
    obj.image1:setName("image1");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit150 ~= nil then self.edit150:destroy(); self.edit150 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit111 ~= nil then self.edit111:destroy(); self.edit111 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.edit153 ~= nil then self.edit153:destroy(); self.edit153 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.edit131 ~= nil then self.edit131:destroy(); self.edit131 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.edit149 ~= nil then self.edit149:destroy(); self.edit149 = nil; end;
        if self.edit120 ~= nil then self.edit120:destroy(); self.edit120 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit112 ~= nil then self.edit112:destroy(); self.edit112 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit114 ~= nil then self.edit114:destroy(); self.edit114 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit106 ~= nil then self.edit106:destroy(); self.edit106 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit115 ~= nil then self.edit115:destroy(); self.edit115 = nil; end;
        if self.edit125 ~= nil then self.edit125:destroy(); self.edit125 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.edit116 ~= nil then self.edit116:destroy(); self.edit116 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.edit129 ~= nil then self.edit129:destroy(); self.edit129 = nil; end;
        if self.edit142 ~= nil then self.edit142:destroy(); self.edit142 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.edit139 ~= nil then self.edit139:destroy(); self.edit139 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.edit122 ~= nil then self.edit122:destroy(); self.edit122 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.edit110 ~= nil then self.edit110:destroy(); self.edit110 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.edit123 ~= nil then self.edit123:destroy(); self.edit123 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.edit143 ~= nil then self.edit143:destroy(); self.edit143 = nil; end;
        if self.edit105 ~= nil then self.edit105:destroy(); self.edit105 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.edit137 ~= nil then self.edit137:destroy(); self.edit137 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.edit146 ~= nil then self.edit146:destroy(); self.edit146 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.edit124 ~= nil then self.edit124:destroy(); self.edit124 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.edit140 ~= nil then self.edit140:destroy(); self.edit140 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.edit134 ~= nil then self.edit134:destroy(); self.edit134 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.edit121 ~= nil then self.edit121:destroy(); self.edit121 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit108 ~= nil then self.edit108:destroy(); self.edit108 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.edit147 ~= nil then self.edit147:destroy(); self.edit147 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit128 ~= nil then self.edit128:destroy(); self.edit128 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.edit127 ~= nil then self.edit127:destroy(); self.edit127 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.edit148 ~= nil then self.edit148:destroy(); self.edit148 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.edit145 ~= nil then self.edit145:destroy(); self.edit145 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.edit107 ~= nil then self.edit107:destroy(); self.edit107 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit109 ~= nil then self.edit109:destroy(); self.edit109 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.edit141 ~= nil then self.edit141:destroy(); self.edit141 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.edit152 ~= nil then self.edit152:destroy(); self.edit152 = nil; end;
        if self.edit133 ~= nil then self.edit133:destroy(); self.edit133 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.edit126 ~= nil then self.edit126:destroy(); self.edit126 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.edit130 ~= nil then self.edit130:destroy(); self.edit130 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.edit144 ~= nil then self.edit144:destroy(); self.edit144 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.edit151 ~= nil then self.edit151:destroy(); self.edit151 = nil; end;
        if self.edit132 ~= nil then self.edit132:destroy(); self.edit132 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit119 ~= nil then self.edit119:destroy(); self.edit119 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.edit113 ~= nil then self.edit113:destroy(); self.edit113 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.edit138 ~= nil then self.edit138:destroy(); self.edit138 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.edit118 ~= nil then self.edit118:destroy(); self.edit118 = nil; end;
        if self.edit154 ~= nil then self.edit154:destroy(); self.edit154 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.edit135 ~= nil then self.edit135:destroy(); self.edit135 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.edit136 ~= nil then self.edit136:destroy(); self.edit136 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.edit117 ~= nil then self.edit117:destroy(); self.edit117 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmADnD2()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmADnD2();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmADnD2 = {
    newEditor = newfrmADnD2, 
    new = newfrmADnD2, 
    name = "frmADnD2", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmADnD2 = _frmADnD2;
Firecast.registrarForm(_frmADnD2);

return _frmADnD2;
