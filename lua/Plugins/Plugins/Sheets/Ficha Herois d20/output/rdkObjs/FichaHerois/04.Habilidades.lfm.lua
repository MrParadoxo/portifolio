require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFichaRPGmeister4_svg()
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
    obj:setName("frmFichaRPGmeister4_svg");
    obj:setAlign("client");
    obj:setTheme("dark");
    obj:setMargins({top=1});

    obj.popHabilidade = GUI.fromHandle(_obj_newObject("popup"));
    obj.popHabilidade:setParent(obj);
    obj.popHabilidade:setName("popHabilidade");
    obj.popHabilidade:setWidth(300);
    obj.popHabilidade:setHeight(240);
    obj.popHabilidade:setBackOpacity(0.4);
    lfm_setPropAsString(obj.popHabilidade, "autoScopeNode",  "false");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.popHabilidade);
    obj.flowLayout1:setAlign("top");
    obj.flowLayout1:setAutoHeight(true);
    obj.flowLayout1:setMaxControlsPerLine(2);
    obj.flowLayout1:setMargins({bottom=4});
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setName("flowLayout1");

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout1);
    obj.flowPart1:setMinWidth(45);
    obj.flowPart1:setMaxWidth(100);
    obj.flowPart1:setHeight(35);
    obj.flowPart1:setName("flowPart1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.flowPart1);
    obj.label1:setAlign("top");
    obj.label1:setFontSize(10);
    obj.label1:setText("Nível");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setWordWrap(true);
    obj.label1:setTextTrimming("none");
    obj.label1:setAutoSize(true);
    obj.label1:setName("label1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.flowPart1);
    obj.edit1:setAlign("client");
    obj.edit1:setField("nivelHabilidade");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setFontSize(12);
    obj.edit1:setType("number");
    obj.edit1:setName("edit1");

    obj.flowPart2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart2:setParent(obj.flowLayout1);
    obj.flowPart2:setMinWidth(180);
    obj.flowPart2:setMaxWidth(200);
    obj.flowPart2:setHeight(35);
    obj.flowPart2:setName("flowPart2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.flowPart2);
    obj.label2:setAlign("top");
    obj.label2:setFontSize(10);
    obj.label2:setText("Obtido");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setWordWrap(true);
    obj.label2:setTextTrimming("none");
    obj.label2:setAutoSize(true);
    obj.label2:setName("label2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.flowPart2);
    obj.edit2:setAlign("client");
    obj.edit2:setField("obtencaoHabilidade");
    obj.edit2:setFontSize(12);
    obj.edit2:setName("edit2");

    obj.flowPart3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart3:setParent(obj.flowLayout1);
    obj.flowPart3:setMinWidth(45);
    obj.flowPart3:setMaxWidth(100);
    obj.flowPart3:setHeight(35);
    obj.flowPart3:setName("flowPart3");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.flowPart3);
    obj.label3:setAlign("top");
    obj.label3:setFontSize(10);
    obj.label3:setText("Página");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setWordWrap(true);
    obj.label3:setTextTrimming("none");
    obj.label3:setAutoSize(true);
    obj.label3:setName("label3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.flowPart3);
    obj.edit3:setAlign("client");
    obj.edit3:setField("paginaHabilidade");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setFontSize(12);
    obj.edit3:setType("number");
    obj.edit3:setName("edit3");

    obj.flowPart4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart4:setParent(obj.flowLayout1);
    obj.flowPart4:setMinWidth(180);
    obj.flowPart4:setMaxWidth(200);
    obj.flowPart4:setHeight(35);
    obj.flowPart4:setName("flowPart4");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.flowPart4);
    obj.label4:setAlign("top");
    obj.label4:setFontSize(10);
    obj.label4:setText("Livro");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setWordWrap(true);
    obj.label4:setTextTrimming("none");
    obj.label4:setAutoSize(true);
    obj.label4:setName("label4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.flowPart4);
    obj.edit4:setAlign("client");
    obj.edit4:setField("livroHabilidade");
    obj.edit4:setFontSize(12);
    obj.edit4:setName("edit4");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.flowLayout1);
    obj.dataLink1:setField("nivelHabilidade");
    obj.dataLink1:setName("dataLink1");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.popHabilidade);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("descricao");
    obj.textEditor1:setName("textEditor1");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(380);
    obj.layout1:setHeight(600);
    obj.layout1:setName("layout1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("#0000007F");
    obj.rectangle1:setName("rectangle1");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout1);
    obj.label5:setLeft(0);
    obj.label5:setTop(0);
    obj.label5:setWidth(380);
    obj.label5:setHeight(20);
    obj.label5:setText("TALENTOS");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setName("label5");

    obj.rclListaDosTalentos = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosTalentos:setParent(obj.layout1);
    obj.rclListaDosTalentos:setName("rclListaDosTalentos");
    obj.rclListaDosTalentos:setField("campoDosTalentos");
    obj.rclListaDosTalentos:setTemplateForm("frmFichaRPGmeister4h_svg");
    obj.rclListaDosTalentos:setLeft(5);
    obj.rclListaDosTalentos:setTop(25);
    obj.rclListaDosTalentos:setWidth(370);
    obj.rclListaDosTalentos:setHeight(570);
    obj.rclListaDosTalentos:setLayout("vertical");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(395);
    obj.layout2:setTop(0);
    obj.layout2:setWidth(380);
    obj.layout2:setHeight(435);
    obj.layout2:setName("layout2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout2);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("#0000007F");
    obj.rectangle2:setName("rectangle2");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout2);
    obj.label6:setLeft(0);
    obj.label6:setTop(0);
    obj.label6:setWidth(380);
    obj.label6:setHeight(20);
    obj.label6:setText("HISTORICOS: ");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setName("label6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout2);
    obj.label7:setLeft(235);
    obj.label7:setTop(0);
    obj.label7:setWidth(380);
    obj.label7:setHeight(20);
    obj.label7:setField("pontosHistorico");
    obj.label7:setName("label7");

    obj.rclListaDosOutros = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosOutros:setParent(obj.layout2);
    obj.rclListaDosOutros:setName("rclListaDosOutros");
    obj.rclListaDosOutros:setField("campoDosOutros");
    obj.rclListaDosOutros:setTemplateForm("frmFichaRPGmeister4hist");
    obj.rclListaDosOutros:setLeft(5);
    obj.rclListaDosOutros:setTop(25);
    obj.rclListaDosOutros:setWidth(370);
    obj.rclListaDosOutros:setHeight(405);
    obj.rclListaDosOutros:setLayout("vertical");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(395);
    obj.layout3:setTop(440);
    obj.layout3:setWidth(380);
    obj.layout3:setHeight(160);
    obj.layout3:setName("layout3");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout3);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("#0000007F");
    obj.rectangle3:setName("rectangle3");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout3);
    obj.label8:setLeft(10);
    obj.label8:setTop(5);
    obj.label8:setWidth(360);
    obj.label8:setHeight(20);
    obj.label8:setText("Traços Raciais");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setName("label8");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.layout3);
    obj.checkBox1:setLeft(10);
    obj.checkBox1:setTop(30);
    obj.checkBox1:setWidth(360);
    obj.checkBox1:setHeight(20);
    obj.checkBox1:setField("tracoHabil");
    obj.checkBox1:setText("Hábil");
    obj.checkBox1:setHint("+4 pontos de perícia no nível 1 e +1 ponto de perícia por nível.");
    obj.checkBox1:setName("checkBox1");

    obj.checkBox2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.layout3);
    obj.checkBox2:setLeft(10);
    obj.checkBox2:setTop(55);
    obj.checkBox2:setWidth(360);
    obj.checkBox2:setHeight(20);
    obj.checkBox2:setField("tracoTalentoso");
    obj.checkBox2:setText("Talentoso");
    obj.checkBox2:setHint("+1 talento.");
    obj.checkBox2:setName("checkBox2");

    obj.checkBox3 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.layout3);
    obj.checkBox3:setLeft(10);
    obj.checkBox3:setTop(80);
    obj.checkBox3:setWidth(360);
    obj.checkBox3:setHeight(20);
    obj.checkBox3:setField("tracoResistente");
    obj.checkBox3:setText("Resistente");
    obj.checkBox3:setHint("+1 em todas resistências. ");
    obj.checkBox3:setName("checkBox3");

    obj.checkBox4 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.layout3);
    obj.checkBox4:setLeft(10);
    obj.checkBox4:setTop(105);
    obj.checkBox4:setWidth(360);
    obj.checkBox4:setHeight(20);
    obj.checkBox4:setField("tracoHeroico");
    obj.checkBox4:setText("Heroico");
    obj.checkBox4:setHint("+1 em um atributo.");
    obj.checkBox4:setName("checkBox4");

    obj.checkBox5 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.layout3);
    obj.checkBox5:setLeft(10);
    obj.checkBox5:setTop(130);
    obj.checkBox5:setWidth(360);
    obj.checkBox5:setHeight(20);
    obj.checkBox5:setField("tracoRobusto");
    obj.checkBox5:setText("Robusto");
    obj.checkBox5:setHint("+1PV por nível.");
    obj.checkBox5:setName("checkBox5");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(790);
    obj.layout4:setTop(0);
    obj.layout4:setWidth(380);
    obj.layout4:setHeight(170);
    obj.layout4:setName("layout4");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout4);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("#0000007F");
    obj.rectangle4:setName("rectangle4");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout4);
    obj.label9:setLeft(0);
    obj.label9:setTop(0);
    obj.label9:setWidth(380);
    obj.label9:setHeight(20);
    obj.label9:setText("CARACTERISTICAS COM PROGRESSÃO");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setName("label9");

    obj.rclListaDasCaracteristicasClasse = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDasCaracteristicasClasse:setParent(obj.layout4);
    obj.rclListaDasCaracteristicasClasse:setName("rclListaDasCaracteristicasClasse");
    obj.rclListaDasCaracteristicasClasse:setField("campoDasCaracteristicasClasse");
    obj.rclListaDasCaracteristicasClasse:setTemplateForm("frmFichaRPGmeister4h_svg");
    obj.rclListaDasCaracteristicasClasse:setLeft(5);
    obj.rclListaDasCaracteristicasClasse:setTop(25);
    obj.rclListaDasCaracteristicasClasse:setWidth(370);
    obj.rclListaDasCaracteristicasClasse:setHeight(140);
    obj.rclListaDasCaracteristicasClasse:setLayout("vertical");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(790);
    obj.layout5:setTop(175);
    obj.layout5:setWidth(380);
    obj.layout5:setHeight(170);
    obj.layout5:setName("layout5");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout5);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("#0000007F");
    obj.rectangle5:setName("rectangle5");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout5);
    obj.label10:setLeft(0);
    obj.label10:setTop(0);
    obj.label10:setWidth(380);
    obj.label10:setHeight(20);
    obj.label10:setText("CARACTERISTICAS SEM PROGRESSÃO");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setName("label10");

    obj.rclListaDasCaracteristicasSemProgressao = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDasCaracteristicasSemProgressao:setParent(obj.layout5);
    obj.rclListaDasCaracteristicasSemProgressao:setName("rclListaDasCaracteristicasSemProgressao");
    obj.rclListaDasCaracteristicasSemProgressao:setField("campoDasCaracteristicasSemProgressao");
    obj.rclListaDasCaracteristicasSemProgressao:setTemplateForm("frmFichaRPGmeister4h_svg");
    obj.rclListaDasCaracteristicasSemProgressao:setLeft(5);
    obj.rclListaDasCaracteristicasSemProgressao:setTop(25);
    obj.rclListaDasCaracteristicasSemProgressao:setWidth(370);
    obj.rclListaDasCaracteristicasSemProgressao:setHeight(140);
    obj.rclListaDasCaracteristicasSemProgressao:setLayout("vertical");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setLeft(790);
    obj.layout6:setTop(350);
    obj.layout6:setWidth(380);
    obj.layout6:setHeight(250);
    obj.layout6:setName("layout6");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout6);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("#0000007F");
    obj.rectangle6:setName("rectangle6");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout6);
    obj.label11:setLeft(10);
    obj.label11:setTop(5);
    obj.label11:setWidth(150);
    obj.label11:setHeight(20);
    obj.label11:setText("Conceito");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setName("label11");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout6);
    obj.edit5:setLeft(160);
    obj.edit5:setTop(5);
    obj.edit5:setWidth(150);
    obj.edit5:setHeight(25);
    obj.edit5:setField("classeConceito");
    obj.edit5:setName("edit5");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout6);
    obj.label12:setLeft(310);
    obj.label12:setTop(5);
    obj.label12:setWidth(65);
    obj.label12:setHeight(20);
    obj.label12:setText("TOTAL");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setName("label12");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout6);
    obj.rectangle7:setLeft(315);
    obj.rectangle7:setTop(30);
    obj.rectangle7:setWidth(60);
    obj.rectangle7:setHeight(60);
    obj.rectangle7:setColor("black");
    obj.rectangle7:setStrokeColor("white");
    obj.rectangle7:setStrokeSize(1);
    obj.rectangle7:setName("rectangle7");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout6);
    obj.label13:setLeft(315);
    obj.label13:setTop(30);
    obj.label13:setWidth(60);
    obj.label13:setHeight(60);
    obj.label13:setField("classePontos");
    obj.label13:setHorzTextAlign("center");
    obj.label13:setName("label13");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout6);
    obj.label14:setLeft(10);
    obj.label14:setTop(35);
    obj.label14:setWidth(150);
    obj.label14:setHeight(20);
    obj.label14:setText("Bônus Base Ataque");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setName("label14");

    obj.classeBBA = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.classeBBA:setParent(obj.layout6);
    obj.classeBBA:setVertTextAlign("center");
    obj.classeBBA:setHorzTextAlign("center");
    obj.classeBBA:setLeft(160);
    obj.classeBBA:setTop(35);
    obj.classeBBA:setWidth(150);
    obj.classeBBA:setHeight(25);
    obj.classeBBA:setName("classeBBA");
    obj.classeBBA:setField("classeBBA");
    obj.classeBBA:setItems({'Ruim (0)', 'Médio (+1)', 'Bom (+2)'});
    obj.classeBBA:setValues({'0', '1', '2'});
    obj.classeBBA:setFontColor("white");
    obj.classeBBA:setHint("BBA = 1/2 do NEP e sabe usar todas armas simples e armaduras leves.");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout6);
    obj.label15:setLeft(10);
    obj.label15:setTop(65);
    obj.label15:setWidth(150);
    obj.label15:setHeight(20);
    obj.label15:setText("Bônus Base Fortitude");
    obj.label15:setHorzTextAlign("center");
    obj.label15:setName("label15");

    obj.classeBBF = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.classeBBF:setParent(obj.layout6);
    obj.classeBBF:setVertTextAlign("center");
    obj.classeBBF:setHorzTextAlign("center");
    obj.classeBBF:setLeft(160);
    obj.classeBBF:setTop(65);
    obj.classeBBF:setWidth(150);
    obj.classeBBF:setHeight(25);
    obj.classeBBF:setName("classeBBF");
    obj.classeBBF:setField("classeBBF");
    obj.classeBBF:setItems({'Ruim (0)', 'Bom (+1)'});
    obj.classeBBF:setValues({'0', '1'});
    obj.classeBBF:setFontColor("white");
    obj.classeBBF:setHint("BBF = 1/3 do NEP.");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout6);
    obj.label16:setLeft(10);
    obj.label16:setTop(95);
    obj.label16:setWidth(150);
    obj.label16:setHeight(20);
    obj.label16:setText("Bônus Base Reflexos");
    obj.label16:setHorzTextAlign("center");
    obj.label16:setName("label16");

    obj.classeBBR = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.classeBBR:setParent(obj.layout6);
    obj.classeBBR:setVertTextAlign("center");
    obj.classeBBR:setHorzTextAlign("center");
    obj.classeBBR:setLeft(160);
    obj.classeBBR:setTop(95);
    obj.classeBBR:setWidth(150);
    obj.classeBBR:setHeight(25);
    obj.classeBBR:setName("classeBBR");
    obj.classeBBR:setField("classeBBR");
    obj.classeBBR:setItems({'Ruim (0)', 'Bom (+1)'});
    obj.classeBBR:setValues({'0', '1'});
    obj.classeBBR:setFontColor("white");
    obj.classeBBR:setHint("BBR = 1/3 do NEP.");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout6);
    obj.label17:setLeft(10);
    obj.label17:setTop(125);
    obj.label17:setWidth(150);
    obj.label17:setHeight(20);
    obj.label17:setText("Bônus Base Vontade");
    obj.label17:setHorzTextAlign("center");
    obj.label17:setName("label17");

    obj.classeBBV = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.classeBBV:setParent(obj.layout6);
    obj.classeBBV:setVertTextAlign("center");
    obj.classeBBV:setHorzTextAlign("center");
    obj.classeBBV:setLeft(160);
    obj.classeBBV:setTop(125);
    obj.classeBBV:setWidth(150);
    obj.classeBBV:setHeight(25);
    obj.classeBBV:setName("classeBBV");
    obj.classeBBV:setField("classeBBV");
    obj.classeBBV:setItems({'Ruim (0)', 'Bom (+1)'});
    obj.classeBBV:setValues({'0', '1'});
    obj.classeBBV:setFontColor("white");
    obj.classeBBV:setHint("BBV = 1/3 do NEP.");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout6);
    obj.label18:setLeft(10);
    obj.label18:setTop(155);
    obj.label18:setWidth(150);
    obj.label18:setHeight(20);
    obj.label18:setText("Perícias");
    obj.label18:setHorzTextAlign("center");
    obj.label18:setName("label18");

    obj.classePericia = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.classePericia:setParent(obj.layout6);
    obj.classePericia:setVertTextAlign("center");
    obj.classePericia:setHorzTextAlign("center");
    obj.classePericia:setLeft(160);
    obj.classePericia:setTop(155);
    obj.classePericia:setWidth(150);
    obj.classePericia:setHeight(25);
    obj.classePericia:setName("classePericia");
    obj.classePericia:setField("classePericia");
    obj.classePericia:setItems({'Ruim (0)', 'Médio (+1)', 'Bom (+2)', 'Excelente (+3)'});
    obj.classePericia:setValues({'0', '1', '2', '3'});
    obj.classePericia:setFontColor("white");
    obj.classePericia:setHint("2 + modificador de inteligência por nível, 7 perícias de classe.");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout6);
    obj.label19:setLeft(10);
    obj.label19:setTop(185);
    obj.label19:setWidth(150);
    obj.label19:setHeight(20);
    obj.label19:setText("Dados de Vida");
    obj.label19:setHorzTextAlign("center");
    obj.label19:setName("label19");

    obj.classeDVs = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.classeDVs:setParent(obj.layout6);
    obj.classeDVs:setVertTextAlign("center");
    obj.classeDVs:setHorzTextAlign("center");
    obj.classeDVs:setLeft(160);
    obj.classeDVs:setTop(185);
    obj.classeDVs:setWidth(150);
    obj.classeDVs:setHeight(25);
    obj.classeDVs:setName("classeDVs");
    obj.classeDVs:setField("classeDVs");
    obj.classeDVs:setItems({'Ruim (0)', 'Médio (+1)', 'Bom (+2)', 'Excelente (+3)'});
    obj.classeDVs:setValues({'0', '1', '2', '3'});
    obj.classeDVs:setFontColor("white");
    obj.classeDVs:setHint("1d6 + modificador de constituição por nível.");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout6);
    obj.label20:setLeft(10);
    obj.label20:setTop(215);
    obj.label20:setWidth(150);
    obj.label20:setHeight(20);
    obj.label20:setText("Progressão de Poderes");
    obj.label20:setHorzTextAlign("center");
    obj.label20:setName("label20");

    obj.classePoderes = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.classePoderes:setParent(obj.layout6);
    obj.classePoderes:setVertTextAlign("center");
    obj.classePoderes:setHorzTextAlign("center");
    obj.classePoderes:setLeft(160);
    obj.classePoderes:setTop(215);
    obj.classePoderes:setWidth(150);
    obj.classePoderes:setHeight(25);
    obj.classePoderes:setName("classePoderes");
    obj.classePoderes:setField("classePoderes");
    obj.classePoderes:setItems({'Inferior (0)', 'Menor (+1)', 'Moderada (+2)', 'Maior (+3)', 'Superior (+4)'});
    obj.classePoderes:setValues({'0', '1', '2', '3', '4'});
    obj.classePoderes:setFontColor("white");
    obj.classePoderes:setHint("Inferior: seus poderes seguem a progressão mais lenta conhecida (x1).");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layout6);
    obj.dataLink2:setFields({'classeBBA','classeBBF','classeBBR','classeBBV','classePericia','classeDVs','classePoderes'});
    obj.dataLink2:setDefaultValues({'0','0','0','0','0','0','0'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.layout6);
    obj.dataLink3:setFields({'classeDVs', 'nep', 'efetCon', 'tracoRobusto'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.layout6);
    obj.dataLink4:setFields({'nep','classeBBA','classeBBF','classeBBR','classeBBV'});
    obj.dataLink4:setName("dataLink4");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(1180);
    obj.layout7:setTop(0);
    obj.layout7:setWidth(160);
    obj.layout7:setHeight(600);
    obj.layout7:setName("layout7");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout7);
    obj.button1:setText("Novo Talento");
    obj.button1:setLeft(0);
    obj.button1:setTop(0);
    obj.button1:setWidth(150);
    obj.button1:setHeight(25);
    obj.button1:setName("button1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout7);
    obj.button2:setText("Novo Historico");
    obj.button2:setLeft(0);
    obj.button2:setTop(25);
    obj.button2:setWidth(150);
    obj.button2:setHeight(25);
    obj.button2:setName("button2");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout7);
    obj.button3:setText("Caracteristica C/ Progressão");
    obj.button3:setFontSize(10);
    obj.button3:setLeft(0);
    obj.button3:setTop(50);
    obj.button3:setWidth(150);
    obj.button3:setHeight(25);
    obj.button3:setName("button3");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.layout7);
    obj.button4:setText("Caracteristica S/ Progressão");
    obj.button4:setFontSize(10);
    obj.button4:setLeft(0);
    obj.button4:setTop(75);
    obj.button4:setWidth(150);
    obj.button4:setHeight(25);
    obj.button4:setName("button4");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local rcl = self:findControlByName("rclListaDosTalentos");
            					if rcl~= nil then
            						rcl:sort();
            					end;
            					rcl = self:findControlByName("rclListaDosOutros");
            					if rcl~= nil then
            						rcl:sort();
            					end;
            					rcl = self:findControlByName("rclListaDasCaracteristicasClasse");
            					if rcl~= nil then
            						rcl:sort();
            					end;
            					rcl = self:findControlByName("rclListaDasCaracteristicasSemProgressao");
            					if rcl~= nil then
            						rcl:sort();
            					end;
        end, obj);

    obj._e_event1 = obj.rclListaDosTalentos:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            return ((tonumber(nodeA.nivelHabilidade) or 0) - (tonumber(nodeB.nivelHabilidade) or 0));
        end, obj);

    obj._e_event2 = obj.rclListaDosOutros:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            return ((tonumber(nodeA.nivelHabilidade) or 0) - (tonumber(nodeB.nivelHabilidade) or 0));
        end, obj);

    obj._e_event3 = obj.rclListaDasCaracteristicasClasse:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            return ((tonumber(nodeA.nivelHabilidade) or 0) - (tonumber(nodeB.nivelHabilidade) or 0));
        end, obj);

    obj._e_event4 = obj.rclListaDasCaracteristicasSemProgressao:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            return ((tonumber(nodeA.nivelHabilidade) or 0) - (tonumber(nodeB.nivelHabilidade) or 0));
        end, obj);

    obj._e_event5 = obj.classeBBA:addEventListener("onChange",
        function (_)
            if sheet==nil then return end;
            
            					if sheet.classeBBA == "0" then
            						self.classeBBA.hint = "BBA = 1/2 do NEP e sabe usar todas armas simples e armaduras leves.";
            					elseif sheet.classeBBA == "1" then
            						self.classeBBA.hint = "BBA = 3/4 do NEP e sabe usar todas armas simples, armaduras até médias e escudos (menos de corpo).";
            					elseif sheet.classeBBA == "2" then
            						self.classeBBA.hint = "BBA = NEP e sabe usar todas armas simples e comuns, armaduras até pesada e escudos.";
            					else
            						self.classeBBA.hint = "BBA = 1/2 do NEP e sabe usar todas armas simples e armaduras leves.";
            					end;
        end, obj);

    obj._e_event6 = obj.classeBBF:addEventListener("onChange",
        function (_)
            if sheet==nil then return end;
            
            					if sheet.classeBBF == "0" then
            						self.classeBBF.hint = "BBF = 1/3 do NEP.";
            					elseif sheet.classeBBF == "1" then
            						self.classeBBF.hint = "BBF = 2 + 1/2 do NEP.";
            					else
            						self.classeBBF.hint = "BBF = 1/3 do NEP.";
            					end;
        end, obj);

    obj._e_event7 = obj.classeBBR:addEventListener("onChange",
        function (_)
            if sheet==nil then return end;
            
            					if sheet.classeBBR == "0" then
            						self.classeBBR.hint = "BBR = 1/3 do NEP.";
            					elseif sheet.classeBBR == "1" then
            						self.classeBBR.hint = "BBR = 2 + 1/2 do NEP.";
            					else
            						self.classeBBR.hint = "BBR = 1/3 do NEP.";
            					end;
        end, obj);

    obj._e_event8 = obj.classeBBV:addEventListener("onChange",
        function (_)
            if sheet==nil then return end;
            
            					if sheet.classeBBV == "0" then
            						self.classeBBV.hint = "BBV = 1/3 do NEP.";
            					elseif sheet.classeBBV == "1" then
            						self.classeBBV.hint = "BBV = 2 + 1/2 do NEP.";
            					else
            						self.classeBBV.hint = "BBV = 1/3 do NEP.";
            					end;
        end, obj);

    obj._e_event9 = obj.classePericia:addEventListener("onChange",
        function (_)
            if sheet==nil then return end;
            
            					if sheet.classePericia == "0" then
            						self.classePericia.hint = "2 + modificador de inteligência por nível, 7 perícias de classe.";
            					elseif sheet.classePericia == "1" then
            						self.classePericia.hint = "4 + modificador de inteligência por nível, 13 perícias de classe.";
            					elseif sheet.classePericia == "2" then
            						self.classePericia.hint = "6 + modificador de inteligência por nível, 18 perícias de classe.";
            					elseif sheet.classePericia == "3" then
            						self.classePericia.hint = "8 + modificador de inteligência por nível, 22 perícias de classe.";
            					else
            						self.classePericia.hint = "2 + modificador de inteligência por nível, 7 perícias de classe.";
            					end;
        end, obj);

    obj._e_event10 = obj.classeDVs:addEventListener("onChange",
        function (_)
            if sheet==nil then return end;
            
            					if sheet.classeDVs == "0" then
            						self.classeDVs.hint = "1d6 + modificador de constituição por nível.";
            					elseif sheet.classeDVs == "1" then
            						self.classeDVs.hint = "1d8 + modificador de constituição por nível.";
            					elseif sheet.classeDVs == "2" then
            						self.classeDVs.hint = "1d10 + modificador de constituição por nível.";
            					elseif sheet.classeDVs == "3" then
            						self.classeDVs.hint = "1d12 + modificador de constituição por nível.";
            					else
            						self.classeDVs.hint = "1d6 + modificador de constituição por nível.";
            					end;
        end, obj);

    obj._e_event11 = obj.classePoderes:addEventListener("onChange",
        function (_)
            if sheet==nil then return end;
            
            					if sheet.classePoderes == "0" then
            						self.classePoderes.hint = "Inferior: seus poderes seguem a progressão mais lenta conhecida (x1).";
            					elseif sheet.classePoderes == "1" then
            						self.classePoderes.hint = "Menor: seus poderes surgem mais lentamente que em outras pessoas (x1,125).";
            					elseif sheet.classePoderes == "2" then
            						self.classePoderes.hint = "Moderada: seus poderes crescem de forma mediana (x1,25).";
            					elseif sheet.classePoderes == "3" then
            						self.classePoderes.hint = "Maior: seus poderes crescem mais rápido que na maioria (x1,375).";
            					elseif sheet.classePoderes == "4" then
            						self.classePoderes.hint = "Superior: seus poderes crescem a velocidade surpreendente e assustadora (x1,5).";
            					else
            						self.classePoderes.hint = "Inferior: seus poderes seguem a progressão mais lenta conhecida (x1).";
            					end;
        end, obj);

    obj._e_event12 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            
            					sheet.classePontos = 	(tonumber(sheet.classeBBA) or 0) + 
            											(tonumber(sheet.classeBBF) or 0) + 
            											(tonumber(sheet.classeBBR) or 0) + 
            											(tonumber(sheet.classeBBV) or 0) + 
            											(tonumber(sheet.classePericia) or 0) + 
            											(tonumber(sheet.classeDVs) or 0) + 
            											(tonumber(sheet.classePoderes) or 0);
        end, obj);

    obj._e_event13 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            
            					local dv =  ((tonumber(sheet.classeDVs) or 0) + 3) * 2;
            					local nep = (tonumber(sheet.nep) or 1);
            					local con = (tonumber(sheet.efetModCon) or 0) * nep;
            
            					if sheet.tracoRobusto then
            						sheet.dvs = nep .. "d" .. dv .. "+" .. con .. "+" .. nep;
            					else
            						sheet.dvs = nep .. "d" .. dv .. "+" .. con;
            					end;
        end, obj);

    obj._e_event14 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            
            					local nep = (tonumber(sheet.nep) or 1);
            
            					if sheet.classeBBA == "0" then
            						sheet.bba = math.floor(nep/2);
            					elseif sheet.classeBBA == "1" then
            						sheet.bba = math.floor(nep*3/4);
            					elseif sheet.classeBBA == "2" then
            						sheet.bba = nep;
            					end;
            
            					if sheet.classeBBF == "0" then
            						sheet.baseFort = math.floor(nep/3);
            					elseif sheet.classeBBF == "1" then
            						sheet.baseFort = 2 + math.floor(nep/2);
            					end;
            
            					if sheet.classeBBR == "0" then
            						sheet.baseRef = math.floor(nep/3);
            					elseif sheet.classeBBR == "1" then
            						sheet.baseRef = 2 + math.floor(nep/2);
            					end;
            
            					if sheet.classeBBV == "0" then
            						sheet.baseVon = math.floor(nep/3);
            					elseif sheet.classeBBV == "1" then
            						sheet.baseVon = 2 + math.floor(nep/2);
            					end;
        end, obj);

    obj._e_event15 = obj.button1:addEventListener("onClick",
        function (_)
            self.rclListaDosTalentos:append();
        end, obj);

    obj._e_event16 = obj.button2:addEventListener("onClick",
        function (_)
            self.rclListaDosOutros:append();
        end, obj);

    obj._e_event17 = obj.button3:addEventListener("onClick",
        function (_)
            self.rclListaDasCaracteristicasClasse:append();
        end, obj);

    obj._e_event18 = obj.button4:addEventListener("onClick",
        function (_)
            self.rclListaDasCaracteristicasSemProgressao:append();
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
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

        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.classeBBV ~= nil then self.classeBBV:destroy(); self.classeBBV = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.popHabilidade ~= nil then self.popHabilidade:destroy(); self.popHabilidade = nil; end;
        if self.rclListaDasCaracteristicasSemProgressao ~= nil then self.rclListaDasCaracteristicasSemProgressao:destroy(); self.rclListaDasCaracteristicasSemProgressao = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.classeBBR ~= nil then self.classeBBR:destroy(); self.classeBBR = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.classeBBF ~= nil then self.classeBBF:destroy(); self.classeBBF = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rclListaDosOutros ~= nil then self.rclListaDosOutros:destroy(); self.rclListaDosOutros = nil; end;
        if self.classeBBA ~= nil then self.classeBBA:destroy(); self.classeBBA = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.classeDVs ~= nil then self.classeDVs:destroy(); self.classeDVs = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.classePoderes ~= nil then self.classePoderes:destroy(); self.classePoderes = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.rclListaDosTalentos ~= nil then self.rclListaDosTalentos:destroy(); self.rclListaDosTalentos = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.rclListaDasCaracteristicasClasse ~= nil then self.rclListaDasCaracteristicasClasse:destroy(); self.rclListaDasCaracteristicasClasse = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.classePericia ~= nil then self.classePericia:destroy(); self.classePericia = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFichaRPGmeister4_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFichaRPGmeister4_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFichaRPGmeister4_svg = {
    newEditor = newfrmFichaRPGmeister4_svg, 
    new = newfrmFichaRPGmeister4_svg, 
    name = "frmFichaRPGmeister4_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFichaRPGmeister4_svg = _frmFichaRPGmeister4_svg;
Firecast.registrarForm(_frmFichaRPGmeister4_svg);

return _frmFichaRPGmeister4_svg;
