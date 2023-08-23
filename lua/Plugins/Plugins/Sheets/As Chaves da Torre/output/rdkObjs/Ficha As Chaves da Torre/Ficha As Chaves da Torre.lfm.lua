require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFicha_As_Chaves_da_Torre()
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
    obj:setName("frmFicha_As_Chaves_da_Torre");
    obj:setFormType("sheetTemplate");
    obj:setDataType("dev.sylon.AsChavesdaTorre");
    obj:setTitle("As Chaves da Torre v1");
    obj:setAlign("client");
    obj:setTheme("light");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Frente");
    obj.tab1:setName("tab1");

    obj.frmFicha_As_Chaves_da_Torre1_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFicha_As_Chaves_da_Torre1_svg:setParent(obj.tab1);
    obj.frmFicha_As_Chaves_da_Torre1_svg:setName("frmFicha_As_Chaves_da_Torre1_svg");
    obj.frmFicha_As_Chaves_da_Torre1_svg:setAlign("client");
    obj.frmFicha_As_Chaves_da_Torre1_svg:setTheme("light");
    obj.frmFicha_As_Chaves_da_Torre1_svg:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.frmFicha_As_Chaves_da_Torre1_svg);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1221);
    obj.rectangle1:setHeight(863);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(1221);
    obj.image1:setHeight(863);
    obj.image1:setSRC("/Ficha As Chaves da Torre/images/1.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(66);
    obj.layout1:setTop(27);
    obj.layout1:setWidth(415);
    obj.layout1:setHeight(20);
    obj.layout1:setName("layout1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setTransparent(true);
    obj.edit1:setFontSize(12.8);
    obj.edit1:setFontColor("#000000");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(415);
    obj.edit1:setHeight(21);
    obj.edit1:setField("nome");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(74);
    obj.layout2:setTop(103);
    obj.layout2:setWidth(229);
    obj.layout2:setHeight(20);
    obj.layout2:setName("layout2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setTransparent(true);
    obj.edit2:setFontSize(12.8);
    obj.edit2:setFontColor("#000000");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setLeft(0);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(229);
    obj.edit2:setHeight(21);
    obj.edit2:setField("icone");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(595);
    obj.layout3:setTop(426);
    obj.layout3:setWidth(9);
    obj.layout3:setHeight(9);
    obj.layout3:setName("layout3");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.layout3);
    obj.checkBox1:setLeft(0);
    obj.checkBox1:setTop(0);
    obj.checkBox1:setWidth(9);
    obj.checkBox1:setHeight(10);
    obj.checkBox1:setField("Caixa_de_seleção_32");
    obj.checkBox1:setName("checkBox1");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(597);
    obj.layout4:setTop(437);
    obj.layout4:setWidth(5);
    obj.layout4:setHeight(6);
    obj.layout4:setName("layout4");

    obj.checkBox2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.layout4);
    obj.checkBox2:setLeft(0);
    obj.checkBox2:setTop(0);
    obj.checkBox2:setWidth(5);
    obj.checkBox2:setHeight(7);
    obj.checkBox2:setField("Caixa_de_seleção_33");
    obj.checkBox2:setName("checkBox2");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(574);
    obj.layout5:setTop(426);
    obj.layout5:setWidth(9);
    obj.layout5:setHeight(9);
    obj.layout5:setName("layout5");

    obj.checkBox3 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.layout5);
    obj.checkBox3:setLeft(0);
    obj.checkBox3:setTop(0);
    obj.checkBox3:setWidth(9);
    obj.checkBox3:setHeight(10);
    obj.checkBox3:setField("Caixa_de_seleção_34");
    obj.checkBox3:setName("checkBox3");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(576);
    obj.layout6:setTop(437);
    obj.layout6:setWidth(5);
    obj.layout6:setHeight(6);
    obj.layout6:setName("layout6");

    obj.checkBox4 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.layout6);
    obj.checkBox4:setLeft(0);
    obj.checkBox4:setTop(0);
    obj.checkBox4:setWidth(5);
    obj.checkBox4:setHeight(7);
    obj.checkBox4:setField("Caixa_de_seleção_35");
    obj.checkBox4:setName("checkBox4");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(743);
    obj.layout7:setTop(27);
    obj.layout7:setWidth(454);
    obj.layout7:setHeight(20);
    obj.layout7:setName("layout7");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout7);
    obj.edit3:setTransparent(true);
    obj.edit3:setFontSize(12.8);
    obj.edit3:setFontColor("#000000");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setLeft(0);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(454);
    obj.edit3:setHeight(21);
    obj.edit3:setField("conceito");
    obj.edit3:setName("edit3");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(34);
    obj.layout8:setTop(131);
    obj.layout8:setWidth(352);
    obj.layout8:setHeight(17);
    obj.layout8:setName("layout8");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout8);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(10.5);
    obj.edit4:setFontColor("#000000");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(0);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(352);
    obj.edit4:setHeight(18);
    obj.edit4:setField("icone_descricao");
    obj.edit4:setName("edit4");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(34);
    obj.layout9:setTop(148);
    obj.layout9:setWidth(352);
    obj.layout9:setHeight(17);
    obj.layout9:setName("layout9");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout9);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(10.5);
    obj.edit5:setFontColor("#000000");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(0);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(352);
    obj.edit5:setHeight(18);
    obj.edit5:setField("icone_descricao_1");
    obj.edit5:setName("edit5");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(503);
    obj.layout10:setTop(290);
    obj.layout10:setWidth(174);
    obj.layout10:setHeight(26);
    obj.layout10:setName("layout10");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout10);
    obj.edit6:setTransparent(true);
    obj.edit6:setFontSize(14.5);
    obj.edit6:setFontColor("#000000");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setLeft(0);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(174);
    obj.edit6:setHeight(27);
    obj.edit6:setField("corrup");
    obj.edit6:setName("edit6");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(114);
    obj.layout11:setTop(203);
    obj.layout11:setWidth(273);
    obj.layout11:setHeight(17);
    obj.layout11:setName("layout11");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout11);
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(10.5);
    obj.edit7:setFontColor("#000000");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setLeft(0);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(273);
    obj.edit7:setHeight(18);
    obj.edit7:setField("aspecto_guard_01");
    obj.edit7:setName("edit7");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(59);
    obj.layout12:setTop(220);
    obj.layout12:setWidth(327);
    obj.layout12:setHeight(17);
    obj.layout12:setName("layout12");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout12);
    obj.edit8:setTransparent(true);
    obj.edit8:setFontSize(10.5);
    obj.edit8:setFontColor("#000000");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setLeft(0);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(327);
    obj.edit8:setHeight(18);
    obj.edit8:setField("aspecto_guard_02");
    obj.edit8:setName("edit8");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(128);
    obj.layout13:setTop(252);
    obj.layout13:setWidth(258);
    obj.layout13:setHeight(17);
    obj.layout13:setName("layout13");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout13);
    obj.edit9:setTransparent(true);
    obj.edit9:setFontSize(10.5);
    obj.edit9:setFontColor("#000000");
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setLeft(0);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(258);
    obj.edit9:setHeight(18);
    obj.edit9:setField("aspecto_encant_01");
    obj.edit9:setName("edit9");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(59);
    obj.layout14:setTop(269);
    obj.layout14:setWidth(327);
    obj.layout14:setHeight(17);
    obj.layout14:setName("layout14");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout14);
    obj.edit10:setTransparent(true);
    obj.edit10:setFontSize(10.5);
    obj.edit10:setFontColor("#000000");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setLeft(0);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(327);
    obj.edit10:setHeight(18);
    obj.edit10:setField("aspecto_encant_02");
    obj.edit10:setName("edit10");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(123);
    obj.layout15:setTop(301);
    obj.layout15:setWidth(264);
    obj.layout15:setHeight(17);
    obj.layout15:setName("layout15");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout15);
    obj.edit11:setTransparent(true);
    obj.edit11:setFontSize(10.5);
    obj.edit11:setFontColor("#000000");
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setLeft(0);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(264);
    obj.edit11:setHeight(18);
    obj.edit11:setField("aspecto_trap_01");
    obj.edit11:setName("edit11");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(59);
    obj.layout16:setTop(318);
    obj.layout16:setWidth(327);
    obj.layout16:setHeight(17);
    obj.layout16:setName("layout16");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout16);
    obj.edit12:setTransparent(true);
    obj.edit12:setFontSize(10.5);
    obj.edit12:setFontColor("#000000");
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setLeft(0);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(327);
    obj.edit12:setHeight(18);
    obj.edit12:setField("aspecto_trap_02");
    obj.edit12:setName("edit12");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(123);
    obj.layout17:setTop(349);
    obj.layout17:setWidth(264);
    obj.layout17:setHeight(17);
    obj.layout17:setName("layout17");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout17);
    obj.edit13:setTransparent(true);
    obj.edit13:setFontSize(10.5);
    obj.edit13:setFontColor("#000000");
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setLeft(0);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(264);
    obj.edit13:setHeight(18);
    obj.edit13:setField("aspecto_eng_01");
    obj.edit13:setName("edit13");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(59);
    obj.layout18:setTop(366);
    obj.layout18:setWidth(327);
    obj.layout18:setHeight(17);
    obj.layout18:setName("layout18");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout18);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontSize(10.5);
    obj.edit14:setFontColor("#000000");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setLeft(0);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(327);
    obj.edit14:setHeight(18);
    obj.edit14:setField("aspecto_eng_02");
    obj.edit14:setName("edit14");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle1);
    obj.layout19:setLeft(128);
    obj.layout19:setTop(397);
    obj.layout19:setWidth(258);
    obj.layout19:setHeight(17);
    obj.layout19:setName("layout19");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout19);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontSize(10.5);
    obj.edit15:setFontColor("#000000");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setLeft(0);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(258);
    obj.edit15:setHeight(18);
    obj.edit15:setField("aspecto_pres_01");
    obj.edit15:setName("edit15");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle1);
    obj.layout20:setLeft(59);
    obj.layout20:setTop(414);
    obj.layout20:setWidth(327);
    obj.layout20:setHeight(17);
    obj.layout20:setName("layout20");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout20);
    obj.edit16:setTransparent(true);
    obj.edit16:setFontSize(10.5);
    obj.edit16:setFontColor("#000000");
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setLeft(0);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(327);
    obj.edit16:setHeight(18);
    obj.edit16:setField("aspecto_pres_02");
    obj.edit16:setName("edit16");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle1);
    obj.layout21:setLeft(121);
    obj.layout21:setTop(445);
    obj.layout21:setWidth(266);
    obj.layout21:setHeight(17);
    obj.layout21:setName("layout21");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout21);
    obj.edit17:setTransparent(true);
    obj.edit17:setFontSize(10.5);
    obj.edit17:setFontColor("#000000");
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setLeft(0);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(266);
    obj.edit17:setHeight(18);
    obj.edit17:setField("aspecto_mis_01");
    obj.edit17:setName("edit17");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(59);
    obj.layout22:setTop(462);
    obj.layout22:setWidth(327);
    obj.layout22:setHeight(17);
    obj.layout22:setName("layout22");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout22);
    obj.edit18:setTransparent(true);
    obj.edit18:setFontSize(10.5);
    obj.edit18:setFontColor("#000000");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setLeft(0);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(327);
    obj.edit18:setHeight(18);
    obj.edit18:setField("aspecto_mis_02");
    obj.edit18:setName("edit18");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(115);
    obj.layout23:setTop(494);
    obj.layout23:setWidth(271);
    obj.layout23:setHeight(17);
    obj.layout23:setName("layout23");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout23);
    obj.edit19:setTransparent(true);
    obj.edit19:setFontSize(10.5);
    obj.edit19:setFontColor("#000000");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setLeft(0);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(271);
    obj.edit19:setHeight(18);
    obj.edit19:setField("aspecto_pre_01");
    obj.edit19:setName("edit19");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(59);
    obj.layout24:setTop(511);
    obj.layout24:setWidth(327);
    obj.layout24:setHeight(17);
    obj.layout24:setName("layout24");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout24);
    obj.edit20:setTransparent(true);
    obj.edit20:setFontSize(10.5);
    obj.edit20:setFontColor("#000000");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setLeft(0);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(327);
    obj.edit20:setHeight(18);
    obj.edit20:setField("aspecto_pre_02");
    obj.edit20:setName("edit20");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(39);
    obj.layout25:setTop(208);
    obj.layout25:setWidth(8);
    obj.layout25:setHeight(9);
    obj.layout25:setName("layout25");

    obj.checkBox5 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.layout25);
    obj.checkBox5:setLeft(0);
    obj.checkBox5:setTop(0);
    obj.checkBox5:setWidth(8);
    obj.checkBox5:setHeight(10);
    obj.checkBox5:setField("Caixa_de_seleção_84");
    obj.checkBox5:setName("checkBox5");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(39);
    obj.layout26:setTop(256);
    obj.layout26:setWidth(8);
    obj.layout26:setHeight(9);
    obj.layout26:setName("layout26");

    obj.checkBox6 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox6:setParent(obj.layout26);
    obj.checkBox6:setLeft(0);
    obj.checkBox6:setTop(0);
    obj.checkBox6:setWidth(8);
    obj.checkBox6:setHeight(10);
    obj.checkBox6:setField("Caixa_de_seleção_85");
    obj.checkBox6:setName("checkBox6");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle1);
    obj.layout27:setLeft(39);
    obj.layout27:setTop(305);
    obj.layout27:setWidth(8);
    obj.layout27:setHeight(9);
    obj.layout27:setName("layout27");

    obj.checkBox7 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox7:setParent(obj.layout27);
    obj.checkBox7:setLeft(0);
    obj.checkBox7:setTop(0);
    obj.checkBox7:setWidth(8);
    obj.checkBox7:setHeight(10);
    obj.checkBox7:setField("Caixa_de_seleção_86");
    obj.checkBox7:setName("checkBox7");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle1);
    obj.layout28:setLeft(39);
    obj.layout28:setTop(353);
    obj.layout28:setWidth(8);
    obj.layout28:setHeight(9);
    obj.layout28:setName("layout28");

    obj.checkBox8 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox8:setParent(obj.layout28);
    obj.checkBox8:setLeft(0);
    obj.checkBox8:setTop(0);
    obj.checkBox8:setWidth(8);
    obj.checkBox8:setHeight(10);
    obj.checkBox8:setField("Caixa_de_seleção_87");
    obj.checkBox8:setName("checkBox8");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle1);
    obj.layout29:setLeft(39);
    obj.layout29:setTop(400);
    obj.layout29:setWidth(8);
    obj.layout29:setHeight(9);
    obj.layout29:setName("layout29");

    obj.checkBox9 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox9:setParent(obj.layout29);
    obj.checkBox9:setLeft(0);
    obj.checkBox9:setTop(0);
    obj.checkBox9:setWidth(8);
    obj.checkBox9:setHeight(10);
    obj.checkBox9:setField("Caixa_de_seleção_88");
    obj.checkBox9:setName("checkBox9");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle1);
    obj.layout30:setLeft(39);
    obj.layout30:setTop(449);
    obj.layout30:setWidth(8);
    obj.layout30:setHeight(9);
    obj.layout30:setName("layout30");

    obj.checkBox10 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox10:setParent(obj.layout30);
    obj.checkBox10:setLeft(0);
    obj.checkBox10:setTop(0);
    obj.checkBox10:setWidth(8);
    obj.checkBox10:setHeight(10);
    obj.checkBox10:setField("Caixa_de_seleção_89");
    obj.checkBox10:setName("checkBox10");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle1);
    obj.layout31:setLeft(39);
    obj.layout31:setTop(497);
    obj.layout31:setWidth(8);
    obj.layout31:setHeight(9);
    obj.layout31:setName("layout31");

    obj.checkBox11 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox11:setParent(obj.layout31);
    obj.checkBox11:setLeft(0);
    obj.checkBox11:setTop(0);
    obj.checkBox11:setWidth(8);
    obj.checkBox11:setHeight(10);
    obj.checkBox11:setField("Caixa_de_seleção_90");
    obj.checkBox11:setName("checkBox11");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle1);
    obj.layout32:setLeft(47);
    obj.layout32:setTop(592);
    obj.layout32:setWidth(201);
    obj.layout32:setHeight(20);
    obj.layout32:setName("layout32");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout32);
    obj.edit21:setTransparent(true);
    obj.edit21:setFontSize(12.8);
    obj.edit21:setFontColor("#000000");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setLeft(0);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(201);
    obj.edit21:setHeight(21);
    obj.edit21:setField("comp_01");
    obj.edit21:setName("edit21");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle1);
    obj.layout33:setLeft(47);
    obj.layout33:setTop(622);
    obj.layout33:setWidth(201);
    obj.layout33:setHeight(20);
    obj.layout33:setName("layout33");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout33);
    obj.edit22:setTransparent(true);
    obj.edit22:setFontSize(12.8);
    obj.edit22:setFontColor("#000000");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setLeft(0);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(201);
    obj.edit22:setHeight(21);
    obj.edit22:setField("comp_02");
    obj.edit22:setName("edit22");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle1);
    obj.layout34:setLeft(47);
    obj.layout34:setTop(654);
    obj.layout34:setWidth(201);
    obj.layout34:setHeight(20);
    obj.layout34:setName("layout34");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout34);
    obj.edit23:setTransparent(true);
    obj.edit23:setFontSize(12.8);
    obj.edit23:setFontColor("#000000");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setLeft(0);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(201);
    obj.edit23:setHeight(21);
    obj.edit23:setField("comp_03");
    obj.edit23:setName("edit23");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle1);
    obj.layout35:setLeft(47);
    obj.layout35:setTop(684);
    obj.layout35:setWidth(201);
    obj.layout35:setHeight(20);
    obj.layout35:setName("layout35");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout35);
    obj.edit24:setTransparent(true);
    obj.edit24:setFontSize(12.8);
    obj.edit24:setFontColor("#000000");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setLeft(0);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(201);
    obj.edit24:setHeight(21);
    obj.edit24:setField("comp_04");
    obj.edit24:setName("edit24");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle1);
    obj.layout36:setLeft(47);
    obj.layout36:setTop(716);
    obj.layout36:setWidth(201);
    obj.layout36:setHeight(20);
    obj.layout36:setName("layout36");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout36);
    obj.edit25:setTransparent(true);
    obj.edit25:setFontSize(12.8);
    obj.edit25:setFontColor("#000000");
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setLeft(0);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(201);
    obj.edit25:setHeight(21);
    obj.edit25:setField("comp_05");
    obj.edit25:setName("edit25");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle1);
    obj.layout37:setLeft(276);
    obj.layout37:setTop(592);
    obj.layout37:setWidth(201);
    obj.layout37:setHeight(20);
    obj.layout37:setName("layout37");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout37);
    obj.edit26:setTransparent(true);
    obj.edit26:setFontSize(12.8);
    obj.edit26:setFontColor("#000000");
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setLeft(0);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(201);
    obj.edit26:setHeight(21);
    obj.edit26:setField("comp_06");
    obj.edit26:setName("edit26");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle1);
    obj.layout38:setLeft(276);
    obj.layout38:setTop(622);
    obj.layout38:setWidth(201);
    obj.layout38:setHeight(20);
    obj.layout38:setName("layout38");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout38);
    obj.edit27:setTransparent(true);
    obj.edit27:setFontSize(12.8);
    obj.edit27:setFontColor("#000000");
    obj.edit27:setVertTextAlign("center");
    obj.edit27:setLeft(0);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(201);
    obj.edit27:setHeight(21);
    obj.edit27:setField("comp_07");
    obj.edit27:setName("edit27");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle1);
    obj.layout39:setLeft(276);
    obj.layout39:setTop(654);
    obj.layout39:setWidth(201);
    obj.layout39:setHeight(20);
    obj.layout39:setName("layout39");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout39);
    obj.edit28:setTransparent(true);
    obj.edit28:setFontSize(12.8);
    obj.edit28:setFontColor("#000000");
    obj.edit28:setVertTextAlign("center");
    obj.edit28:setLeft(0);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(201);
    obj.edit28:setHeight(21);
    obj.edit28:setField("comp_08");
    obj.edit28:setName("edit28");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle1);
    obj.layout40:setLeft(276);
    obj.layout40:setTop(684);
    obj.layout40:setWidth(201);
    obj.layout40:setHeight(20);
    obj.layout40:setName("layout40");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout40);
    obj.edit29:setTransparent(true);
    obj.edit29:setFontSize(12.8);
    obj.edit29:setFontColor("#000000");
    obj.edit29:setVertTextAlign("center");
    obj.edit29:setLeft(0);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(201);
    obj.edit29:setHeight(21);
    obj.edit29:setField("comp_09");
    obj.edit29:setName("edit29");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle1);
    obj.layout41:setLeft(276);
    obj.layout41:setTop(716);
    obj.layout41:setWidth(201);
    obj.layout41:setHeight(20);
    obj.layout41:setName("layout41");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout41);
    obj.edit30:setTransparent(true);
    obj.edit30:setFontSize(12.8);
    obj.edit30:setFontColor("#000000");
    obj.edit30:setVertTextAlign("center");
    obj.edit30:setLeft(0);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(201);
    obj.edit30:setHeight(21);
    obj.edit30:setField("comp_010");
    obj.edit30:setName("edit30");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.rectangle1);
    obj.layout42:setLeft(47);
    obj.layout42:setTop(780);
    obj.layout42:setWidth(267);
    obj.layout42:setHeight(20);
    obj.layout42:setName("layout42");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout42);
    obj.edit31:setTransparent(true);
    obj.edit31:setFontSize(12.8);
    obj.edit31:setFontColor("#000000");
    obj.edit31:setVertTextAlign("center");
    obj.edit31:setLeft(0);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(267);
    obj.edit31:setHeight(21);
    obj.edit31:setField("berlo_01");
    obj.edit31:setName("edit31");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.rectangle1);
    obj.layout43:setLeft(47);
    obj.layout43:setTop(800);
    obj.layout43:setWidth(267);
    obj.layout43:setHeight(20);
    obj.layout43:setName("layout43");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout43);
    obj.edit32:setTransparent(true);
    obj.edit32:setFontSize(12.8);
    obj.edit32:setFontColor("#000000");
    obj.edit32:setVertTextAlign("center");
    obj.edit32:setLeft(0);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(267);
    obj.edit32:setHeight(21);
    obj.edit32:setField("berlo_02");
    obj.edit32:setName("edit32");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.rectangle1);
    obj.layout44:setLeft(356);
    obj.layout44:setTop(780);
    obj.layout44:setWidth(265);
    obj.layout44:setHeight(20);
    obj.layout44:setName("layout44");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout44);
    obj.edit33:setTransparent(true);
    obj.edit33:setFontSize(12.8);
    obj.edit33:setFontColor("#000000");
    obj.edit33:setVertTextAlign("center");
    obj.edit33:setLeft(0);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(265);
    obj.edit33:setHeight(21);
    obj.edit33:setField("equip_01");
    obj.edit33:setName("edit33");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.rectangle1);
    obj.layout45:setLeft(356);
    obj.layout45:setTop(800);
    obj.layout45:setWidth(265);
    obj.layout45:setHeight(20);
    obj.layout45:setName("layout45");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout45);
    obj.edit34:setTransparent(true);
    obj.edit34:setFontSize(12.8);
    obj.edit34:setFontColor("#000000");
    obj.edit34:setVertTextAlign("center");
    obj.edit34:setLeft(0);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(265);
    obj.edit34:setHeight(21);
    obj.edit34:setField("equip_02");
    obj.edit34:setName("edit34");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.rectangle1);
    obj.layout46:setLeft(639);
    obj.layout46:setTop(780);
    obj.layout46:setWidth(265);
    obj.layout46:setHeight(20);
    obj.layout46:setName("layout46");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout46);
    obj.edit35:setTransparent(true);
    obj.edit35:setFontSize(12.8);
    obj.edit35:setFontColor("#000000");
    obj.edit35:setVertTextAlign("center");
    obj.edit35:setLeft(0);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(265);
    obj.edit35:setHeight(21);
    obj.edit35:setField("equip_03");
    obj.edit35:setName("edit35");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle1);
    obj.layout47:setLeft(639);
    obj.layout47:setTop(800);
    obj.layout47:setWidth(265);
    obj.layout47:setHeight(20);
    obj.layout47:setName("layout47");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout47);
    obj.edit36:setTransparent(true);
    obj.edit36:setFontSize(12.8);
    obj.edit36:setFontColor("#000000");
    obj.edit36:setVertTextAlign("center");
    obj.edit36:setLeft(0);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(265);
    obj.edit36:setHeight(21);
    obj.edit36:setField("equip_04");
    obj.edit36:setName("edit36");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle1);
    obj.layout48:setLeft(919);
    obj.layout48:setTop(780);
    obj.layout48:setWidth(265);
    obj.layout48:setHeight(20);
    obj.layout48:setName("layout48");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout48);
    obj.edit37:setTransparent(true);
    obj.edit37:setFontSize(12.8);
    obj.edit37:setFontColor("#000000");
    obj.edit37:setVertTextAlign("center");
    obj.edit37:setLeft(0);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(265);
    obj.edit37:setHeight(21);
    obj.edit37:setField("equip_05");
    obj.edit37:setName("edit37");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle1);
    obj.layout49:setLeft(919);
    obj.layout49:setTop(800);
    obj.layout49:setWidth(265);
    obj.layout49:setHeight(20);
    obj.layout49:setName("layout49");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout49);
    obj.edit38:setTransparent(true);
    obj.edit38:setFontSize(12.8);
    obj.edit38:setFontColor("#000000");
    obj.edit38:setVertTextAlign("center");
    obj.edit38:setLeft(0);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(265);
    obj.edit38:setHeight(21);
    obj.edit38:setField("equip_06");
    obj.edit38:setName("edit38");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.rectangle1);
    obj.layout50:setLeft(519);
    obj.layout50:setTop(654);
    obj.layout50:setWidth(261);
    obj.layout50:setHeight(20);
    obj.layout50:setName("layout50");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout50);
    obj.edit39:setTransparent(true);
    obj.edit39:setFontSize(12.8);
    obj.edit39:setFontColor("#000000");
    obj.edit39:setVertTextAlign("center");
    obj.edit39:setLeft(0);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(261);
    obj.edit39:setHeight(21);
    obj.edit39:setField("dest_01");
    obj.edit39:setName("edit39");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.rectangle1);
    obj.layout51:setLeft(519);
    obj.layout51:setTop(683);
    obj.layout51:setWidth(261);
    obj.layout51:setHeight(20);
    obj.layout51:setName("layout51");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout51);
    obj.edit40:setTransparent(true);
    obj.edit40:setFontSize(12.8);
    obj.edit40:setFontColor("#000000");
    obj.edit40:setVertTextAlign("center");
    obj.edit40:setLeft(0);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(261);
    obj.edit40:setHeight(21);
    obj.edit40:setField("dest_02");
    obj.edit40:setName("edit40");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.rectangle1);
    obj.layout52:setLeft(519);
    obj.layout52:setTop(715);
    obj.layout52:setWidth(261);
    obj.layout52:setHeight(20);
    obj.layout52:setName("layout52");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout52);
    obj.edit41:setTransparent(true);
    obj.edit41:setFontSize(12.8);
    obj.edit41:setFontColor("#000000");
    obj.edit41:setVertTextAlign("center");
    obj.edit41:setLeft(0);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(261);
    obj.edit41:setHeight(21);
    obj.edit41:setField("dest_03");
    obj.edit41:setName("edit41");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.rectangle1);
    obj.layout53:setLeft(833);
    obj.layout53:setTop(653);
    obj.layout53:setWidth(261);
    obj.layout53:setHeight(20);
    obj.layout53:setName("layout53");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout53);
    obj.edit42:setTransparent(true);
    obj.edit42:setFontSize(12.8);
    obj.edit42:setFontColor("#000000");
    obj.edit42:setVertTextAlign("center");
    obj.edit42:setLeft(0);
    obj.edit42:setTop(0);
    obj.edit42:setWidth(261);
    obj.edit42:setHeight(21);
    obj.edit42:setField("deb_01");
    obj.edit42:setName("edit42");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.rectangle1);
    obj.layout54:setLeft(833);
    obj.layout54:setTop(683);
    obj.layout54:setWidth(261);
    obj.layout54:setHeight(20);
    obj.layout54:setName("layout54");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout54);
    obj.edit43:setTransparent(true);
    obj.edit43:setFontSize(12.8);
    obj.edit43:setFontColor("#000000");
    obj.edit43:setVertTextAlign("center");
    obj.edit43:setLeft(0);
    obj.edit43:setTop(0);
    obj.edit43:setWidth(261);
    obj.edit43:setHeight(21);
    obj.edit43:setField("deb_02");
    obj.edit43:setName("edit43");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.rectangle1);
    obj.layout55:setLeft(833);
    obj.layout55:setTop(715);
    obj.layout55:setWidth(261);
    obj.layout55:setHeight(20);
    obj.layout55:setName("layout55");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout55);
    obj.edit44:setTransparent(true);
    obj.edit44:setFontSize(12.8);
    obj.edit44:setFontColor("#000000");
    obj.edit44:setVertTextAlign("center");
    obj.edit44:setLeft(0);
    obj.edit44:setTop(0);
    obj.edit44:setWidth(261);
    obj.edit44:setHeight(21);
    obj.edit44:setField("deb_03");
    obj.edit44:setName("edit44");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.rectangle1);
    obj.layout56:setLeft(796);
    obj.layout56:setTop(140.6);
    obj.layout56:setWidth(213);
    obj.layout56:setHeight(51.4);
    obj.layout56:setName("layout56");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout56);
    obj.textEditor1:setLeft(0);
    obj.textEditor1:setTop(0);
    obj.textEditor1:setWidth(213);
    obj.textEditor1:setHeight(51.4);
    obj.textEditor1:setFontSize(14.5);
    obj.textEditor1:setFontColor("#000000");
    obj.textEditor1:setField("memor_01");
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setName("textEditor1");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.rectangle1);
    obj.layout57:setLeft(796);
    obj.layout57:setTop(218.6);
    obj.layout57:setWidth(213);
    obj.layout57:setHeight(51.4);
    obj.layout57:setName("layout57");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout57);
    obj.textEditor2:setLeft(0);
    obj.textEditor2:setTop(0);
    obj.textEditor2:setWidth(213);
    obj.textEditor2:setHeight(51.4);
    obj.textEditor2:setFontSize(14.5);
    obj.textEditor2:setFontColor("#000000");
    obj.textEditor2:setField("memor_02");
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setName("textEditor2");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.rectangle1);
    obj.layout58:setLeft(796);
    obj.layout58:setTop(296.6);
    obj.layout58:setWidth(213);
    obj.layout58:setHeight(51.4);
    obj.layout58:setName("layout58");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout58);
    obj.textEditor3:setLeft(0);
    obj.textEditor3:setTop(0);
    obj.textEditor3:setWidth(213);
    obj.textEditor3:setHeight(51.4);
    obj.textEditor3:setFontSize(14.5);
    obj.textEditor3:setFontColor("#000000");
    obj.textEditor3:setField("memor_03");
    obj.textEditor3:setTransparent(true);
    obj.textEditor3:setName("textEditor3");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.rectangle1);
    obj.layout59:setLeft(796);
    obj.layout59:setTop(372.6);
    obj.layout59:setWidth(213);
    obj.layout59:setHeight(51.4);
    obj.layout59:setName("layout59");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout59);
    obj.textEditor4:setLeft(0);
    obj.textEditor4:setTop(0);
    obj.textEditor4:setWidth(213);
    obj.textEditor4:setHeight(51.4);
    obj.textEditor4:setFontSize(14.5);
    obj.textEditor4:setFontColor("#000000");
    obj.textEditor4:setField("memor_04");
    obj.textEditor4:setTransparent(true);
    obj.textEditor4:setName("textEditor4");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.rectangle1);
    obj.layout60:setLeft(796);
    obj.layout60:setTop(449.6);
    obj.layout60:setWidth(213);
    obj.layout60:setHeight(51.4);
    obj.layout60:setName("layout60");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout60);
    obj.textEditor5:setLeft(0);
    obj.textEditor5:setTop(0);
    obj.textEditor5:setWidth(213);
    obj.textEditor5:setHeight(51.4);
    obj.textEditor5:setFontSize(14.5);
    obj.textEditor5:setFontColor("#000000");
    obj.textEditor5:setField("memor_05");
    obj.textEditor5:setTransparent(true);
    obj.textEditor5:setName("textEditor5");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.rectangle1);
    obj.layout61:setLeft(796);
    obj.layout61:setTop(525.6);
    obj.layout61:setWidth(213);
    obj.layout61:setHeight(51.4);
    obj.layout61:setName("layout61");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout61);
    obj.textEditor6:setLeft(0);
    obj.textEditor6:setTop(0);
    obj.textEditor6:setWidth(213);
    obj.textEditor6:setHeight(51.4);
    obj.textEditor6:setFontSize(14.5);
    obj.textEditor6:setFontColor("#000000");
    obj.textEditor6:setField("memor_06");
    obj.textEditor6:setTransparent(true);
    obj.textEditor6:setName("textEditor6");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.rectangle1);
    obj.layout62:setLeft(1067);
    obj.layout62:setTop(147);
    obj.layout62:setWidth(92);
    obj.layout62:setHeight(20);
    obj.layout62:setName("layout62");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout62);
    obj.edit45:setTransparent(true);
    obj.edit45:setFontSize(12.8);
    obj.edit45:setFontColor("#000000");
    obj.edit45:setVertTextAlign("center");
    obj.edit45:setLeft(0);
    obj.edit45:setTop(0);
    obj.edit45:setWidth(92);
    obj.edit45:setHeight(21);
    obj.edit45:setField("chave_01");
    obj.edit45:setName("edit45");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.rectangle1);
    obj.layout63:setLeft(1056);
    obj.layout63:setTop(214);
    obj.layout63:setWidth(101);
    obj.layout63:setHeight(20);
    obj.layout63:setName("layout63");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout63);
    obj.edit46:setTransparent(true);
    obj.edit46:setFontSize(12.8);
    obj.edit46:setFontColor("#000000");
    obj.edit46:setVertTextAlign("center");
    obj.edit46:setLeft(0);
    obj.edit46:setTop(0);
    obj.edit46:setWidth(101);
    obj.edit46:setHeight(21);
    obj.edit46:setField("chave_02");
    obj.edit46:setName("edit46");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.rectangle1);
    obj.layout64:setLeft(1078);
    obj.layout64:setTop(288);
    obj.layout64:setWidth(80);
    obj.layout64:setHeight(20);
    obj.layout64:setName("layout64");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout64);
    obj.edit47:setTransparent(true);
    obj.edit47:setFontSize(12.8);
    obj.edit47:setFontColor("#000000");
    obj.edit47:setVertTextAlign("center");
    obj.edit47:setLeft(0);
    obj.edit47:setTop(0);
    obj.edit47:setWidth(80);
    obj.edit47:setHeight(21);
    obj.edit47:setField("chave_03");
    obj.edit47:setName("edit47");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.rectangle1);
    obj.layout65:setLeft(1069);
    obj.layout65:setTop(361);
    obj.layout65:setWidth(97);
    obj.layout65:setHeight(20);
    obj.layout65:setName("layout65");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout65);
    obj.edit48:setTransparent(true);
    obj.edit48:setFontSize(12.8);
    obj.edit48:setFontColor("#000000");
    obj.edit48:setVertTextAlign("center");
    obj.edit48:setLeft(0);
    obj.edit48:setTop(0);
    obj.edit48:setWidth(97);
    obj.edit48:setHeight(21);
    obj.edit48:setField("chave_04");
    obj.edit48:setName("edit48");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.rectangle1);
    obj.layout66:setLeft(1062);
    obj.layout66:setTop(441);
    obj.layout66:setWidth(101);
    obj.layout66:setHeight(20);
    obj.layout66:setName("layout66");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout66);
    obj.edit49:setTransparent(true);
    obj.edit49:setFontSize(12.8);
    obj.edit49:setFontColor("#000000");
    obj.edit49:setVertTextAlign("center");
    obj.edit49:setLeft(0);
    obj.edit49:setTop(0);
    obj.edit49:setWidth(101);
    obj.edit49:setHeight(21);
    obj.edit49:setField("chave_05");
    obj.edit49:setName("edit49");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.rectangle1);
    obj.layout67:setLeft(1070);
    obj.layout67:setTop(524);
    obj.layout67:setWidth(80);
    obj.layout67:setHeight(20);
    obj.layout67:setName("layout67");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout67);
    obj.edit50:setTransparent(true);
    obj.edit50:setFontSize(12.8);
    obj.edit50:setFontColor("#000000");
    obj.edit50:setVertTextAlign("center");
    obj.edit50:setLeft(0);
    obj.edit50:setTop(0);
    obj.edit50:setWidth(80);
    obj.edit50:setHeight(21);
    obj.edit50:setField("chave_06");
    obj.edit50:setName("edit50");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.rectangle1);
    obj.layout68:setLeft(660);
    obj.layout68:setTop(426);
    obj.layout68:setWidth(9);
    obj.layout68:setHeight(9);
    obj.layout68:setName("layout68");

    obj.checkBox12 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox12:setParent(obj.layout68);
    obj.checkBox12:setLeft(0);
    obj.checkBox12:setTop(0);
    obj.checkBox12:setWidth(9);
    obj.checkBox12:setHeight(10);
    obj.checkBox12:setField("Caixa_de_seleção_110");
    obj.checkBox12:setName("checkBox12");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.rectangle1);
    obj.layout69:setLeft(662);
    obj.layout69:setTop(437);
    obj.layout69:setWidth(5);
    obj.layout69:setHeight(6);
    obj.layout69:setName("layout69");

    obj.checkBox13 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox13:setParent(obj.layout69);
    obj.checkBox13:setLeft(0);
    obj.checkBox13:setTop(0);
    obj.checkBox13:setWidth(5);
    obj.checkBox13:setHeight(7);
    obj.checkBox13:setField("Caixa_de_seleção_111");
    obj.checkBox13:setName("checkBox13");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.rectangle1);
    obj.layout70:setLeft(639);
    obj.layout70:setTop(426);
    obj.layout70:setWidth(9);
    obj.layout70:setHeight(9);
    obj.layout70:setName("layout70");

    obj.checkBox14 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox14:setParent(obj.layout70);
    obj.checkBox14:setLeft(0);
    obj.checkBox14:setTop(0);
    obj.checkBox14:setWidth(9);
    obj.checkBox14:setHeight(10);
    obj.checkBox14:setField("Caixa_de_seleção_112");
    obj.checkBox14:setName("checkBox14");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.rectangle1);
    obj.layout71:setLeft(641);
    obj.layout71:setTop(437);
    obj.layout71:setWidth(5);
    obj.layout71:setHeight(6);
    obj.layout71:setName("layout71");

    obj.checkBox15 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox15:setParent(obj.layout71);
    obj.checkBox15:setLeft(0);
    obj.checkBox15:setTop(0);
    obj.checkBox15:setWidth(5);
    obj.checkBox15:setHeight(7);
    obj.checkBox15:setField("Caixa_de_seleção_113");
    obj.checkBox15:setName("checkBox15");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.rectangle1);
    obj.layout72:setLeft(617);
    obj.layout72:setTop(426);
    obj.layout72:setWidth(9);
    obj.layout72:setHeight(9);
    obj.layout72:setName("layout72");

    obj.checkBox16 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox16:setParent(obj.layout72);
    obj.checkBox16:setLeft(0);
    obj.checkBox16:setTop(0);
    obj.checkBox16:setWidth(9);
    obj.checkBox16:setHeight(10);
    obj.checkBox16:setField("Caixa_de_seleção_114");
    obj.checkBox16:setName("checkBox16");

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.rectangle1);
    obj.layout73:setLeft(619);
    obj.layout73:setTop(437);
    obj.layout73:setWidth(5);
    obj.layout73:setHeight(6);
    obj.layout73:setName("layout73");

    obj.checkBox17 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox17:setParent(obj.layout73);
    obj.checkBox17:setLeft(0);
    obj.checkBox17:setTop(0);
    obj.checkBox17:setWidth(5);
    obj.checkBox17:setHeight(7);
    obj.checkBox17:setField("Caixa_de_seleção_115");
    obj.checkBox17:setName("checkBox17");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.rectangle1);
    obj.layout74:setLeft(682);
    obj.layout74:setTop(426);
    obj.layout74:setWidth(9);
    obj.layout74:setHeight(9);
    obj.layout74:setName("layout74");

    obj.checkBox18 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox18:setParent(obj.layout74);
    obj.checkBox18:setLeft(0);
    obj.checkBox18:setTop(0);
    obj.checkBox18:setWidth(9);
    obj.checkBox18:setHeight(10);
    obj.checkBox18:setField("Caixa_de_seleção_116");
    obj.checkBox18:setName("checkBox18");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.rectangle1);
    obj.layout75:setLeft(684);
    obj.layout75:setTop(437);
    obj.layout75:setWidth(5);
    obj.layout75:setHeight(6);
    obj.layout75:setName("layout75");

    obj.checkBox19 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox19:setParent(obj.layout75);
    obj.checkBox19:setLeft(0);
    obj.checkBox19:setTop(0);
    obj.checkBox19:setWidth(5);
    obj.checkBox19:setHeight(7);
    obj.checkBox19:setField("Caixa_de_seleção_117");
    obj.checkBox19:setName("checkBox19");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.rectangle1);
    obj.layout76:setLeft(584);
    obj.layout76:setTop(327);
    obj.layout76:setWidth(9);
    obj.layout76:setHeight(9);
    obj.layout76:setName("layout76");

    obj.checkBox20 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox20:setParent(obj.layout76);
    obj.checkBox20:setLeft(0);
    obj.checkBox20:setTop(0);
    obj.checkBox20:setWidth(9);
    obj.checkBox20:setHeight(10);
    obj.checkBox20:setField("Caixa_de_seleção_166");
    obj.checkBox20:setName("checkBox20");

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.rectangle1);
    obj.layout77:setLeft(606);
    obj.layout77:setTop(327);
    obj.layout77:setWidth(9);
    obj.layout77:setHeight(9);
    obj.layout77:setName("layout77");

    obj.checkBox21 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox21:setParent(obj.layout77);
    obj.checkBox21:setLeft(0);
    obj.checkBox21:setTop(0);
    obj.checkBox21:setWidth(9);
    obj.checkBox21:setHeight(10);
    obj.checkBox21:setField("Caixa_de_seleção_167");
    obj.checkBox21:setName("checkBox21");

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.rectangle1);
    obj.layout78:setLeft(649);
    obj.layout78:setTop(327);
    obj.layout78:setWidth(9);
    obj.layout78:setHeight(9);
    obj.layout78:setName("layout78");

    obj.checkBox22 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox22:setParent(obj.layout78);
    obj.checkBox22:setLeft(0);
    obj.checkBox22:setTop(0);
    obj.checkBox22:setWidth(9);
    obj.checkBox22:setHeight(10);
    obj.checkBox22:setField("Caixa_de_seleção_168");
    obj.checkBox22:setName("checkBox22");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.rectangle1);
    obj.layout79:setLeft(675);
    obj.layout79:setTop(323);
    obj.layout79:setWidth(6);
    obj.layout79:setHeight(7);
    obj.layout79:setName("layout79");

    obj.checkBox23 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox23:setParent(obj.layout79);
    obj.checkBox23:setLeft(0);
    obj.checkBox23:setTop(0);
    obj.checkBox23:setWidth(6);
    obj.checkBox23:setHeight(8);
    obj.checkBox23:setField("Caixa_de_seleção_169");
    obj.checkBox23:setName("checkBox23");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.rectangle1);
    obj.layout80:setLeft(563);
    obj.layout80:setTop(327);
    obj.layout80:setWidth(9);
    obj.layout80:setHeight(9);
    obj.layout80:setName("layout80");

    obj.checkBox24 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox24:setParent(obj.layout80);
    obj.checkBox24:setLeft(0);
    obj.checkBox24:setTop(0);
    obj.checkBox24:setWidth(9);
    obj.checkBox24:setHeight(10);
    obj.checkBox24:setField("Caixa_de_seleção_170");
    obj.checkBox24:setName("checkBox24");

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.rectangle1);
    obj.layout81:setLeft(628);
    obj.layout81:setTop(327);
    obj.layout81:setWidth(9);
    obj.layout81:setHeight(9);
    obj.layout81:setName("layout81");

    obj.checkBox25 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox25:setParent(obj.layout81);
    obj.checkBox25:setLeft(0);
    obj.checkBox25:setTop(0);
    obj.checkBox25:setWidth(9);
    obj.checkBox25:setHeight(10);
    obj.checkBox25:setField("Caixa_de_seleção_171");
    obj.checkBox25:setName("checkBox25");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.rectangle1);
    obj.layout82:setLeft(548);
    obj.layout82:setTop(424);
    obj.layout82:setWidth(13);
    obj.layout82:setHeight(15);
    obj.layout82:setName("layout82");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout82);
    obj.edit51:setTransparent(true);
    obj.edit51:setFontSize(9);
    obj.edit51:setFontColor("#000000");
    obj.edit51:setVertTextAlign("center");
    obj.edit51:setLeft(0);
    obj.edit51:setTop(0);
    obj.edit51:setWidth(13);
    obj.edit51:setHeight(16);
    obj.edit51:setField("vitalidade");
    obj.edit51:setName("edit51");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.rectangle1);
    obj.layout83:setLeft(548);
    obj.layout83:setTop(448);
    obj.layout83:setWidth(13);
    obj.layout83:setHeight(15);
    obj.layout83:setName("layout83");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout83);
    obj.edit52:setTransparent(true);
    obj.edit52:setFontSize(9);
    obj.edit52:setFontColor("#000000");
    obj.edit52:setVertTextAlign("center");
    obj.edit52:setLeft(0);
    obj.edit52:setTop(0);
    obj.edit52:setWidth(13);
    obj.edit52:setHeight(16);
    obj.edit52:setField("deter");
    obj.edit52:setName("edit52");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.rectangle1);
    obj.layout84:setLeft(548);
    obj.layout84:setTop(475);
    obj.layout84:setWidth(13);
    obj.layout84:setHeight(15);
    obj.layout84:setName("layout84");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout84);
    obj.edit53:setTransparent(true);
    obj.edit53:setFontSize(9);
    obj.edit53:setFontColor("#000000");
    obj.edit53:setVertTextAlign("center");
    obj.edit53:setLeft(0);
    obj.edit53:setTop(0);
    obj.edit53:setWidth(13);
    obj.edit53:setHeight(16);
    obj.edit53:setField("rela");
    obj.edit53:setName("edit53");

    obj.layout85 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.rectangle1);
    obj.layout85:setLeft(548);
    obj.layout85:setTop(500);
    obj.layout85:setWidth(13);
    obj.layout85:setHeight(15);
    obj.layout85:setName("layout85");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout85);
    obj.edit54:setTransparent(true);
    obj.edit54:setFontSize(9);
    obj.edit54:setFontColor("#000000");
    obj.edit54:setVertTextAlign("center");
    obj.edit54:setLeft(0);
    obj.edit54:setTop(0);
    obj.edit54:setWidth(13);
    obj.edit54:setHeight(16);
    obj.edit54:setField("esp");
    obj.edit54:setName("edit54");

    obj.layout86 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.rectangle1);
    obj.layout86:setLeft(548);
    obj.layout86:setTop(526);
    obj.layout86:setWidth(13);
    obj.layout86:setHeight(15);
    obj.layout86:setName("layout86");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout86);
    obj.edit55:setTransparent(true);
    obj.edit55:setFontSize(9);
    obj.edit55:setFontColor("#000000");
    obj.edit55:setVertTextAlign("center");
    obj.edit55:setLeft(0);
    obj.edit55:setTop(0);
    obj.edit55:setWidth(13);
    obj.edit55:setHeight(16);
    obj.edit55:setField("rec");
    obj.edit55:setName("edit55");

    obj.layout87 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.rectangle1);
    obj.layout87:setLeft(584);
    obj.layout87:setTop(351);
    obj.layout87:setWidth(9);
    obj.layout87:setHeight(9);
    obj.layout87:setName("layout87");

    obj.checkBox26 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox26:setParent(obj.layout87);
    obj.checkBox26:setLeft(0);
    obj.checkBox26:setTop(0);
    obj.checkBox26:setWidth(9);
    obj.checkBox26:setHeight(10);
    obj.checkBox26:setField("Caixa_de_seleção_184");
    obj.checkBox26:setName("checkBox26");

    obj.layout88 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.rectangle1);
    obj.layout88:setLeft(606);
    obj.layout88:setTop(351);
    obj.layout88:setWidth(9);
    obj.layout88:setHeight(9);
    obj.layout88:setName("layout88");

    obj.checkBox27 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox27:setParent(obj.layout88);
    obj.checkBox27:setLeft(0);
    obj.checkBox27:setTop(0);
    obj.checkBox27:setWidth(9);
    obj.checkBox27:setHeight(10);
    obj.checkBox27:setField("Caixa_de_seleção_185");
    obj.checkBox27:setName("checkBox27");

    obj.layout89 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout89:setParent(obj.rectangle1);
    obj.layout89:setLeft(649);
    obj.layout89:setTop(351);
    obj.layout89:setWidth(9);
    obj.layout89:setHeight(9);
    obj.layout89:setName("layout89");

    obj.checkBox28 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox28:setParent(obj.layout89);
    obj.checkBox28:setLeft(0);
    obj.checkBox28:setTop(0);
    obj.checkBox28:setWidth(9);
    obj.checkBox28:setHeight(10);
    obj.checkBox28:setField("Caixa_de_seleção_186");
    obj.checkBox28:setName("checkBox28");

    obj.layout90 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout90:setParent(obj.rectangle1);
    obj.layout90:setLeft(675);
    obj.layout90:setTop(348);
    obj.layout90:setWidth(6);
    obj.layout90:setHeight(7);
    obj.layout90:setName("layout90");

    obj.checkBox29 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox29:setParent(obj.layout90);
    obj.checkBox29:setLeft(0);
    obj.checkBox29:setTop(0);
    obj.checkBox29:setWidth(6);
    obj.checkBox29:setHeight(8);
    obj.checkBox29:setField("Caixa_de_seleção_187");
    obj.checkBox29:setName("checkBox29");

    obj.layout91 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout91:setParent(obj.rectangle1);
    obj.layout91:setLeft(563);
    obj.layout91:setTop(351);
    obj.layout91:setWidth(9);
    obj.layout91:setHeight(9);
    obj.layout91:setName("layout91");

    obj.checkBox30 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox30:setParent(obj.layout91);
    obj.checkBox30:setLeft(0);
    obj.checkBox30:setTop(0);
    obj.checkBox30:setWidth(9);
    obj.checkBox30:setHeight(10);
    obj.checkBox30:setField("Caixa_de_seleção_188");
    obj.checkBox30:setName("checkBox30");

    obj.layout92 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout92:setParent(obj.rectangle1);
    obj.layout92:setLeft(628);
    obj.layout92:setTop(351);
    obj.layout92:setWidth(9);
    obj.layout92:setHeight(9);
    obj.layout92:setName("layout92");

    obj.checkBox31 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox31:setParent(obj.layout92);
    obj.checkBox31:setLeft(0);
    obj.checkBox31:setTop(0);
    obj.checkBox31:setWidth(9);
    obj.checkBox31:setHeight(10);
    obj.checkBox31:setField("Caixa_de_seleção_189");
    obj.checkBox31:setName("checkBox31");

    obj.layout93 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout93:setParent(obj.rectangle1);
    obj.layout93:setLeft(584);
    obj.layout93:setTop(374);
    obj.layout93:setWidth(9);
    obj.layout93:setHeight(9);
    obj.layout93:setName("layout93");

    obj.checkBox32 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox32:setParent(obj.layout93);
    obj.checkBox32:setLeft(0);
    obj.checkBox32:setTop(0);
    obj.checkBox32:setWidth(9);
    obj.checkBox32:setHeight(10);
    obj.checkBox32:setField("Caixa_de_seleção_190");
    obj.checkBox32:setName("checkBox32");

    obj.layout94 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout94:setParent(obj.rectangle1);
    obj.layout94:setLeft(606);
    obj.layout94:setTop(374);
    obj.layout94:setWidth(9);
    obj.layout94:setHeight(9);
    obj.layout94:setName("layout94");

    obj.checkBox33 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox33:setParent(obj.layout94);
    obj.checkBox33:setLeft(0);
    obj.checkBox33:setTop(0);
    obj.checkBox33:setWidth(9);
    obj.checkBox33:setHeight(10);
    obj.checkBox33:setField("Caixa_de_seleção_191");
    obj.checkBox33:setName("checkBox33");

    obj.layout95 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout95:setParent(obj.rectangle1);
    obj.layout95:setLeft(649);
    obj.layout95:setTop(374);
    obj.layout95:setWidth(9);
    obj.layout95:setHeight(9);
    obj.layout95:setName("layout95");

    obj.checkBox34 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox34:setParent(obj.layout95);
    obj.checkBox34:setLeft(0);
    obj.checkBox34:setTop(0);
    obj.checkBox34:setWidth(9);
    obj.checkBox34:setHeight(10);
    obj.checkBox34:setField("Caixa_de_seleção_192");
    obj.checkBox34:setName("checkBox34");

    obj.layout96 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout96:setParent(obj.rectangle1);
    obj.layout96:setLeft(675);
    obj.layout96:setTop(371);
    obj.layout96:setWidth(6);
    obj.layout96:setHeight(7);
    obj.layout96:setName("layout96");

    obj.checkBox35 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox35:setParent(obj.layout96);
    obj.checkBox35:setLeft(0);
    obj.checkBox35:setTop(0);
    obj.checkBox35:setWidth(6);
    obj.checkBox35:setHeight(8);
    obj.checkBox35:setField("Caixa_de_seleção_193");
    obj.checkBox35:setName("checkBox35");

    obj.layout97 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout97:setParent(obj.rectangle1);
    obj.layout97:setLeft(563);
    obj.layout97:setTop(374);
    obj.layout97:setWidth(9);
    obj.layout97:setHeight(9);
    obj.layout97:setName("layout97");

    obj.checkBox36 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox36:setParent(obj.layout97);
    obj.checkBox36:setLeft(0);
    obj.checkBox36:setTop(0);
    obj.checkBox36:setWidth(9);
    obj.checkBox36:setHeight(10);
    obj.checkBox36:setField("Caixa_de_seleção_194");
    obj.checkBox36:setName("checkBox36");

    obj.layout98 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout98:setParent(obj.rectangle1);
    obj.layout98:setLeft(628);
    obj.layout98:setTop(374);
    obj.layout98:setWidth(9);
    obj.layout98:setHeight(9);
    obj.layout98:setName("layout98");

    obj.checkBox37 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox37:setParent(obj.layout98);
    obj.checkBox37:setLeft(0);
    obj.checkBox37:setTop(0);
    obj.checkBox37:setWidth(9);
    obj.checkBox37:setHeight(10);
    obj.checkBox37:setField("Caixa_de_seleção_195");
    obj.checkBox37:setName("checkBox37");

    obj.layout99 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout99:setParent(obj.rectangle1);
    obj.layout99:setLeft(595);
    obj.layout99:setTop(451);
    obj.layout99:setWidth(9);
    obj.layout99:setHeight(9);
    obj.layout99:setName("layout99");

    obj.checkBox38 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox38:setParent(obj.layout99);
    obj.checkBox38:setLeft(0);
    obj.checkBox38:setTop(0);
    obj.checkBox38:setWidth(9);
    obj.checkBox38:setHeight(10);
    obj.checkBox38:setField("Caixa_de_seleção_196");
    obj.checkBox38:setName("checkBox38");

    obj.layout100 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout100:setParent(obj.rectangle1);
    obj.layout100:setLeft(617);
    obj.layout100:setTop(451);
    obj.layout100:setWidth(9);
    obj.layout100:setHeight(9);
    obj.layout100:setName("layout100");

    obj.checkBox39 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox39:setParent(obj.layout100);
    obj.checkBox39:setLeft(0);
    obj.checkBox39:setTop(0);
    obj.checkBox39:setWidth(9);
    obj.checkBox39:setHeight(10);
    obj.checkBox39:setField("Caixa_de_seleção_197");
    obj.checkBox39:setName("checkBox39");

    obj.layout101 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout101:setParent(obj.rectangle1);
    obj.layout101:setLeft(660);
    obj.layout101:setTop(451);
    obj.layout101:setWidth(9);
    obj.layout101:setHeight(9);
    obj.layout101:setName("layout101");

    obj.checkBox40 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox40:setParent(obj.layout101);
    obj.checkBox40:setLeft(0);
    obj.checkBox40:setTop(0);
    obj.checkBox40:setWidth(9);
    obj.checkBox40:setHeight(10);
    obj.checkBox40:setField("Caixa_de_seleção_198");
    obj.checkBox40:setName("checkBox40");

    obj.layout102 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout102:setParent(obj.rectangle1);
    obj.layout102:setLeft(682);
    obj.layout102:setTop(451);
    obj.layout102:setWidth(9);
    obj.layout102:setHeight(9);
    obj.layout102:setName("layout102");

    obj.checkBox41 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox41:setParent(obj.layout102);
    obj.checkBox41:setLeft(0);
    obj.checkBox41:setTop(0);
    obj.checkBox41:setWidth(9);
    obj.checkBox41:setHeight(10);
    obj.checkBox41:setField("Caixa_de_seleção_199");
    obj.checkBox41:setName("checkBox41");

    obj.layout103 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout103:setParent(obj.rectangle1);
    obj.layout103:setLeft(597);
    obj.layout103:setTop(462);
    obj.layout103:setWidth(5);
    obj.layout103:setHeight(6);
    obj.layout103:setName("layout103");

    obj.checkBox42 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox42:setParent(obj.layout103);
    obj.checkBox42:setLeft(0);
    obj.checkBox42:setTop(0);
    obj.checkBox42:setWidth(5);
    obj.checkBox42:setHeight(7);
    obj.checkBox42:setField("Caixa_de_seleção_200");
    obj.checkBox42:setName("checkBox42");

    obj.layout104 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout104:setParent(obj.rectangle1);
    obj.layout104:setLeft(618);
    obj.layout104:setTop(462);
    obj.layout104:setWidth(5);
    obj.layout104:setHeight(6);
    obj.layout104:setName("layout104");

    obj.checkBox43 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox43:setParent(obj.layout104);
    obj.checkBox43:setLeft(0);
    obj.checkBox43:setTop(0);
    obj.checkBox43:setWidth(5);
    obj.checkBox43:setHeight(7);
    obj.checkBox43:setField("Caixa_de_seleção_201");
    obj.checkBox43:setName("checkBox43");

    obj.layout105 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout105:setParent(obj.rectangle1);
    obj.layout105:setLeft(662);
    obj.layout105:setTop(462);
    obj.layout105:setWidth(5);
    obj.layout105:setHeight(6);
    obj.layout105:setName("layout105");

    obj.checkBox44 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox44:setParent(obj.layout105);
    obj.checkBox44:setLeft(0);
    obj.checkBox44:setTop(0);
    obj.checkBox44:setWidth(5);
    obj.checkBox44:setHeight(7);
    obj.checkBox44:setField("Caixa_de_seleção_202");
    obj.checkBox44:setName("checkBox44");

    obj.layout106 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout106:setParent(obj.rectangle1);
    obj.layout106:setLeft(684);
    obj.layout106:setTop(462);
    obj.layout106:setWidth(5);
    obj.layout106:setHeight(6);
    obj.layout106:setName("layout106");

    obj.checkBox45 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox45:setParent(obj.layout106);
    obj.checkBox45:setLeft(0);
    obj.checkBox45:setTop(0);
    obj.checkBox45:setWidth(5);
    obj.checkBox45:setHeight(7);
    obj.checkBox45:setField("Caixa_de_seleção_203");
    obj.checkBox45:setName("checkBox45");

    obj.layout107 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout107:setParent(obj.rectangle1);
    obj.layout107:setLeft(574);
    obj.layout107:setTop(451);
    obj.layout107:setWidth(9);
    obj.layout107:setHeight(9);
    obj.layout107:setName("layout107");

    obj.checkBox46 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox46:setParent(obj.layout107);
    obj.checkBox46:setLeft(0);
    obj.checkBox46:setTop(0);
    obj.checkBox46:setWidth(9);
    obj.checkBox46:setHeight(10);
    obj.checkBox46:setField("Caixa_de_seleção_204");
    obj.checkBox46:setName("checkBox46");

    obj.layout108 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout108:setParent(obj.rectangle1);
    obj.layout108:setLeft(639);
    obj.layout108:setTop(451);
    obj.layout108:setWidth(9);
    obj.layout108:setHeight(9);
    obj.layout108:setName("layout108");

    obj.checkBox47 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox47:setParent(obj.layout108);
    obj.checkBox47:setLeft(0);
    obj.checkBox47:setTop(0);
    obj.checkBox47:setWidth(9);
    obj.checkBox47:setHeight(10);
    obj.checkBox47:setField("Caixa_de_seleção_205");
    obj.checkBox47:setName("checkBox47");

    obj.layout109 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout109:setParent(obj.rectangle1);
    obj.layout109:setLeft(576);
    obj.layout109:setTop(462);
    obj.layout109:setWidth(5);
    obj.layout109:setHeight(6);
    obj.layout109:setName("layout109");

    obj.checkBox48 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox48:setParent(obj.layout109);
    obj.checkBox48:setLeft(0);
    obj.checkBox48:setTop(0);
    obj.checkBox48:setWidth(5);
    obj.checkBox48:setHeight(7);
    obj.checkBox48:setField("Caixa_de_seleção_206");
    obj.checkBox48:setName("checkBox48");

    obj.layout110 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout110:setParent(obj.rectangle1);
    obj.layout110:setLeft(641);
    obj.layout110:setTop(462);
    obj.layout110:setWidth(5);
    obj.layout110:setHeight(6);
    obj.layout110:setName("layout110");

    obj.checkBox49 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox49:setParent(obj.layout110);
    obj.checkBox49:setLeft(0);
    obj.checkBox49:setTop(0);
    obj.checkBox49:setWidth(5);
    obj.checkBox49:setHeight(7);
    obj.checkBox49:setField("Caixa_de_seleção_207");
    obj.checkBox49:setName("checkBox49");

    obj.layout111 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout111:setParent(obj.rectangle1);
    obj.layout111:setLeft(595);
    obj.layout111:setTop(476);
    obj.layout111:setWidth(9);
    obj.layout111:setHeight(9);
    obj.layout111:setName("layout111");

    obj.checkBox50 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox50:setParent(obj.layout111);
    obj.checkBox50:setLeft(0);
    obj.checkBox50:setTop(0);
    obj.checkBox50:setWidth(9);
    obj.checkBox50:setHeight(10);
    obj.checkBox50:setField("Caixa_de_seleção_208");
    obj.checkBox50:setName("checkBox50");

    obj.layout112 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout112:setParent(obj.rectangle1);
    obj.layout112:setLeft(617);
    obj.layout112:setTop(476);
    obj.layout112:setWidth(9);
    obj.layout112:setHeight(9);
    obj.layout112:setName("layout112");

    obj.checkBox51 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox51:setParent(obj.layout112);
    obj.checkBox51:setLeft(0);
    obj.checkBox51:setTop(0);
    obj.checkBox51:setWidth(9);
    obj.checkBox51:setHeight(10);
    obj.checkBox51:setField("Caixa_de_seleção_209");
    obj.checkBox51:setName("checkBox51");

    obj.layout113 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout113:setParent(obj.rectangle1);
    obj.layout113:setLeft(660);
    obj.layout113:setTop(476);
    obj.layout113:setWidth(9);
    obj.layout113:setHeight(9);
    obj.layout113:setName("layout113");

    obj.checkBox52 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox52:setParent(obj.layout113);
    obj.checkBox52:setLeft(0);
    obj.checkBox52:setTop(0);
    obj.checkBox52:setWidth(9);
    obj.checkBox52:setHeight(10);
    obj.checkBox52:setField("Caixa_de_seleção_210");
    obj.checkBox52:setName("checkBox52");

    obj.layout114 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout114:setParent(obj.rectangle1);
    obj.layout114:setLeft(682);
    obj.layout114:setTop(476);
    obj.layout114:setWidth(9);
    obj.layout114:setHeight(9);
    obj.layout114:setName("layout114");

    obj.checkBox53 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox53:setParent(obj.layout114);
    obj.checkBox53:setLeft(0);
    obj.checkBox53:setTop(0);
    obj.checkBox53:setWidth(9);
    obj.checkBox53:setHeight(10);
    obj.checkBox53:setField("Caixa_de_seleção_211");
    obj.checkBox53:setName("checkBox53");

    obj.layout115 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout115:setParent(obj.rectangle1);
    obj.layout115:setLeft(597);
    obj.layout115:setTop(487);
    obj.layout115:setWidth(5);
    obj.layout115:setHeight(6);
    obj.layout115:setName("layout115");

    obj.checkBox54 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox54:setParent(obj.layout115);
    obj.checkBox54:setLeft(0);
    obj.checkBox54:setTop(0);
    obj.checkBox54:setWidth(5);
    obj.checkBox54:setHeight(7);
    obj.checkBox54:setField("Caixa_de_seleção_2010");
    obj.checkBox54:setName("checkBox54");

    obj.layout116 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout116:setParent(obj.rectangle1);
    obj.layout116:setLeft(618);
    obj.layout116:setTop(487);
    obj.layout116:setWidth(5);
    obj.layout116:setHeight(6);
    obj.layout116:setName("layout116");

    obj.checkBox55 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox55:setParent(obj.layout116);
    obj.checkBox55:setLeft(0);
    obj.checkBox55:setTop(0);
    obj.checkBox55:setWidth(5);
    obj.checkBox55:setHeight(7);
    obj.checkBox55:setField("Caixa_de_seleção_2011");
    obj.checkBox55:setName("checkBox55");

    obj.layout117 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout117:setParent(obj.rectangle1);
    obj.layout117:setLeft(662);
    obj.layout117:setTop(487);
    obj.layout117:setWidth(5);
    obj.layout117:setHeight(6);
    obj.layout117:setName("layout117");

    obj.checkBox56 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox56:setParent(obj.layout117);
    obj.checkBox56:setLeft(0);
    obj.checkBox56:setTop(0);
    obj.checkBox56:setWidth(5);
    obj.checkBox56:setHeight(7);
    obj.checkBox56:setField("Caixa_de_seleção_2012");
    obj.checkBox56:setName("checkBox56");

    obj.layout118 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout118:setParent(obj.rectangle1);
    obj.layout118:setLeft(684);
    obj.layout118:setTop(487);
    obj.layout118:setWidth(5);
    obj.layout118:setHeight(6);
    obj.layout118:setName("layout118");

    obj.checkBox57 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox57:setParent(obj.layout118);
    obj.checkBox57:setLeft(0);
    obj.checkBox57:setTop(0);
    obj.checkBox57:setWidth(5);
    obj.checkBox57:setHeight(7);
    obj.checkBox57:setField("Caixa_de_seleção_2013");
    obj.checkBox57:setName("checkBox57");

    obj.layout119 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout119:setParent(obj.rectangle1);
    obj.layout119:setLeft(574);
    obj.layout119:setTop(476);
    obj.layout119:setWidth(9);
    obj.layout119:setHeight(9);
    obj.layout119:setName("layout119");

    obj.checkBox58 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox58:setParent(obj.layout119);
    obj.checkBox58:setLeft(0);
    obj.checkBox58:setTop(0);
    obj.checkBox58:setWidth(9);
    obj.checkBox58:setHeight(10);
    obj.checkBox58:setField("Caixa_de_seleção_2014");
    obj.checkBox58:setName("checkBox58");

    obj.layout120 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout120:setParent(obj.rectangle1);
    obj.layout120:setLeft(639);
    obj.layout120:setTop(476);
    obj.layout120:setWidth(9);
    obj.layout120:setHeight(9);
    obj.layout120:setName("layout120");

    obj.checkBox59 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox59:setParent(obj.layout120);
    obj.checkBox59:setLeft(0);
    obj.checkBox59:setTop(0);
    obj.checkBox59:setWidth(9);
    obj.checkBox59:setHeight(10);
    obj.checkBox59:setField("Caixa_de_seleção_2015");
    obj.checkBox59:setName("checkBox59");

    obj.layout121 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout121:setParent(obj.rectangle1);
    obj.layout121:setLeft(576);
    obj.layout121:setTop(487);
    obj.layout121:setWidth(5);
    obj.layout121:setHeight(6);
    obj.layout121:setName("layout121");

    obj.checkBox60 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox60:setParent(obj.layout121);
    obj.checkBox60:setLeft(0);
    obj.checkBox60:setTop(0);
    obj.checkBox60:setWidth(5);
    obj.checkBox60:setHeight(7);
    obj.checkBox60:setField("Caixa_de_seleção_2016");
    obj.checkBox60:setName("checkBox60");

    obj.layout122 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout122:setParent(obj.rectangle1);
    obj.layout122:setLeft(641);
    obj.layout122:setTop(487);
    obj.layout122:setWidth(5);
    obj.layout122:setHeight(6);
    obj.layout122:setName("layout122");

    obj.checkBox61 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox61:setParent(obj.layout122);
    obj.checkBox61:setLeft(0);
    obj.checkBox61:setTop(0);
    obj.checkBox61:setWidth(5);
    obj.checkBox61:setHeight(7);
    obj.checkBox61:setField("Caixa_de_seleção_2017");
    obj.checkBox61:setName("checkBox61");

    obj.layout123 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout123:setParent(obj.rectangle1);
    obj.layout123:setLeft(595);
    obj.layout123:setTop(502);
    obj.layout123:setWidth(9);
    obj.layout123:setHeight(9);
    obj.layout123:setName("layout123");

    obj.checkBox62 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox62:setParent(obj.layout123);
    obj.checkBox62:setLeft(0);
    obj.checkBox62:setTop(0);
    obj.checkBox62:setWidth(9);
    obj.checkBox62:setHeight(10);
    obj.checkBox62:setField("Caixa_de_seleção_2018");
    obj.checkBox62:setName("checkBox62");

    obj.layout124 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout124:setParent(obj.rectangle1);
    obj.layout124:setLeft(617);
    obj.layout124:setTop(502);
    obj.layout124:setWidth(9);
    obj.layout124:setHeight(9);
    obj.layout124:setName("layout124");

    obj.checkBox63 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox63:setParent(obj.layout124);
    obj.checkBox63:setLeft(0);
    obj.checkBox63:setTop(0);
    obj.checkBox63:setWidth(9);
    obj.checkBox63:setHeight(10);
    obj.checkBox63:setField("Caixa_de_seleção_2019");
    obj.checkBox63:setName("checkBox63");

    obj.layout125 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout125:setParent(obj.rectangle1);
    obj.layout125:setLeft(660);
    obj.layout125:setTop(502);
    obj.layout125:setWidth(9);
    obj.layout125:setHeight(9);
    obj.layout125:setName("layout125");

    obj.checkBox64 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox64:setParent(obj.layout125);
    obj.checkBox64:setLeft(0);
    obj.checkBox64:setTop(0);
    obj.checkBox64:setWidth(9);
    obj.checkBox64:setHeight(10);
    obj.checkBox64:setField("Caixa_de_seleção_212");
    obj.checkBox64:setName("checkBox64");

    obj.layout126 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout126:setParent(obj.rectangle1);
    obj.layout126:setLeft(682);
    obj.layout126:setTop(502);
    obj.layout126:setWidth(9);
    obj.layout126:setHeight(9);
    obj.layout126:setName("layout126");

    obj.checkBox65 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox65:setParent(obj.layout126);
    obj.checkBox65:setLeft(0);
    obj.checkBox65:setTop(0);
    obj.checkBox65:setWidth(9);
    obj.checkBox65:setHeight(10);
    obj.checkBox65:setField("Caixa_de_seleção_213");
    obj.checkBox65:setName("checkBox65");

    obj.layout127 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout127:setParent(obj.rectangle1);
    obj.layout127:setLeft(597);
    obj.layout127:setTop(513);
    obj.layout127:setWidth(5);
    obj.layout127:setHeight(6);
    obj.layout127:setName("layout127");

    obj.checkBox66 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox66:setParent(obj.layout127);
    obj.checkBox66:setLeft(0);
    obj.checkBox66:setTop(0);
    obj.checkBox66:setWidth(5);
    obj.checkBox66:setHeight(7);
    obj.checkBox66:setField("Caixa_de_seleção_2020");
    obj.checkBox66:setName("checkBox66");

    obj.layout128 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout128:setParent(obj.rectangle1);
    obj.layout128:setLeft(618);
    obj.layout128:setTop(513);
    obj.layout128:setWidth(5);
    obj.layout128:setHeight(6);
    obj.layout128:setName("layout128");

    obj.checkBox67 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox67:setParent(obj.layout128);
    obj.checkBox67:setLeft(0);
    obj.checkBox67:setTop(0);
    obj.checkBox67:setWidth(5);
    obj.checkBox67:setHeight(7);
    obj.checkBox67:setField("Caixa_de_seleção_2021");
    obj.checkBox67:setName("checkBox67");

    obj.layout129 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout129:setParent(obj.rectangle1);
    obj.layout129:setLeft(662);
    obj.layout129:setTop(513);
    obj.layout129:setWidth(5);
    obj.layout129:setHeight(6);
    obj.layout129:setName("layout129");

    obj.checkBox68 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox68:setParent(obj.layout129);
    obj.checkBox68:setLeft(0);
    obj.checkBox68:setTop(0);
    obj.checkBox68:setWidth(5);
    obj.checkBox68:setHeight(7);
    obj.checkBox68:setField("Caixa_de_seleção_2022");
    obj.checkBox68:setName("checkBox68");

    obj.layout130 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout130:setParent(obj.rectangle1);
    obj.layout130:setLeft(684);
    obj.layout130:setTop(513);
    obj.layout130:setWidth(5);
    obj.layout130:setHeight(6);
    obj.layout130:setName("layout130");

    obj.checkBox69 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox69:setParent(obj.layout130);
    obj.checkBox69:setLeft(0);
    obj.checkBox69:setTop(0);
    obj.checkBox69:setWidth(5);
    obj.checkBox69:setHeight(7);
    obj.checkBox69:setField("Caixa_de_seleção_2023");
    obj.checkBox69:setName("checkBox69");

    obj.layout131 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout131:setParent(obj.rectangle1);
    obj.layout131:setLeft(574);
    obj.layout131:setTop(502);
    obj.layout131:setWidth(9);
    obj.layout131:setHeight(9);
    obj.layout131:setName("layout131");

    obj.checkBox70 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox70:setParent(obj.layout131);
    obj.checkBox70:setLeft(0);
    obj.checkBox70:setTop(0);
    obj.checkBox70:setWidth(9);
    obj.checkBox70:setHeight(10);
    obj.checkBox70:setField("Caixa_de_seleção_2024");
    obj.checkBox70:setName("checkBox70");

    obj.layout132 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout132:setParent(obj.rectangle1);
    obj.layout132:setLeft(639);
    obj.layout132:setTop(502);
    obj.layout132:setWidth(9);
    obj.layout132:setHeight(9);
    obj.layout132:setName("layout132");

    obj.checkBox71 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox71:setParent(obj.layout132);
    obj.checkBox71:setLeft(0);
    obj.checkBox71:setTop(0);
    obj.checkBox71:setWidth(9);
    obj.checkBox71:setHeight(10);
    obj.checkBox71:setField("Caixa_de_seleção_2025");
    obj.checkBox71:setName("checkBox71");

    obj.layout133 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout133:setParent(obj.rectangle1);
    obj.layout133:setLeft(576);
    obj.layout133:setTop(513);
    obj.layout133:setWidth(5);
    obj.layout133:setHeight(6);
    obj.layout133:setName("layout133");

    obj.checkBox72 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox72:setParent(obj.layout133);
    obj.checkBox72:setLeft(0);
    obj.checkBox72:setTop(0);
    obj.checkBox72:setWidth(5);
    obj.checkBox72:setHeight(7);
    obj.checkBox72:setField("Caixa_de_seleção_2026");
    obj.checkBox72:setName("checkBox72");

    obj.layout134 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout134:setParent(obj.rectangle1);
    obj.layout134:setLeft(641);
    obj.layout134:setTop(513);
    obj.layout134:setWidth(5);
    obj.layout134:setHeight(6);
    obj.layout134:setName("layout134");

    obj.checkBox73 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox73:setParent(obj.layout134);
    obj.checkBox73:setLeft(0);
    obj.checkBox73:setTop(0);
    obj.checkBox73:setWidth(5);
    obj.checkBox73:setHeight(7);
    obj.checkBox73:setField("Caixa_de_seleção_2027");
    obj.checkBox73:setName("checkBox73");

    obj.layout135 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout135:setParent(obj.rectangle1);
    obj.layout135:setLeft(595);
    obj.layout135:setTop(528);
    obj.layout135:setWidth(9);
    obj.layout135:setHeight(9);
    obj.layout135:setName("layout135");

    obj.checkBox74 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox74:setParent(obj.layout135);
    obj.checkBox74:setLeft(0);
    obj.checkBox74:setTop(0);
    obj.checkBox74:setWidth(9);
    obj.checkBox74:setHeight(10);
    obj.checkBox74:setField("Caixa_de_seleção_2028");
    obj.checkBox74:setName("checkBox74");

    obj.layout136 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout136:setParent(obj.rectangle1);
    obj.layout136:setLeft(617);
    obj.layout136:setTop(528);
    obj.layout136:setWidth(9);
    obj.layout136:setHeight(9);
    obj.layout136:setName("layout136");

    obj.checkBox75 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox75:setParent(obj.layout136);
    obj.checkBox75:setLeft(0);
    obj.checkBox75:setTop(0);
    obj.checkBox75:setWidth(9);
    obj.checkBox75:setHeight(10);
    obj.checkBox75:setField("Caixa_de_seleção_2029");
    obj.checkBox75:setName("checkBox75");

    obj.layout137 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout137:setParent(obj.rectangle1);
    obj.layout137:setLeft(660);
    obj.layout137:setTop(528);
    obj.layout137:setWidth(9);
    obj.layout137:setHeight(9);
    obj.layout137:setName("layout137");

    obj.checkBox76 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox76:setParent(obj.layout137);
    obj.checkBox76:setLeft(0);
    obj.checkBox76:setTop(0);
    obj.checkBox76:setWidth(9);
    obj.checkBox76:setHeight(10);
    obj.checkBox76:setField("Caixa_de_seleção_214");
    obj.checkBox76:setName("checkBox76");

    obj.layout138 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout138:setParent(obj.rectangle1);
    obj.layout138:setLeft(682);
    obj.layout138:setTop(528);
    obj.layout138:setWidth(9);
    obj.layout138:setHeight(9);
    obj.layout138:setName("layout138");

    obj.checkBox77 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox77:setParent(obj.layout138);
    obj.checkBox77:setLeft(0);
    obj.checkBox77:setTop(0);
    obj.checkBox77:setWidth(9);
    obj.checkBox77:setHeight(10);
    obj.checkBox77:setField("Caixa_de_seleção_215");
    obj.checkBox77:setName("checkBox77");

    obj.layout139 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout139:setParent(obj.rectangle1);
    obj.layout139:setLeft(597);
    obj.layout139:setTop(539);
    obj.layout139:setWidth(5);
    obj.layout139:setHeight(6);
    obj.layout139:setName("layout139");

    obj.checkBox78 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox78:setParent(obj.layout139);
    obj.checkBox78:setLeft(0);
    obj.checkBox78:setTop(0);
    obj.checkBox78:setWidth(5);
    obj.checkBox78:setHeight(7);
    obj.checkBox78:setField("Caixa_de_seleção_2030");
    obj.checkBox78:setName("checkBox78");

    obj.layout140 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout140:setParent(obj.rectangle1);
    obj.layout140:setLeft(618);
    obj.layout140:setTop(539);
    obj.layout140:setWidth(5);
    obj.layout140:setHeight(6);
    obj.layout140:setName("layout140");

    obj.checkBox79 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox79:setParent(obj.layout140);
    obj.checkBox79:setLeft(0);
    obj.checkBox79:setTop(0);
    obj.checkBox79:setWidth(5);
    obj.checkBox79:setHeight(7);
    obj.checkBox79:setField("Caixa_de_seleção_2031");
    obj.checkBox79:setName("checkBox79");

    obj.layout141 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout141:setParent(obj.rectangle1);
    obj.layout141:setLeft(662);
    obj.layout141:setTop(539);
    obj.layout141:setWidth(5);
    obj.layout141:setHeight(6);
    obj.layout141:setName("layout141");

    obj.checkBox80 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox80:setParent(obj.layout141);
    obj.checkBox80:setLeft(0);
    obj.checkBox80:setTop(0);
    obj.checkBox80:setWidth(5);
    obj.checkBox80:setHeight(7);
    obj.checkBox80:setField("Caixa_de_seleção_2032");
    obj.checkBox80:setName("checkBox80");

    obj.layout142 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout142:setParent(obj.rectangle1);
    obj.layout142:setLeft(684);
    obj.layout142:setTop(539);
    obj.layout142:setWidth(5);
    obj.layout142:setHeight(6);
    obj.layout142:setName("layout142");

    obj.checkBox81 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox81:setParent(obj.layout142);
    obj.checkBox81:setLeft(0);
    obj.checkBox81:setTop(0);
    obj.checkBox81:setWidth(5);
    obj.checkBox81:setHeight(7);
    obj.checkBox81:setField("Caixa_de_seleção_2033");
    obj.checkBox81:setName("checkBox81");

    obj.layout143 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout143:setParent(obj.rectangle1);
    obj.layout143:setLeft(574);
    obj.layout143:setTop(528);
    obj.layout143:setWidth(9);
    obj.layout143:setHeight(9);
    obj.layout143:setName("layout143");

    obj.checkBox82 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox82:setParent(obj.layout143);
    obj.checkBox82:setLeft(0);
    obj.checkBox82:setTop(0);
    obj.checkBox82:setWidth(9);
    obj.checkBox82:setHeight(10);
    obj.checkBox82:setField("Caixa_de_seleção_2034");
    obj.checkBox82:setName("checkBox82");

    obj.layout144 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout144:setParent(obj.rectangle1);
    obj.layout144:setLeft(639);
    obj.layout144:setTop(528);
    obj.layout144:setWidth(9);
    obj.layout144:setHeight(9);
    obj.layout144:setName("layout144");

    obj.checkBox83 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox83:setParent(obj.layout144);
    obj.checkBox83:setLeft(0);
    obj.checkBox83:setTop(0);
    obj.checkBox83:setWidth(9);
    obj.checkBox83:setHeight(10);
    obj.checkBox83:setField("Caixa_de_seleção_2035");
    obj.checkBox83:setName("checkBox83");

    obj.layout145 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout145:setParent(obj.rectangle1);
    obj.layout145:setLeft(576);
    obj.layout145:setTop(539);
    obj.layout145:setWidth(5);
    obj.layout145:setHeight(6);
    obj.layout145:setName("layout145");

    obj.checkBox84 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox84:setParent(obj.layout145);
    obj.checkBox84:setLeft(0);
    obj.checkBox84:setTop(0);
    obj.checkBox84:setWidth(5);
    obj.checkBox84:setHeight(7);
    obj.checkBox84:setField("Caixa_de_seleção_2036");
    obj.checkBox84:setName("checkBox84");

    obj.layout146 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout146:setParent(obj.rectangle1);
    obj.layout146:setLeft(641);
    obj.layout146:setTop(539);
    obj.layout146:setWidth(5);
    obj.layout146:setHeight(6);
    obj.layout146:setName("layout146");

    obj.checkBox85 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox85:setParent(obj.layout146);
    obj.checkBox85:setLeft(0);
    obj.checkBox85:setTop(0);
    obj.checkBox85:setWidth(5);
    obj.checkBox85:setHeight(7);
    obj.checkBox85:setField("Caixa_de_seleção_2037");
    obj.checkBox85:setName("checkBox85");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Verso");
    obj.tab2:setName("tab2");

    obj.frmFicha_As_Chaves_da_Torre2_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFicha_As_Chaves_da_Torre2_svg:setParent(obj.tab2);
    obj.frmFicha_As_Chaves_da_Torre2_svg:setName("frmFicha_As_Chaves_da_Torre2_svg");
    obj.frmFicha_As_Chaves_da_Torre2_svg:setAlign("client");
    obj.frmFicha_As_Chaves_da_Torre2_svg:setTheme("light");
    obj.frmFicha_As_Chaves_da_Torre2_svg:setMargins({top=1});

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.frmFicha_As_Chaves_da_Torre2_svg);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.scrollBox2);
    obj.rectangle2:setWidth(1221);
    obj.rectangle2:setHeight(863);
    obj.rectangle2:setColor("white");
    obj.rectangle2:setName("rectangle2");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.rectangle2);
    obj.image2:setLeft(0);
    obj.image2:setTop(0);
    obj.image2:setWidth(1221);
    obj.image2:setHeight(863);
    obj.image2:setSRC("/Ficha As Chaves da Torre/images/2.png");
    obj.image2:setStyle("stretch");
    obj.image2:setOptimize(true);
    obj.image2:setName("image2");

    obj.layout147 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout147:setParent(obj.rectangle2);
    obj.layout147:setLeft(78);
    obj.layout147:setTop(59);
    obj.layout147:setWidth(259);
    obj.layout147:setHeight(20);
    obj.layout147:setName("layout147");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout147);
    obj.edit56:setTransparent(true);
    obj.edit56:setFontSize(12.8);
    obj.edit56:setFontColor("#000000");
    obj.edit56:setVertTextAlign("center");
    obj.edit56:setLeft(0);
    obj.edit56:setTop(0);
    obj.edit56:setWidth(259);
    obj.edit56:setHeight(21);
    obj.edit56:setField("condoes_01");
    obj.edit56:setName("edit56");

    obj.layout148 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout148:setParent(obj.rectangle2);
    obj.layout148:setLeft(49);
    obj.layout148:setTop(89);
    obj.layout148:setWidth(289);
    obj.layout148:setHeight(20);
    obj.layout148:setName("layout148");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout148);
    obj.edit57:setTransparent(true);
    obj.edit57:setFontSize(12.8);
    obj.edit57:setFontColor("#000000");
    obj.edit57:setVertTextAlign("center");
    obj.edit57:setLeft(0);
    obj.edit57:setTop(0);
    obj.edit57:setWidth(289);
    obj.edit57:setHeight(21);
    obj.edit57:setField("condoes_02");
    obj.edit57:setName("edit57");

    obj.layout149 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout149:setParent(obj.rectangle2);
    obj.layout149:setLeft(49);
    obj.layout149:setTop(120);
    obj.layout149:setWidth(289);
    obj.layout149:setHeight(20);
    obj.layout149:setName("layout149");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout149);
    obj.edit58:setTransparent(true);
    obj.edit58:setFontSize(12.8);
    obj.edit58:setFontColor("#000000");
    obj.edit58:setVertTextAlign("center");
    obj.edit58:setLeft(0);
    obj.edit58:setTop(0);
    obj.edit58:setWidth(289);
    obj.edit58:setHeight(21);
    obj.edit58:setField("condoes_03");
    obj.edit58:setName("edit58");

    obj.layout150 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout150:setParent(obj.rectangle2);
    obj.layout150:setLeft(49);
    obj.layout150:setTop(151);
    obj.layout150:setWidth(289);
    obj.layout150:setHeight(20);
    obj.layout150:setName("layout150");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout150);
    obj.edit59:setTransparent(true);
    obj.edit59:setFontSize(12.8);
    obj.edit59:setFontColor("#000000");
    obj.edit59:setVertTextAlign("center");
    obj.edit59:setLeft(0);
    obj.edit59:setTop(0);
    obj.edit59:setWidth(289);
    obj.edit59:setHeight(21);
    obj.edit59:setField("condoes_04");
    obj.edit59:setName("edit59");

    obj.layout151 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout151:setParent(obj.rectangle2);
    obj.layout151:setLeft(49);
    obj.layout151:setTop(181);
    obj.layout151:setWidth(289);
    obj.layout151:setHeight(20);
    obj.layout151:setName("layout151");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.layout151);
    obj.edit60:setTransparent(true);
    obj.edit60:setFontSize(12.8);
    obj.edit60:setFontColor("#000000");
    obj.edit60:setVertTextAlign("center");
    obj.edit60:setLeft(0);
    obj.edit60:setTop(0);
    obj.edit60:setWidth(289);
    obj.edit60:setHeight(21);
    obj.edit60:setField("condoes_05");
    obj.edit60:setName("edit60");

    obj.layout152 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout152:setParent(obj.rectangle2);
    obj.layout152:setLeft(49);
    obj.layout152:setTop(212);
    obj.layout152:setWidth(289);
    obj.layout152:setHeight(20);
    obj.layout152:setName("layout152");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.layout152);
    obj.edit61:setTransparent(true);
    obj.edit61:setFontSize(12.8);
    obj.edit61:setFontColor("#000000");
    obj.edit61:setVertTextAlign("center");
    obj.edit61:setLeft(0);
    obj.edit61:setTop(0);
    obj.edit61:setWidth(289);
    obj.edit61:setHeight(21);
    obj.edit61:setField("condoes_06");
    obj.edit61:setName("edit61");

    obj.layout153 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout153:setParent(obj.rectangle2);
    obj.layout153:setLeft(49);
    obj.layout153:setTop(242);
    obj.layout153:setWidth(289);
    obj.layout153:setHeight(20);
    obj.layout153:setName("layout153");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.layout153);
    obj.edit62:setTransparent(true);
    obj.edit62:setFontSize(12.8);
    obj.edit62:setFontColor("#000000");
    obj.edit62:setVertTextAlign("center");
    obj.edit62:setLeft(0);
    obj.edit62:setTop(0);
    obj.edit62:setWidth(289);
    obj.edit62:setHeight(21);
    obj.edit62:setField("condoes_07");
    obj.edit62:setName("edit62");

    obj.layout154 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout154:setParent(obj.rectangle2);
    obj.layout154:setLeft(49);
    obj.layout154:setTop(272);
    obj.layout154:setWidth(289);
    obj.layout154:setHeight(20);
    obj.layout154:setName("layout154");

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.layout154);
    obj.edit63:setTransparent(true);
    obj.edit63:setFontSize(12.8);
    obj.edit63:setFontColor("#000000");
    obj.edit63:setVertTextAlign("center");
    obj.edit63:setLeft(0);
    obj.edit63:setTop(0);
    obj.edit63:setWidth(289);
    obj.edit63:setHeight(21);
    obj.edit63:setField("condoes_08");
    obj.edit63:setName("edit63");

    obj.layout155 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout155:setParent(obj.rectangle2);
    obj.layout155:setLeft(49);
    obj.layout155:setTop(303);
    obj.layout155:setWidth(289);
    obj.layout155:setHeight(20);
    obj.layout155:setName("layout155");

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.layout155);
    obj.edit64:setTransparent(true);
    obj.edit64:setFontSize(12.8);
    obj.edit64:setFontColor("#000000");
    obj.edit64:setVertTextAlign("center");
    obj.edit64:setLeft(0);
    obj.edit64:setTop(0);
    obj.edit64:setWidth(289);
    obj.edit64:setHeight(21);
    obj.edit64:setField("condoes_09");
    obj.edit64:setName("edit64");

    obj.layout156 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout156:setParent(obj.rectangle2);
    obj.layout156:setLeft(49);
    obj.layout156:setTop(333);
    obj.layout156:setWidth(289);
    obj.layout156:setHeight(20);
    obj.layout156:setName("layout156");

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.layout156);
    obj.edit65:setTransparent(true);
    obj.edit65:setFontSize(12.8);
    obj.edit65:setFontColor("#000000");
    obj.edit65:setVertTextAlign("center");
    obj.edit65:setLeft(0);
    obj.edit65:setTop(0);
    obj.edit65:setWidth(289);
    obj.edit65:setHeight(21);
    obj.edit65:setField("condoes_010");
    obj.edit65:setName("edit65");

    obj.layout157 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout157:setParent(obj.rectangle2);
    obj.layout157:setLeft(49);
    obj.layout157:setTop(362);
    obj.layout157:setWidth(289);
    obj.layout157:setHeight(20);
    obj.layout157:setName("layout157");

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.layout157);
    obj.edit66:setTransparent(true);
    obj.edit66:setFontSize(12.8);
    obj.edit66:setFontColor("#000000");
    obj.edit66:setVertTextAlign("center");
    obj.edit66:setLeft(0);
    obj.edit66:setTop(0);
    obj.edit66:setWidth(289);
    obj.edit66:setHeight(21);
    obj.edit66:setField("condoes_011");
    obj.edit66:setName("edit66");

    obj.layout158 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout158:setParent(obj.rectangle2);
    obj.layout158:setLeft(357);
    obj.layout158:setTop(59);
    obj.layout158:setWidth(293);
    obj.layout158:setHeight(20);
    obj.layout158:setName("layout158");

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.layout158);
    obj.edit67:setTransparent(true);
    obj.edit67:setFontSize(12.8);
    obj.edit67:setFontColor("#000000");
    obj.edit67:setVertTextAlign("center");
    obj.edit67:setLeft(0);
    obj.edit67:setTop(0);
    obj.edit67:setWidth(293);
    obj.edit67:setHeight(21);
    obj.edit67:setField("tabus_01");
    obj.edit67:setName("edit67");

    obj.layout159 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout159:setParent(obj.rectangle2);
    obj.layout159:setLeft(357);
    obj.layout159:setTop(89);
    obj.layout159:setWidth(293);
    obj.layout159:setHeight(20);
    obj.layout159:setName("layout159");

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.layout159);
    obj.edit68:setTransparent(true);
    obj.edit68:setFontSize(12.8);
    obj.edit68:setFontColor("#000000");
    obj.edit68:setVertTextAlign("center");
    obj.edit68:setLeft(0);
    obj.edit68:setTop(0);
    obj.edit68:setWidth(293);
    obj.edit68:setHeight(21);
    obj.edit68:setField("tabus_02");
    obj.edit68:setName("edit68");

    obj.layout160 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout160:setParent(obj.rectangle2);
    obj.layout160:setLeft(357);
    obj.layout160:setTop(120);
    obj.layout160:setWidth(293);
    obj.layout160:setHeight(20);
    obj.layout160:setName("layout160");

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.layout160);
    obj.edit69:setTransparent(true);
    obj.edit69:setFontSize(12.8);
    obj.edit69:setFontColor("#000000");
    obj.edit69:setVertTextAlign("center");
    obj.edit69:setLeft(0);
    obj.edit69:setTop(0);
    obj.edit69:setWidth(293);
    obj.edit69:setHeight(21);
    obj.edit69:setField("tabus_03");
    obj.edit69:setName("edit69");

    obj.layout161 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout161:setParent(obj.rectangle2);
    obj.layout161:setLeft(357);
    obj.layout161:setTop(150);
    obj.layout161:setWidth(293);
    obj.layout161:setHeight(20);
    obj.layout161:setName("layout161");

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.layout161);
    obj.edit70:setTransparent(true);
    obj.edit70:setFontSize(12.8);
    obj.edit70:setFontColor("#000000");
    obj.edit70:setVertTextAlign("center");
    obj.edit70:setLeft(0);
    obj.edit70:setTop(0);
    obj.edit70:setWidth(293);
    obj.edit70:setHeight(21);
    obj.edit70:setField("tabus_04");
    obj.edit70:setName("edit70");

    obj.layout162 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout162:setParent(obj.rectangle2);
    obj.layout162:setLeft(357);
    obj.layout162:setTop(181);
    obj.layout162:setWidth(293);
    obj.layout162:setHeight(20);
    obj.layout162:setName("layout162");

    obj.edit71 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.layout162);
    obj.edit71:setTransparent(true);
    obj.edit71:setFontSize(12.8);
    obj.edit71:setFontColor("#000000");
    obj.edit71:setVertTextAlign("center");
    obj.edit71:setLeft(0);
    obj.edit71:setTop(0);
    obj.edit71:setWidth(293);
    obj.edit71:setHeight(21);
    obj.edit71:setField("tabus_05");
    obj.edit71:setName("edit71");

    obj.layout163 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout163:setParent(obj.rectangle2);
    obj.layout163:setLeft(357);
    obj.layout163:setTop(212);
    obj.layout163:setWidth(293);
    obj.layout163:setHeight(20);
    obj.layout163:setName("layout163");

    obj.edit72 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.layout163);
    obj.edit72:setTransparent(true);
    obj.edit72:setFontSize(12.8);
    obj.edit72:setFontColor("#000000");
    obj.edit72:setVertTextAlign("center");
    obj.edit72:setLeft(0);
    obj.edit72:setTop(0);
    obj.edit72:setWidth(293);
    obj.edit72:setHeight(21);
    obj.edit72:setField("tabus_06");
    obj.edit72:setName("edit72");

    obj.layout164 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout164:setParent(obj.rectangle2);
    obj.layout164:setLeft(357);
    obj.layout164:setTop(242);
    obj.layout164:setWidth(293);
    obj.layout164:setHeight(20);
    obj.layout164:setName("layout164");

    obj.edit73 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.layout164);
    obj.edit73:setTransparent(true);
    obj.edit73:setFontSize(12.8);
    obj.edit73:setFontColor("#000000");
    obj.edit73:setVertTextAlign("center");
    obj.edit73:setLeft(0);
    obj.edit73:setTop(0);
    obj.edit73:setWidth(293);
    obj.edit73:setHeight(21);
    obj.edit73:setField("tabus_07");
    obj.edit73:setName("edit73");

    obj.layout165 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout165:setParent(obj.rectangle2);
    obj.layout165:setLeft(357);
    obj.layout165:setTop(272);
    obj.layout165:setWidth(293);
    obj.layout165:setHeight(20);
    obj.layout165:setName("layout165");

    obj.edit74 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.layout165);
    obj.edit74:setTransparent(true);
    obj.edit74:setFontSize(12.8);
    obj.edit74:setFontColor("#000000");
    obj.edit74:setVertTextAlign("center");
    obj.edit74:setLeft(0);
    obj.edit74:setTop(0);
    obj.edit74:setWidth(293);
    obj.edit74:setHeight(21);
    obj.edit74:setField("tabus_08");
    obj.edit74:setName("edit74");

    obj.layout166 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout166:setParent(obj.rectangle2);
    obj.layout166:setLeft(357);
    obj.layout166:setTop(303);
    obj.layout166:setWidth(293);
    obj.layout166:setHeight(20);
    obj.layout166:setName("layout166");

    obj.edit75 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.layout166);
    obj.edit75:setTransparent(true);
    obj.edit75:setFontSize(12.8);
    obj.edit75:setFontColor("#000000");
    obj.edit75:setVertTextAlign("center");
    obj.edit75:setLeft(0);
    obj.edit75:setTop(0);
    obj.edit75:setWidth(293);
    obj.edit75:setHeight(21);
    obj.edit75:setField("tabus_09");
    obj.edit75:setName("edit75");

    obj.layout167 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout167:setParent(obj.rectangle2);
    obj.layout167:setLeft(357);
    obj.layout167:setTop(333);
    obj.layout167:setWidth(293);
    obj.layout167:setHeight(20);
    obj.layout167:setName("layout167");

    obj.edit76 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.layout167);
    obj.edit76:setTransparent(true);
    obj.edit76:setFontSize(12.8);
    obj.edit76:setFontColor("#000000");
    obj.edit76:setVertTextAlign("center");
    obj.edit76:setLeft(0);
    obj.edit76:setTop(0);
    obj.edit76:setWidth(293);
    obj.edit76:setHeight(21);
    obj.edit76:setField("tabus_010");
    obj.edit76:setName("edit76");

    obj.layout168 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout168:setParent(obj.rectangle2);
    obj.layout168:setLeft(357);
    obj.layout168:setTop(362);
    obj.layout168:setWidth(293);
    obj.layout168:setHeight(20);
    obj.layout168:setName("layout168");

    obj.edit77 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.layout168);
    obj.edit77:setTransparent(true);
    obj.edit77:setFontSize(12.8);
    obj.edit77:setFontColor("#000000");
    obj.edit77:setVertTextAlign("center");
    obj.edit77:setLeft(0);
    obj.edit77:setTop(0);
    obj.edit77:setWidth(293);
    obj.edit77:setHeight(21);
    obj.edit77:setField("tabus_011");
    obj.edit77:setName("edit77");

    obj.layout169 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout169:setParent(obj.rectangle2);
    obj.layout169:setLeft(294);
    obj.layout169:setTop(621);
    obj.layout169:setWidth(8);
    obj.layout169:setHeight(9);
    obj.layout169:setName("layout169");

    obj.checkBox86 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox86:setParent(obj.layout169);
    obj.checkBox86:setLeft(0);
    obj.checkBox86:setTop(0);
    obj.checkBox86:setWidth(8);
    obj.checkBox86:setHeight(10);
    obj.checkBox86:setField("Caixa_de_seleção_91");
    obj.checkBox86:setName("checkBox86");

    obj.layout170 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout170:setParent(obj.rectangle2);
    obj.layout170:setLeft(294);
    obj.layout170:setTop(650);
    obj.layout170:setWidth(8);
    obj.layout170:setHeight(9);
    obj.layout170:setName("layout170");

    obj.checkBox87 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox87:setParent(obj.layout170);
    obj.checkBox87:setLeft(0);
    obj.checkBox87:setTop(0);
    obj.checkBox87:setWidth(8);
    obj.checkBox87:setHeight(10);
    obj.checkBox87:setField("Caixa_de_seleção_92");
    obj.checkBox87:setName("checkBox87");

    obj.layout171 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout171:setParent(obj.rectangle2);
    obj.layout171:setLeft(294);
    obj.layout171:setTop(679);
    obj.layout171:setWidth(8);
    obj.layout171:setHeight(9);
    obj.layout171:setName("layout171");

    obj.checkBox88 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox88:setParent(obj.layout171);
    obj.checkBox88:setLeft(0);
    obj.checkBox88:setTop(0);
    obj.checkBox88:setWidth(8);
    obj.checkBox88:setHeight(10);
    obj.checkBox88:setField("Caixa_de_seleção_93");
    obj.checkBox88:setName("checkBox88");

    obj.layout172 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout172:setParent(obj.rectangle2);
    obj.layout172:setLeft(294);
    obj.layout172:setTop(701);
    obj.layout172:setWidth(8);
    obj.layout172:setHeight(9);
    obj.layout172:setName("layout172");

    obj.checkBox89 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox89:setParent(obj.layout172);
    obj.checkBox89:setLeft(0);
    obj.checkBox89:setTop(0);
    obj.checkBox89:setWidth(8);
    obj.checkBox89:setHeight(10);
    obj.checkBox89:setField("Caixa_de_seleção_94");
    obj.checkBox89:setName("checkBox89");

    obj.layout173 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout173:setParent(obj.rectangle2);
    obj.layout173:setLeft(294);
    obj.layout173:setTop(722);
    obj.layout173:setWidth(8);
    obj.layout173:setHeight(9);
    obj.layout173:setName("layout173");

    obj.checkBox90 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox90:setParent(obj.layout173);
    obj.checkBox90:setLeft(0);
    obj.checkBox90:setTop(0);
    obj.checkBox90:setWidth(8);
    obj.checkBox90:setHeight(10);
    obj.checkBox90:setField("Caixa_de_seleção_95");
    obj.checkBox90:setName("checkBox90");

    obj.layout174 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout174:setParent(obj.rectangle2);
    obj.layout174:setLeft(294);
    obj.layout174:setTop(743);
    obj.layout174:setWidth(8);
    obj.layout174:setHeight(9);
    obj.layout174:setName("layout174");

    obj.checkBox91 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox91:setParent(obj.layout174);
    obj.checkBox91:setLeft(0);
    obj.checkBox91:setTop(0);
    obj.checkBox91:setWidth(8);
    obj.checkBox91:setHeight(10);
    obj.checkBox91:setField("Caixa_de_seleção_96");
    obj.checkBox91:setName("checkBox91");

    obj.layout175 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout175:setParent(obj.rectangle2);
    obj.layout175:setLeft(294);
    obj.layout175:setTop(764);
    obj.layout175:setWidth(8);
    obj.layout175:setHeight(9);
    obj.layout175:setName("layout175");

    obj.checkBox92 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox92:setParent(obj.layout175);
    obj.checkBox92:setLeft(0);
    obj.checkBox92:setTop(0);
    obj.checkBox92:setWidth(8);
    obj.checkBox92:setHeight(10);
    obj.checkBox92:setField("Caixa_de_seleção_97");
    obj.checkBox92:setName("checkBox92");

    obj.layout176 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout176:setParent(obj.rectangle2);
    obj.layout176:setLeft(875);
    obj.layout176:setTop(55);
    obj.layout176:setWidth(298);
    obj.layout176:setHeight(20);
    obj.layout176:setName("layout176");

    obj.edit78 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.layout176);
    obj.edit78:setTransparent(true);
    obj.edit78:setFontSize(12.8);
    obj.edit78:setFontColor("#000000");
    obj.edit78:setVertTextAlign("center");
    obj.edit78:setLeft(0);
    obj.edit78:setTop(0);
    obj.edit78:setWidth(298);
    obj.edit78:setHeight(21);
    obj.edit78:setField("anota_01");
    obj.edit78:setName("edit78");

    obj.layout177 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout177:setParent(obj.rectangle2);
    obj.layout177:setLeft(875);
    obj.layout177:setTop(86);
    obj.layout177:setWidth(298);
    obj.layout177:setHeight(20);
    obj.layout177:setName("layout177");

    obj.edit79 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.layout177);
    obj.edit79:setTransparent(true);
    obj.edit79:setFontSize(12.8);
    obj.edit79:setFontColor("#000000");
    obj.edit79:setVertTextAlign("center");
    obj.edit79:setLeft(0);
    obj.edit79:setTop(0);
    obj.edit79:setWidth(298);
    obj.edit79:setHeight(21);
    obj.edit79:setField("anota_02");
    obj.edit79:setName("edit79");

    obj.layout178 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout178:setParent(obj.rectangle2);
    obj.layout178:setLeft(884);
    obj.layout178:setTop(116);
    obj.layout178:setWidth(290);
    obj.layout178:setHeight(20);
    obj.layout178:setName("layout178");

    obj.edit80 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.layout178);
    obj.edit80:setTransparent(true);
    obj.edit80:setFontSize(12.8);
    obj.edit80:setFontColor("#000000");
    obj.edit80:setVertTextAlign("center");
    obj.edit80:setLeft(0);
    obj.edit80:setTop(0);
    obj.edit80:setWidth(290);
    obj.edit80:setHeight(21);
    obj.edit80:setField("anota_03");
    obj.edit80:setName("edit80");

    obj.layout179 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout179:setParent(obj.rectangle2);
    obj.layout179:setLeft(884);
    obj.layout179:setTop(147);
    obj.layout179:setWidth(290);
    obj.layout179:setHeight(20);
    obj.layout179:setName("layout179");

    obj.edit81 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.layout179);
    obj.edit81:setTransparent(true);
    obj.edit81:setFontSize(12.8);
    obj.edit81:setFontColor("#000000");
    obj.edit81:setVertTextAlign("center");
    obj.edit81:setLeft(0);
    obj.edit81:setTop(0);
    obj.edit81:setWidth(290);
    obj.edit81:setHeight(21);
    obj.edit81:setField("anota_04");
    obj.edit81:setName("edit81");

    obj.layout180 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout180:setParent(obj.rectangle2);
    obj.layout180:setLeft(875);
    obj.layout180:setTop(177);
    obj.layout180:setWidth(298);
    obj.layout180:setHeight(20);
    obj.layout180:setName("layout180");

    obj.edit82 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.layout180);
    obj.edit82:setTransparent(true);
    obj.edit82:setFontSize(12.8);
    obj.edit82:setFontColor("#000000");
    obj.edit82:setVertTextAlign("center");
    obj.edit82:setLeft(0);
    obj.edit82:setTop(0);
    obj.edit82:setWidth(298);
    obj.edit82:setHeight(21);
    obj.edit82:setField("anota_05");
    obj.edit82:setName("edit82");

    obj.layout181 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout181:setParent(obj.rectangle2);
    obj.layout181:setLeft(858);
    obj.layout181:setTop(208);
    obj.layout181:setWidth(298);
    obj.layout181:setHeight(20);
    obj.layout181:setName("layout181");

    obj.edit83 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.layout181);
    obj.edit83:setTransparent(true);
    obj.edit83:setFontSize(12.8);
    obj.edit83:setFontColor("#000000");
    obj.edit83:setVertTextAlign("center");
    obj.edit83:setLeft(0);
    obj.edit83:setTop(0);
    obj.edit83:setWidth(298);
    obj.edit83:setHeight(21);
    obj.edit83:setField("anota_06");
    obj.edit83:setName("edit83");

    obj.layout182 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout182:setParent(obj.rectangle2);
    obj.layout182:setLeft(740);
    obj.layout182:setTop(238);
    obj.layout182:setWidth(411);
    obj.layout182:setHeight(20);
    obj.layout182:setName("layout182");

    obj.edit84 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.layout182);
    obj.edit84:setTransparent(true);
    obj.edit84:setFontSize(12.8);
    obj.edit84:setFontColor("#000000");
    obj.edit84:setVertTextAlign("center");
    obj.edit84:setLeft(0);
    obj.edit84:setTop(0);
    obj.edit84:setWidth(411);
    obj.edit84:setHeight(21);
    obj.edit84:setField("anota_07");
    obj.edit84:setName("edit84");

    obj.layout183 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout183:setParent(obj.rectangle2);
    obj.layout183:setLeft(735);
    obj.layout183:setTop(268);
    obj.layout183:setWidth(357);
    obj.layout183:setHeight(20);
    obj.layout183:setName("layout183");

    obj.edit85 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.layout183);
    obj.edit85:setTransparent(true);
    obj.edit85:setFontSize(12.8);
    obj.edit85:setFontColor("#000000");
    obj.edit85:setVertTextAlign("center");
    obj.edit85:setLeft(0);
    obj.edit85:setTop(0);
    obj.edit85:setWidth(357);
    obj.edit85:setHeight(21);
    obj.edit85:setField("anota_08");
    obj.edit85:setName("edit85");

    obj.layout184 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout184:setParent(obj.rectangle2);
    obj.layout184:setLeft(731);
    obj.layout184:setTop(326.6);
    obj.layout184:setWidth(461);
    obj.layout184:setHeight(58.4);
    obj.layout184:setName("layout184");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout184);
    obj.textEditor7:setLeft(0);
    obj.textEditor7:setTop(0);
    obj.textEditor7:setWidth(461);
    obj.textEditor7:setHeight(58.4);
    obj.textEditor7:setFontSize(13.1);
    obj.textEditor7:setFontColor("#000000");
    obj.textEditor7:setField("memoria_det_01");
    obj.textEditor7:setTransparent(true);
    obj.textEditor7:setName("textEditor7");

    obj.layout185 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout185:setParent(obj.rectangle2);
    obj.layout185:setLeft(731);
    obj.layout185:setTop(417.6);
    obj.layout185:setWidth(461);
    obj.layout185:setHeight(58.4);
    obj.layout185:setName("layout185");

    obj.textEditor8 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout185);
    obj.textEditor8:setLeft(0);
    obj.textEditor8:setTop(0);
    obj.textEditor8:setWidth(461);
    obj.textEditor8:setHeight(58.4);
    obj.textEditor8:setFontSize(13.1);
    obj.textEditor8:setFontColor("#000000");
    obj.textEditor8:setField("memoria_det_02");
    obj.textEditor8:setTransparent(true);
    obj.textEditor8:setName("textEditor8");

    obj.layout186 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout186:setParent(obj.rectangle2);
    obj.layout186:setLeft(731);
    obj.layout186:setTop(509.6);
    obj.layout186:setWidth(461);
    obj.layout186:setHeight(58.4);
    obj.layout186:setName("layout186");

    obj.textEditor9 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout186);
    obj.textEditor9:setLeft(0);
    obj.textEditor9:setTop(0);
    obj.textEditor9:setWidth(461);
    obj.textEditor9:setHeight(58.4);
    obj.textEditor9:setFontSize(13.1);
    obj.textEditor9:setFontColor("#000000");
    obj.textEditor9:setField("memoria_det_03");
    obj.textEditor9:setTransparent(true);
    obj.textEditor9:setName("textEditor9");

    obj.layout187 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout187:setParent(obj.rectangle2);
    obj.layout187:setLeft(731);
    obj.layout187:setTop(600.6);
    obj.layout187:setWidth(461);
    obj.layout187:setHeight(58.4);
    obj.layout187:setName("layout187");

    obj.textEditor10 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.layout187);
    obj.textEditor10:setLeft(0);
    obj.textEditor10:setTop(0);
    obj.textEditor10:setWidth(461);
    obj.textEditor10:setHeight(58.4);
    obj.textEditor10:setFontSize(13.1);
    obj.textEditor10:setFontColor("#000000");
    obj.textEditor10:setField("memoria_det_04");
    obj.textEditor10:setTransparent(true);
    obj.textEditor10:setName("textEditor10");

    obj.layout188 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout188:setParent(obj.rectangle2);
    obj.layout188:setLeft(731);
    obj.layout188:setTop(689.6);
    obj.layout188:setWidth(461);
    obj.layout188:setHeight(58.4);
    obj.layout188:setName("layout188");

    obj.textEditor11 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.layout188);
    obj.textEditor11:setLeft(0);
    obj.textEditor11:setTop(0);
    obj.textEditor11:setWidth(461);
    obj.textEditor11:setHeight(58.4);
    obj.textEditor11:setFontSize(13.1);
    obj.textEditor11:setFontColor("#000000");
    obj.textEditor11:setField("memoria_det_05");
    obj.textEditor11:setTransparent(true);
    obj.textEditor11:setName("textEditor11");

    obj.layout189 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout189:setParent(obj.rectangle2);
    obj.layout189:setLeft(731);
    obj.layout189:setTop(780.6);
    obj.layout189:setWidth(461);
    obj.layout189:setHeight(58.4);
    obj.layout189:setName("layout189");

    obj.textEditor12 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.layout189);
    obj.textEditor12:setLeft(0);
    obj.textEditor12:setTop(0);
    obj.textEditor12:setWidth(461);
    obj.textEditor12:setHeight(58.4);
    obj.textEditor12:setFontSize(13.1);
    obj.textEditor12:setFontColor("#000000");
    obj.textEditor12:setField("memoria_det_06");
    obj.textEditor12:setTransparent(true);
    obj.textEditor12:setName("textEditor12");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.checkBox67 ~= nil then self.checkBox67:destroy(); self.checkBox67 = nil; end;
        if self.layout83 ~= nil then self.layout83:destroy(); self.layout83 = nil; end;
        if self.checkBox85 ~= nil then self.checkBox85:destroy(); self.checkBox85 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout94 ~= nil then self.layout94:destroy(); self.layout94 = nil; end;
        if self.checkBox29 ~= nil then self.checkBox29:destroy(); self.checkBox29 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.layout189 ~= nil then self.layout189:destroy(); self.layout189 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.checkBox68 ~= nil then self.checkBox68:destroy(); self.checkBox68 = nil; end;
        if self.layout123 ~= nil then self.layout123:destroy(); self.layout123 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.checkBox78 ~= nil then self.checkBox78:destroy(); self.checkBox78 = nil; end;
        if self.layout187 ~= nil then self.layout187:destroy(); self.layout187 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.layout89 ~= nil then self.layout89:destroy(); self.layout89 = nil; end;
        if self.layout125 ~= nil then self.layout125:destroy(); self.layout125 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.layout140 ~= nil then self.layout140:destroy(); self.layout140 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.checkBox79 ~= nil then self.checkBox79:destroy(); self.checkBox79 = nil; end;
        if self.checkBox56 ~= nil then self.checkBox56:destroy(); self.checkBox56 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.checkBox49 ~= nil then self.checkBox49:destroy(); self.checkBox49 = nil; end;
        if self.layout119 ~= nil then self.layout119:destroy(); self.layout119 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.layout141 ~= nil then self.layout141:destroy(); self.layout141 = nil; end;
        if self.layout158 ~= nil then self.layout158:destroy(); self.layout158 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.layout174 ~= nil then self.layout174:destroy(); self.layout174 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.layout106 ~= nil then self.layout106:destroy(); self.layout106 = nil; end;
        if self.checkBox55 ~= nil then self.checkBox55:destroy(); self.checkBox55 = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.layout166 ~= nil then self.layout166:destroy(); self.layout166 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.checkBox42 ~= nil then self.checkBox42:destroy(); self.checkBox42 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.layout126 ~= nil then self.layout126:destroy(); self.layout126 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout176 ~= nil then self.layout176:destroy(); self.layout176 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.checkBox63 ~= nil then self.checkBox63:destroy(); self.checkBox63 = nil; end;
        if self.layout137 ~= nil then self.layout137:destroy(); self.layout137 = nil; end;
        if self.layout185 ~= nil then self.layout185:destroy(); self.layout185 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.checkBox50 ~= nil then self.checkBox50:destroy(); self.checkBox50 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.checkBox84 ~= nil then self.checkBox84:destroy(); self.checkBox84 = nil; end;
        if self.layout103 ~= nil then self.layout103:destroy(); self.layout103 = nil; end;
        if self.checkBox53 ~= nil then self.checkBox53:destroy(); self.checkBox53 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.checkBox70 ~= nil then self.checkBox70:destroy(); self.checkBox70 = nil; end;
        if self.checkBox48 ~= nil then self.checkBox48:destroy(); self.checkBox48 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.checkBox23 ~= nil then self.checkBox23:destroy(); self.checkBox23 = nil; end;
        if self.checkBox37 ~= nil then self.checkBox37:destroy(); self.checkBox37 = nil; end;
        if self.layout108 ~= nil then self.layout108:destroy(); self.layout108 = nil; end;
        if self.checkBox40 ~= nil then self.checkBox40:destroy(); self.checkBox40 = nil; end;
        if self.layout183 ~= nil then self.layout183:destroy(); self.layout183 = nil; end;
        if self.layout186 ~= nil then self.layout186:destroy(); self.layout186 = nil; end;
        if self.checkBox28 ~= nil then self.checkBox28:destroy(); self.checkBox28 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.checkBox74 ~= nil then self.checkBox74:destroy(); self.checkBox74 = nil; end;
        if self.checkBox86 ~= nil then self.checkBox86:destroy(); self.checkBox86 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.checkBox32 ~= nil then self.checkBox32:destroy(); self.checkBox32 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.layout100 ~= nil then self.layout100:destroy(); self.layout100 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.layout132 ~= nil then self.layout132:destroy(); self.layout132 = nil; end;
        if self.layout145 ~= nil then self.layout145:destroy(); self.layout145 = nil; end;
        if self.layout146 ~= nil then self.layout146:destroy(); self.layout146 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.layout136 ~= nil then self.layout136:destroy(); self.layout136 = nil; end;
        if self.layout154 ~= nil then self.layout154:destroy(); self.layout154 = nil; end;
        if self.layout162 ~= nil then self.layout162:destroy(); self.layout162 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.layout135 ~= nil then self.layout135:destroy(); self.layout135 = nil; end;
        if self.layout152 ~= nil then self.layout152:destroy(); self.layout152 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.checkBox89 ~= nil then self.checkBox89:destroy(); self.checkBox89 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.layout118 ~= nil then self.layout118:destroy(); self.layout118 = nil; end;
        if self.layout90 ~= nil then self.layout90:destroy(); self.layout90 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.layout111 ~= nil then self.layout111:destroy(); self.layout111 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.checkBox44 ~= nil then self.checkBox44:destroy(); self.checkBox44 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.textEditor11 ~= nil then self.textEditor11:destroy(); self.textEditor11 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.layout107 ~= nil then self.layout107:destroy(); self.layout107 = nil; end;
        if self.checkBox17 ~= nil then self.checkBox17:destroy(); self.checkBox17 = nil; end;
        if self.layout116 ~= nil then self.layout116:destroy(); self.layout116 = nil; end;
        if self.checkBox16 ~= nil then self.checkBox16:destroy(); self.checkBox16 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.layout101 ~= nil then self.layout101:destroy(); self.layout101 = nil; end;
        if self.checkBox9 ~= nil then self.checkBox9:destroy(); self.checkBox9 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.layout168 ~= nil then self.layout168:destroy(); self.layout168 = nil; end;
        if self.checkBox54 ~= nil then self.checkBox54:destroy(); self.checkBox54 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.checkBox83 ~= nil then self.checkBox83:destroy(); self.checkBox83 = nil; end;
        if self.layout148 ~= nil then self.layout148:destroy(); self.layout148 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.checkBox14 ~= nil then self.checkBox14:destroy(); self.checkBox14 = nil; end;
        if self.checkBox60 ~= nil then self.checkBox60:destroy(); self.checkBox60 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.layout128 ~= nil then self.layout128:destroy(); self.layout128 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.layout97 ~= nil then self.layout97:destroy(); self.layout97 = nil; end;
        if self.layout130 ~= nil then self.layout130:destroy(); self.layout130 = nil; end;
        if self.checkBox51 ~= nil then self.checkBox51:destroy(); self.checkBox51 = nil; end;
        if self.checkBox75 ~= nil then self.checkBox75:destroy(); self.checkBox75 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.checkBox12 ~= nil then self.checkBox12:destroy(); self.checkBox12 = nil; end;
        if self.layout165 ~= nil then self.layout165:destroy(); self.layout165 = nil; end;
        if self.checkBox31 ~= nil then self.checkBox31:destroy(); self.checkBox31 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.checkBox62 ~= nil then self.checkBox62:destroy(); self.checkBox62 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout120 ~= nil then self.layout120:destroy(); self.layout120 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.checkBox22 ~= nil then self.checkBox22:destroy(); self.checkBox22 = nil; end;
        if self.checkBox80 ~= nil then self.checkBox80:destroy(); self.checkBox80 = nil; end;
        if self.layout181 ~= nil then self.layout181:destroy(); self.layout181 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.layout164 ~= nil then self.layout164:destroy(); self.layout164 = nil; end;
        if self.checkBox19 ~= nil then self.checkBox19:destroy(); self.checkBox19 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.checkBox25 ~= nil then self.checkBox25:destroy(); self.checkBox25 = nil; end;
        if self.checkBox35 ~= nil then self.checkBox35:destroy(); self.checkBox35 = nil; end;
        if self.layout113 ~= nil then self.layout113:destroy(); self.layout113 = nil; end;
        if self.checkBox87 ~= nil then self.checkBox87:destroy(); self.checkBox87 = nil; end;
        if self.checkBox26 ~= nil then self.checkBox26:destroy(); self.checkBox26 = nil; end;
        if self.checkBox73 ~= nil then self.checkBox73:destroy(); self.checkBox73 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.checkBox10 ~= nil then self.checkBox10:destroy(); self.checkBox10 = nil; end;
        if self.checkBox47 ~= nil then self.checkBox47:destroy(); self.checkBox47 = nil; end;
        if self.layout109 ~= nil then self.layout109:destroy(); self.layout109 = nil; end;
        if self.layout170 ~= nil then self.layout170:destroy(); self.layout170 = nil; end;
        if self.layout98 ~= nil then self.layout98:destroy(); self.layout98 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.layout115 ~= nil then self.layout115:destroy(); self.layout115 = nil; end;
        if self.checkBox90 ~= nil then self.checkBox90:destroy(); self.checkBox90 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.checkBox41 ~= nil then self.checkBox41:destroy(); self.checkBox41 = nil; end;
        if self.checkBox39 ~= nil then self.checkBox39:destroy(); self.checkBox39 = nil; end;
        if self.checkBox71 ~= nil then self.checkBox71:destroy(); self.checkBox71 = nil; end;
        if self.layout134 ~= nil then self.layout134:destroy(); self.layout134 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.checkBox15 ~= nil then self.checkBox15:destroy(); self.checkBox15 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.frmFicha_As_Chaves_da_Torre1_svg ~= nil then self.frmFicha_As_Chaves_da_Torre1_svg:destroy(); self.frmFicha_As_Chaves_da_Torre1_svg = nil; end;
        if self.checkBox18 ~= nil then self.checkBox18:destroy(); self.checkBox18 = nil; end;
        if self.layout110 ~= nil then self.layout110:destroy(); self.layout110 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.layout114 ~= nil then self.layout114:destroy(); self.layout114 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.layout188 ~= nil then self.layout188:destroy(); self.layout188 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.checkBox57 ~= nil then self.checkBox57:destroy(); self.checkBox57 = nil; end;
        if self.checkBox11 ~= nil then self.checkBox11:destroy(); self.checkBox11 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout156 ~= nil then self.layout156:destroy(); self.layout156 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.checkBox7 ~= nil then self.checkBox7:destroy(); self.checkBox7 = nil; end;
        if self.layout160 ~= nil then self.layout160:destroy(); self.layout160 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.layout105 ~= nil then self.layout105:destroy(); self.layout105 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.layout171 ~= nil then self.layout171:destroy(); self.layout171 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.checkBox45 ~= nil then self.checkBox45:destroy(); self.checkBox45 = nil; end;
        if self.checkBox76 ~= nil then self.checkBox76:destroy(); self.checkBox76 = nil; end;
        if self.layout177 ~= nil then self.layout177:destroy(); self.layout177 = nil; end;
        if self.checkBox81 ~= nil then self.checkBox81:destroy(); self.checkBox81 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.layout127 ~= nil then self.layout127:destroy(); self.layout127 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.layout169 ~= nil then self.layout169:destroy(); self.layout169 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.layout92 ~= nil then self.layout92:destroy(); self.layout92 = nil; end;
        if self.layout143 ~= nil then self.layout143:destroy(); self.layout143 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.layout178 ~= nil then self.layout178:destroy(); self.layout178 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.layout180 ~= nil then self.layout180:destroy(); self.layout180 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout172 ~= nil then self.layout172:destroy(); self.layout172 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.checkBox43 ~= nil then self.checkBox43:destroy(); self.checkBox43 = nil; end;
        if self.checkBox64 ~= nil then self.checkBox64:destroy(); self.checkBox64 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.checkBox69 ~= nil then self.checkBox69:destroy(); self.checkBox69 = nil; end;
        if self.checkBox33 ~= nil then self.checkBox33:destroy(); self.checkBox33 = nil; end;
        if self.layout167 ~= nil then self.layout167:destroy(); self.layout167 = nil; end;
        if self.layout147 ~= nil then self.layout147:destroy(); self.layout147 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout133 ~= nil then self.layout133:destroy(); self.layout133 = nil; end;
        if self.checkBox61 ~= nil then self.checkBox61:destroy(); self.checkBox61 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.layout173 ~= nil then self.layout173:destroy(); self.layout173 = nil; end;
        if self.layout112 ~= nil then self.layout112:destroy(); self.layout112 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.layout138 ~= nil then self.layout138:destroy(); self.layout138 = nil; end;
        if self.layout151 ~= nil then self.layout151:destroy(); self.layout151 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.checkBox24 ~= nil then self.checkBox24:destroy(); self.checkBox24 = nil; end;
        if self.layout129 ~= nil then self.layout129:destroy(); self.layout129 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout153 ~= nil then self.layout153:destroy(); self.layout153 = nil; end;
        if self.checkBox92 ~= nil then self.checkBox92:destroy(); self.checkBox92 = nil; end;
        if self.checkBox13 ~= nil then self.checkBox13:destroy(); self.checkBox13 = nil; end;
        if self.checkBox88 ~= nil then self.checkBox88:destroy(); self.checkBox88 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.layout179 ~= nil then self.layout179:destroy(); self.layout179 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.layout117 ~= nil then self.layout117:destroy(); self.layout117 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout102 ~= nil then self.layout102:destroy(); self.layout102 = nil; end;
        if self.checkBox38 ~= nil then self.checkBox38:destroy(); self.checkBox38 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.checkBox65 ~= nil then self.checkBox65:destroy(); self.checkBox65 = nil; end;
        if self.layout142 ~= nil then self.layout142:destroy(); self.layout142 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.layout149 ~= nil then self.layout149:destroy(); self.layout149 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.layout139 ~= nil then self.layout139:destroy(); self.layout139 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.checkBox27 ~= nil then self.checkBox27:destroy(); self.checkBox27 = nil; end;
        if self.checkBox6 ~= nil then self.checkBox6:destroy(); self.checkBox6 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.layout99 ~= nil then self.layout99:destroy(); self.layout99 = nil; end;
        if self.layout95 ~= nil then self.layout95:destroy(); self.layout95 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.layout93 ~= nil then self.layout93:destroy(); self.layout93 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.checkBox8 ~= nil then self.checkBox8:destroy(); self.checkBox8 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.layout122 ~= nil then self.layout122:destroy(); self.layout122 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.layout150 ~= nil then self.layout150:destroy(); self.layout150 = nil; end;
        if self.layout175 ~= nil then self.layout175:destroy(); self.layout175 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.checkBox77 ~= nil then self.checkBox77:destroy(); self.checkBox77 = nil; end;
        if self.checkBox91 ~= nil then self.checkBox91:destroy(); self.checkBox91 = nil; end;
        if self.checkBox66 ~= nil then self.checkBox66:destroy(); self.checkBox66 = nil; end;
        if self.checkBox20 ~= nil then self.checkBox20:destroy(); self.checkBox20 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.layout104 ~= nil then self.layout104:destroy(); self.layout104 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.layout124 ~= nil then self.layout124:destroy(); self.layout124 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.layout159 ~= nil then self.layout159:destroy(); self.layout159 = nil; end;
        if self.layout144 ~= nil then self.layout144:destroy(); self.layout144 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.checkBox21 ~= nil then self.checkBox21:destroy(); self.checkBox21 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.frmFicha_As_Chaves_da_Torre2_svg ~= nil then self.frmFicha_As_Chaves_da_Torre2_svg:destroy(); self.frmFicha_As_Chaves_da_Torre2_svg = nil; end;
        if self.layout184 ~= nil then self.layout184:destroy(); self.layout184 = nil; end;
        if self.checkBox46 ~= nil then self.checkBox46:destroy(); self.checkBox46 = nil; end;
        if self.layout161 ~= nil then self.layout161:destroy(); self.layout161 = nil; end;
        if self.layout131 ~= nil then self.layout131:destroy(); self.layout131 = nil; end;
        if self.checkBox72 ~= nil then self.checkBox72:destroy(); self.checkBox72 = nil; end;
        if self.layout182 ~= nil then self.layout182:destroy(); self.layout182 = nil; end;
        if self.layout155 ~= nil then self.layout155:destroy(); self.layout155 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.checkBox36 ~= nil then self.checkBox36:destroy(); self.checkBox36 = nil; end;
        if self.checkBox34 ~= nil then self.checkBox34:destroy(); self.checkBox34 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.layout121 ~= nil then self.layout121:destroy(); self.layout121 = nil; end;
        if self.checkBox59 ~= nil then self.checkBox59:destroy(); self.checkBox59 = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.checkBox52 ~= nil then self.checkBox52:destroy(); self.checkBox52 = nil; end;
        if self.layout96 ~= nil then self.layout96:destroy(); self.layout96 = nil; end;
        if self.checkBox58 ~= nil then self.checkBox58:destroy(); self.checkBox58 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.layout157 ~= nil then self.layout157:destroy(); self.layout157 = nil; end;
        if self.checkBox82 ~= nil then self.checkBox82:destroy(); self.checkBox82 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout163 ~= nil then self.layout163:destroy(); self.layout163 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.checkBox30 ~= nil then self.checkBox30:destroy(); self.checkBox30 = nil; end;
        if self.layout91 ~= nil then self.layout91:destroy(); self.layout91 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFicha_As_Chaves_da_Torre()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFicha_As_Chaves_da_Torre();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFicha_As_Chaves_da_Torre = {
    newEditor = newfrmFicha_As_Chaves_da_Torre, 
    new = newfrmFicha_As_Chaves_da_Torre, 
    name = "frmFicha_As_Chaves_da_Torre", 
    dataType = "dev.sylon.AsChavesdaTorre", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "As Chaves da Torre v1", 
    description=""};

frmFicha_As_Chaves_da_Torre = _frmFicha_As_Chaves_da_Torre;
Firecast.registrarForm(_frmFicha_As_Chaves_da_Torre);
Firecast.registrarDataType(_frmFicha_As_Chaves_da_Torre);

return _frmFicha_As_Chaves_da_Torre;
