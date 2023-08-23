require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmCities()
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
    obj:setName("frmCities");
    obj:setAlign("client");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setAlign("left");
    obj.rectangle1:setWidth(210);
    obj.rectangle1:setColor("black");
    obj.rectangle1:setMargins({right=10});
    obj.rectangle1:setName("rectangle1");

    obj.rclDestalhesDaCidade = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclDestalhesDaCidade:setParent(obj.rectangle1);
    obj.rclDestalhesDaCidade:setAlign("client");
    obj.rclDestalhesDaCidade:setMargins({top=5});
    obj.rclDestalhesDaCidade:setName("rclDestalhesDaCidade");
    obj.rclDestalhesDaCidade:setField("listaDeDestalhesDaCidade");
    obj.rclDestalhesDaCidade:setTemplateForm("frmCitySelection");
    obj.rclDestalhesDaCidade:setLayout("vertical");
    obj.rclDestalhesDaCidade:setSelectable(true);

    obj.boxDetalhesDaCidade = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhesDaCidade:setParent(obj.scrollBox1);
    obj.boxDetalhesDaCidade:setAlign("client");
    obj.boxDetalhesDaCidade:setName("boxDetalhesDaCidade");
    obj.boxDetalhesDaCidade:setVisible(false);

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.boxDetalhesDaCidade);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setName("rectangle2");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.rectangle2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox2);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(50);
    obj.layout1:setName("layout1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(0);
    obj.label1:setTop(5);
    obj.label1:setWidth(100);
    obj.label1:setHeight(20);
    obj.label1:setText("Tamanho");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setHitTest(true);
    obj.label1:setName("label1");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.layout1);
    obj.comboBox1:setLeft(90);
    obj.comboBox1:setTop(5);
    obj.comboBox1:setWidth(130);
    obj.comboBox1:setHeight(20);
    obj.comboBox1:setField("tamanho");
    obj.comboBox1:setItems({'Lugarejo','Povoado','Aldeia','Vila Pequena','Vila Grande','Cidade Pequena','Cidade Grande','Metrópole','Metrópole Planar'});
    obj.comboBox1:setFontSize(11);
    obj.comboBox1:setName("comboBox1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(200);
    obj.label2:setTop(5);
    obj.label2:setWidth(100);
    obj.label2:setHeight(20);
    obj.label2:setText("Tipo");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setHitTest(true);
    obj.label2:setName("label2");

    obj.cidade_tipo = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cidade_tipo:setParent(obj.layout1);
    obj.cidade_tipo:setLeft(280);
    obj.cidade_tipo:setTop(5);
    obj.cidade_tipo:setWidth(100);
    obj.cidade_tipo:setHeight(20);
    obj.cidade_tipo:setField("tipo");
    obj.cidade_tipo:setName("cidade_tipo");
    obj.cidade_tipo:setItems({'Rural','Fronteira','Civil','Urbana'});
    obj.cidade_tipo:setHint("");
    obj.cidade_tipo:setFontSize(11);

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout1);
    obj.label3:setLeft(400);
    obj.label3:setTop(5);
    obj.label3:setWidth(100);
    obj.label3:setHeight(20);
    obj.label3:setText("Composição Racial");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setFontSize(11);
    obj.label3:setHitTest(true);
    obj.label3:setName("label3");

    obj.cidade_composicao = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cidade_composicao:setParent(obj.layout1);
    obj.cidade_composicao:setLeft(500);
    obj.cidade_composicao:setTop(5);
    obj.cidade_composicao:setWidth(130);
    obj.cidade_composicao:setHeight(20);
    obj.cidade_composicao:setField("composicao");
    obj.cidade_composicao:setName("cidade_composicao");
    obj.cidade_composicao:setItems({'Isolada','Miscigenada','Integrada'});
    obj.cidade_composicao:setFontSize(11);

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout1);
    obj.label4:setLeft(620);
    obj.label4:setTop(5);
    obj.label4:setWidth(100);
    obj.label4:setHeight(20);
    obj.label4:setText("Economia");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setFontSize(11);
    obj.label4:setHitTest(true);
    obj.label4:setName("label4");

    obj.cidade_economia = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cidade_economia:setParent(obj.layout1);
    obj.cidade_economia:setLeft(700);
    obj.cidade_economia:setTop(5);
    obj.cidade_economia:setWidth(100);
    obj.cidade_economia:setHeight(20);
    obj.cidade_economia:setField("economia");
    obj.cidade_economia:setName("cidade_economia");
    obj.cidade_economia:setItems({'Fabricação','Agropecuária','Exploração','Vendas'});
    obj.cidade_economia:setFontSize(11);

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.layout1);
    obj.checkBox1:setLeft(810);
    obj.checkBox1:setTop(5);
    obj.checkBox1:setWidth(100);
    obj.checkBox1:setHeight(20);
    obj.checkBox1:setField("capital");
    obj.checkBox1:setText("Capital");
    obj.checkBox1:setName("checkBox1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setLeft(900);
    obj.button1:setTop(5);
    obj.button1:setWidth(100);
    obj.button1:setHeight(45);
    obj.button1:setText("Aleatorio");
    obj.button1:setHorzTextAlign("center");
    obj.button1:setFontSize(15);
    obj.button1:setHint("Cria uma cidade aleatoria. ");
    obj.button1:setName("button1");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout1);
    obj.label5:setLeft(0);
    obj.label5:setTop(30);
    obj.label5:setWidth(100);
    obj.label5:setHeight(20);
    obj.label5:setText("População");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setFontSize(11);
    obj.label5:setHint("Quantidade de adultos. Crianças e Idosos é cerca de 30% desse valor. ");
    obj.label5:setHitTest(true);
    obj.label5:setName("label5");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setLeft(100);
    obj.edit1:setTop(30);
    obj.edit1:setWidth(100);
    obj.edit1:setHeight(20);
    obj.edit1:setField("populacao");
    obj.edit1:setType("number");
    obj.edit1:setMin(0);
    obj.edit1:setName("edit1");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout1);
    obj.label6:setLeft(200);
    obj.label6:setTop(30);
    obj.label6:setWidth(100);
    obj.label6:setHeight(20);
    obj.label6:setText("Limite de PO");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setFontSize(11);
    obj.label6:setHint("Preço do item mais caro da cidade. ");
    obj.label6:setHitTest(true);
    obj.label6:setName("label6");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setLeft(300);
    obj.edit2:setTop(30);
    obj.edit2:setWidth(100);
    obj.edit2:setHeight(20);
    obj.edit2:setField("limitePO");
    obj.edit2:setName("edit2");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout1);
    obj.label7:setLeft(400);
    obj.label7:setTop(30);
    obj.label7:setWidth(100);
    obj.label7:setHeight(20);
    obj.label7:setText("Riqueza Total");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setFontSize(11);
    obj.label7:setHint("Quantidade de dinheiro que pode ser usada em vendas e compras de um mesmo tipo de item. ");
    obj.label7:setHitTest(true);
    obj.label7:setName("label7");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout1);
    obj.edit3:setLeft(500);
    obj.edit3:setTop(30);
    obj.edit3:setWidth(100);
    obj.edit3:setHeight(20);
    obj.edit3:setField("riqueza");
    obj.edit3:setName("edit3");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout1);
    obj.dataLink1:setFields({'populacao','tipo'});
    obj.dataLink1:setName("dataLink1");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout1);
    obj.label8:setLeft(600);
    obj.label8:setTop(30);
    obj.label8:setWidth(100);
    obj.label8:setHeight(20);
    obj.label8:setText("Fundação");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setFontSize(11);
    obj.label8:setHint("Ano de fundaçãoda cidade. ");
    obj.label8:setHitTest(true);
    obj.label8:setName("label8");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout1);
    obj.edit4:setLeft(700);
    obj.edit4:setTop(30);
    obj.edit4:setWidth(100);
    obj.edit4:setHeight(20);
    obj.edit4:setField("fundacao");
    obj.edit4:setName("edit4");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox2);
    obj.layout2:setAlign("top");
    obj.layout2:setHeight(425);
    obj.layout2:setName("layout2");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout2);
    obj.label9:setAlign("top");
    obj.label9:setHeight(20);
    obj.label9:setText("Descrição");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setMargins({bottom=5});
    obj.label9:setName("label9");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.layout2);
    obj.richEdit1:setAlign("client");
    obj.richEdit1:setField("descricao");
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit1, "defaultFontSize",  "12");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setName("richEdit1");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox2);
    obj.layout3:setAlign("top");
    obj.layout3:setHeight(425);
    obj.layout3:setName("layout3");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout3);
    obj.label10:setAlign("top");
    obj.label10:setHeight(20);
    obj.label10:setText("Historia");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setMargins({bottom=5});
    obj.label10:setName("label10");

    obj.richEdit2 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit2:setParent(obj.layout3);
    obj.richEdit2:setAlign("client");
    obj.richEdit2:setField("historia");
    lfm_setPropAsString(obj.richEdit2, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit2, "defaultFontSize",  "12");
    lfm_setPropAsString(obj.richEdit2, "defaultFontColor",  "white");
    obj.richEdit2:setName("richEdit2");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox2);
    obj.layout4:setAlign("top");
    obj.layout4:setHeight(425);
    obj.layout4:setName("layout4");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout4);
    obj.label11:setAlign("top");
    obj.label11:setHeight(20);
    obj.label11:setText("Boatos");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setMargins({bottom=5});
    obj.label11:setName("label11");

    obj.richEdit3 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit3:setParent(obj.layout4);
    obj.richEdit3:setAlign("client");
    obj.richEdit3:setField("boatos");
    lfm_setPropAsString(obj.richEdit3, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit3, "defaultFontSize",  "12");
    lfm_setPropAsString(obj.richEdit3, "defaultFontColor",  "white");
    obj.richEdit3:setName("richEdit3");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox2);
    obj.layout5:setAlign("top");
    obj.layout5:setHeight(50);
    obj.layout5:setName("layout5");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout5);
    obj.label12:setLeft(0);
    obj.label12:setTop(0);
    obj.label12:setWidth(100);
    obj.label12:setHeight(20);
    obj.label12:setText("Politica");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setName("label12");

    obj.checkBox2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.layout5);
    obj.checkBox2:setLeft(100);
    obj.checkBox2:setTop(0);
    obj.checkBox2:setWidth(100);
    obj.checkBox2:setHeight(20);
    obj.checkBox2:setField("politica_1");
    obj.checkBox2:setText("Monarquia");
    obj.checkBox2:setHint("O poder é hereditário e possui apenas duas classes sociais: nobreza e plebe.");
    obj.checkBox2:setName("checkBox2");

    obj.checkBox3 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.layout5);
    obj.checkBox3:setLeft(200);
    obj.checkBox3:setTop(0);
    obj.checkBox3:setWidth(100);
    obj.checkBox3:setHeight(20);
    obj.checkBox3:setField("politica_2");
    obj.checkBox3:setText("Tribal");
    obj.checkBox3:setHint("O poder é dado ao mais capaz e se ele for julgado incapaz pode perder esse direito.");
    obj.checkBox3:setName("checkBox3");

    obj.checkBox4 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.layout5);
    obj.checkBox4:setLeft(300);
    obj.checkBox4:setTop(0);
    obj.checkBox4:setWidth(100);
    obj.checkBox4:setHeight(20);
    obj.checkBox4:setField("politica_3");
    obj.checkBox4:setText("Feudal");
    obj.checkBox4:setHint("O poder é hereditário, mas possui varias classes sociais de nobreza e plebe.");
    obj.checkBox4:setName("checkBox4");

    obj.checkBox5 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.layout5);
    obj.checkBox5:setLeft(400);
    obj.checkBox5:setTop(0);
    obj.checkBox5:setWidth(100);
    obj.checkBox5:setHeight(20);
    obj.checkBox5:setField("politica_4");
    obj.checkBox5:setText("República");
    obj.checkBox5:setHint("O governo é criado através de eleições onde apenas os representantes do povo (como um conselho ou assembleia) podem votar e escolher o seu líder.");
    obj.checkBox5:setName("checkBox5");

    obj.checkBox6 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox6:setParent(obj.layout5);
    obj.checkBox6:setLeft(500);
    obj.checkBox6:setTop(0);
    obj.checkBox6:setWidth(100);
    obj.checkBox6:setHeight(20);
    obj.checkBox6:setField("politica_5");
    obj.checkBox6:setText("Democracia");
    obj.checkBox6:setHint("Todos os cidadãos têm o direito de votar para escolher seu líder. Observe que nem todos da sociedade podem ser considerados cidadãos, mas diferente da república é um grupo muito maior.");
    obj.checkBox6:setName("checkBox6");

    obj.checkBox7 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox7:setParent(obj.layout5);
    obj.checkBox7:setLeft(600);
    obj.checkBox7:setTop(0);
    obj.checkBox7:setWidth(100);
    obj.checkBox7:setHeight(20);
    obj.checkBox7:setField("politica_6");
    obj.checkBox7:setText("Magocracia");
    obj.checkBox7:setHint("O governante é o conjurador arcano mais poderoso.");
    obj.checkBox7:setName("checkBox7");

    obj.checkBox8 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox8:setParent(obj.layout5);
    obj.checkBox8:setLeft(700);
    obj.checkBox8:setTop(0);
    obj.checkBox8:setWidth(100);
    obj.checkBox8:setHeight(20);
    obj.checkBox8:setField("politica_7");
    obj.checkBox8:setText("Teocracia");
    obj.checkBox8:setHint("O governante é o conjurador divino mais poderoso de determinada religião.");
    obj.checkBox8:setName("checkBox8");

    obj.checkBox9 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox9:setParent(obj.layout5);
    obj.checkBox9:setLeft(800);
    obj.checkBox9:setTop(0);
    obj.checkBox9:setWidth(100);
    obj.checkBox9:setHeight(20);
    obj.checkBox9:setField("politica_8");
    obj.checkBox9:setText("Plutocracia");
    obj.checkBox9:setHint("O poder é exercido pela pessoa mais rica.");
    obj.checkBox9:setName("checkBox9");

    obj.checkBox10 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox10:setParent(obj.layout5);
    obj.checkBox10:setLeft(900);
    obj.checkBox10:setTop(0);
    obj.checkBox10:setWidth(100);
    obj.checkBox10:setHeight(20);
    obj.checkBox10:setField("politica_9");
    obj.checkBox10:setText("Outro");
    obj.checkBox10:setHint("");
    obj.checkBox10:setName("checkBox10");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout5);
    obj.label13:setLeft(0);
    obj.label13:setTop(25);
    obj.label13:setWidth(100);
    obj.label13:setHeight(20);
    obj.label13:setText("Militarização");
    obj.label13:setHorzTextAlign("center");
    obj.label13:setName("label13");

    obj.cidade_militarizacao = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cidade_militarizacao:setParent(obj.layout5);
    obj.cidade_militarizacao:setLeft(100);
    obj.cidade_militarizacao:setTop(25);
    obj.cidade_militarizacao:setWidth(100);
    obj.cidade_militarizacao:setHeight(20);
    obj.cidade_militarizacao:setField("militarizacao");
    obj.cidade_militarizacao:setName("cidade_militarizacao");
    obj.cidade_militarizacao:setItems({'Baixo','Médio','Alto','Guerra'});
    obj.cidade_militarizacao:setHint("");
    obj.cidade_militarizacao:setFontSize(11);

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout5);
    obj.label14:setLeft(200);
    obj.label14:setTop(25);
    obj.label14:setWidth(100);
    obj.label14:setHeight(20);
    obj.label14:setText("Guardas");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setHitTest(true);
    obj.label14:setHint("Número de guardas patrulhando as ruas a qualquer momento e diariamente. ");
    obj.label14:setName("label14");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout5);
    obj.rectangle3:setLeft(300);
    obj.rectangle3:setTop(25);
    obj.rectangle3:setWidth(100);
    obj.rectangle3:setHeight(20);
    obj.rectangle3:setColor("black");
    obj.rectangle3:setStrokeColor("white");
    obj.rectangle3:setStrokeSize(1);
    obj.rectangle3:setName("rectangle3");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout5);
    obj.label15:setLeft(300);
    obj.label15:setTop(25);
    obj.label15:setWidth(100);
    obj.label15:setHeight(20);
    obj.label15:setField("guardas");
    obj.label15:setHorzTextAlign("center");
    obj.label15:setHitTest(true);
    obj.label15:setHint("Número de guardas patrulhando as ruas a qualquer momento e diariamente. ");
    obj.label15:setName("label15");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout5);
    obj.label16:setLeft(400);
    obj.label16:setTop(25);
    obj.label16:setWidth(100);
    obj.label16:setHeight(20);
    obj.label16:setText("Reservistas");
    obj.label16:setHorzTextAlign("center");
    obj.label16:setHitTest(true);
    obj.label16:setHint("Número de guardas não oficiais ou de folga. Podem ser chamados para ajudar em caso de emergencias e demoram cerca de uma hora para todos chegarem.");
    obj.label16:setName("label16");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout5);
    obj.rectangle4:setLeft(500);
    obj.rectangle4:setTop(25);
    obj.rectangle4:setWidth(100);
    obj.rectangle4:setHeight(20);
    obj.rectangle4:setColor("black");
    obj.rectangle4:setStrokeColor("white");
    obj.rectangle4:setStrokeSize(1);
    obj.rectangle4:setName("rectangle4");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout5);
    obj.label17:setLeft(500);
    obj.label17:setTop(25);
    obj.label17:setWidth(100);
    obj.label17:setHeight(20);
    obj.label17:setField("reservistas");
    obj.label17:setHorzTextAlign("center");
    obj.label17:setHitTest(true);
    obj.label17:setHint("Número de guardas não oficiais ou de folga. Podem ser chamados para ajudar em caso de emergencias e demoram cerca de uma hora para todos chegarem.");
    obj.label17:setName("label17");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layout5);
    obj.dataLink2:setFields({'populacao','militarizacao'});
    obj.dataLink2:setName("dataLink2");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox2);
    obj.layout6:setAlign("top");
    obj.layout6:setHeight(425);
    obj.layout6:setName("layout6");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout6);
    obj.label18:setAlign("top");
    obj.label18:setHeight(20);
    obj.label18:setText("Poderes");
    obj.label18:setHorzTextAlign("center");
    obj.label18:setMargins({bottom=5});
    obj.label18:setName("label18");

    obj.richEdit4 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit4:setParent(obj.layout6);
    obj.richEdit4:setAlign("client");
    obj.richEdit4:setField("poderes");
    lfm_setPropAsString(obj.richEdit4, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit4, "defaultFontSize",  "12");
    lfm_setPropAsString(obj.richEdit4, "defaultFontColor",  "white");
    obj.richEdit4:setName("richEdit4");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox2);
    obj.layout7:setAlign("top");
    obj.layout7:setHeight(425);
    obj.layout7:setName("layout7");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout7);
    obj.label19:setAlign("top");
    obj.label19:setHeight(20);
    obj.label19:setText("Pessoas Importantes");
    obj.label19:setHorzTextAlign("center");
    obj.label19:setMargins({bottom=5});
    obj.label19:setName("label19");

    obj.richEdit5 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit5:setParent(obj.layout7);
    obj.richEdit5:setAlign("client");
    obj.richEdit5:setField("pessoas");
    lfm_setPropAsString(obj.richEdit5, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit5, "defaultFontSize",  "12");
    lfm_setPropAsString(obj.richEdit5, "defaultFontColor",  "white");
    obj.richEdit5:setName("richEdit5");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox2);
    obj.layout8:setAlign("top");
    obj.layout8:setHeight(425);
    obj.layout8:setName("layout8");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout8);
    obj.label20:setAlign("top");
    obj.label20:setHeight(20);
    obj.label20:setText("Organizações");
    obj.label20:setHorzTextAlign("center");
    obj.label20:setMargins({bottom=5});
    obj.label20:setName("label20");

    obj.richEdit6 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit6:setParent(obj.layout8);
    obj.richEdit6:setAlign("client");
    obj.richEdit6:setField("organizacoes");
    lfm_setPropAsString(obj.richEdit6, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit6, "defaultFontSize",  "12");
    lfm_setPropAsString(obj.richEdit6, "defaultFontColor",  "white");
    obj.richEdit6:setName("richEdit6");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox2);
    obj.layout9:setAlign("top");
    obj.layout9:setHeight(425);
    obj.layout9:setName("layout9");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout9);
    obj.label21:setAlign("top");
    obj.label21:setHeight(20);
    obj.label21:setText("Religião");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setMargins({bottom=5});
    obj.label21:setName("label21");

    obj.richEdit7 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit7:setParent(obj.layout9);
    obj.richEdit7:setAlign("client");
    obj.richEdit7:setField("religiao");
    lfm_setPropAsString(obj.richEdit7, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit7, "defaultFontSize",  "12");
    lfm_setPropAsString(obj.richEdit7, "defaultFontColor",  "white");
    obj.richEdit7:setName("richEdit7");

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.scrollBox2);
    obj.scrollBox3:setAlign("top");
    obj.scrollBox3:setHeight(450);
    obj.scrollBox3:setName("scrollBox3");

    obj.mapRectangleCidade = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.mapRectangleCidade:setParent(obj.scrollBox3);
    obj.mapRectangleCidade:setWidth(600);
    obj.mapRectangleCidade:setHeight(450);
    obj.mapRectangleCidade:setColor("#333333");
    obj.mapRectangleCidade:setName("mapRectangleCidade");

    obj.mapImageCidade = GUI.fromHandle(_obj_newObject("image"));
    obj.mapImageCidade:setParent(obj.scrollBox3);
    obj.mapImageCidade:setWidth(600);
    obj.mapImageCidade:setHeight(450);
    obj.mapImageCidade:setField("mapaCidade");
    obj.mapImageCidade:setName("mapImageCidade");
    obj.mapImageCidade:setHitTest(true);
    obj.mapImageCidade:setStyle("proportional");
    obj.mapImageCidade:setHint("Clique para alterar Imagem. ");


							_obj_setProp(self.mapImageCidade.handle, "Stretch", true);
						


    obj._e_event0 = obj.rclDestalhesDaCidade:addEventListener("onEndEnumeration",
        function (_)
            if sheet~= nil then
            						local cidades = ndb.getChildNodes(sheet.listaDeDestalhesDaCidade);
            						local mapa = self:findControlByName("mapa");
            						local mapImage = self:findControlByName("mapImage");
            
            						for i=1, #cidades, 1 do
            							local node = cidades[i];
            
            							local altura = tonumber(sheet.altura) or 25;
            							local largura = tonumber(sheet.largura) or 25;
            
            							if node.name ~= nil then
            								local btn = self:findControlByName(node.name);
            								if btn == nil then
            									local btn = gui.newButton();
            									btn.parent = mapa;
            									btn.left = node.left;
            									btn.top = node.top;
            									btn.width = largura;
            									btn.height = altura;
            									btn.cursor = "handPoint";
            									btn.hint = node.nome;
            									btn.opacity = 0.35;
            									btn.name = node.name;
            									btn.text = "";
            									sheet.drag = false;
            
            									btn.onClick = function() 
            										if sheet.dragged then
            											sheet.dragged = false;
            											return;
            										end;
            										self.boxDetalhesDaCidade.node = node; 
            										self.boxDetalhesDaCidade.visible = (node ~= nil);
            										self.tabControl.tabIndex = 2;
            									end;
            
            									btn.onMouseDown = function(event) 
            										sheet.drag = true;
            										sheet.dragX = event.x;
            										sheet.dragY = event.y;
            									end;
            
            									btn.onMouseMove = function(event)
            										if sheet.drag~=true then return end;
            										sheet.dragged = true;
            
            										btn.top = btn.top + (event.y - sheet.dragY);
            										btn.left = btn.left + (event.x - sheet.dragX);
            									end;
            
            									btn.onMouseUp = function(event)
            										sheet.drag = false;
            
            										local mapImage = self:findControlByName("mapImage");
            										local scale = 1;
            										if mapImage.scale > 1 then
            											scale = 0.5;
            										end;
            										node.left = btn.left*scale;
            										node.top = btn.top*scale;
            									end;
            								end;
            							end;
            						end;
            
            						if self.rclDestalhesDaCidade.selectedNode== nil and #cidades>0 then
            							self.rclDestalhesDaCidade.selectedNode = cidades[1]; 
            						end;
            					end;
        end, obj);

    obj._e_event1 = obj.rclDestalhesDaCidade:addEventListener("onSelect",
        function (_)
            local node = self.rclDestalhesDaCidade.selectedNode;
            						self.boxDetalhesDaCidade.node = node; 
            						self.boxDetalhesDaCidade.visible = (node ~= nil);
        end, obj);

    obj._e_event2 = obj.rclDestalhesDaCidade:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            -- Esse codigo organiza a ordem dos objetos da lista. 
            					if nodeA.capital and not nodeB.capital then
            						return -1;
            					elseif not nodeA.capital and nodeB.capital then
            						return 1;
            			        elseif (tonumber(nodeA.contador) or 0) < (tonumber(nodeB.contador) or 0) then
            			            return -1;
            			        elseif (tonumber(nodeA.contador) or 0) > (tonumber(nodeB.contador) or 0) then
            			            return 1;
            			        else   
            			            return 0;
            			        end;
        end, obj);

    obj._e_event3 = obj.cidade_tipo:addEventListener("onChange",
        function (_)
            local node = self.boxDetalhesDaCidade.node;
            								if node==nil then return end;
            
            								local combobox = self:findControlByName("cidade_tipo");
            								if node.tipo=="Rural" then
            									combobox.hint = "A cidade fica em uma região isolada ou distante de outros lugares possuindo muitos habitantes de classes ligadas à natureza. Possuem 25% menos riquezas que outras cidades.";
            								elseif node.tipo=="Fronteira" then
            									combobox.hint = "A cidade fica perto da borda de duas regiões e por isso possui muitos habitantes temporários (mercadores, aventureiros, viajantes) possuindo como moradores personagens de classes urbanas, mas sendo possível encontrar personagens de classes diferentes em épocas diferentes.";
            								elseif node.tipo=="Civil" then
            									combobox.hint = "Estas regiões são habitas de forma similar as fronteiras, mas sem o grande número de visitantes. Portanto é mais difícil de encontrar personagens de classes muito diferentes.";
            								elseif node.tipo=="Urbana" then
            									combobox.hint = "Regiões densamente habitadas por diversos tipos de pessoas. É possível encontrar uma variedade maior de habitantes do que uma área de fronteira e em qualquer época. Possuem 25% mais riquezas que outras cidades.";
            								end;
        end, obj);

    obj._e_event4 = obj.cidade_composicao:addEventListener("onChange",
        function (_)
            local node = self.boxDetalhesDaCidade.node;
            								if node==nil then return end;
            
            								local combobox = self:findControlByName("cidade_composicao");
            								if node.composicao=="Isolada" then
            									combobox.hint = "Uma raça principal.";
            								elseif node.composicao=="Miscigenada" then
            									combobox.hint = "Algumas raças principais, mas uma boa porção de outras raças.";
            								elseif node.composicao=="Integrada" then
            									combobox.hint = "Divisão parcialmente igualitária de raças";
            								end;
        end, obj);

    obj._e_event5 = obj.cidade_economia:addEventListener("onChange",
        function (_)
            local node = self.boxDetalhesDaCidade.node;
            								if node==nil then return end;
            
            								local combobox = self:findControlByName("cidade_economia");
            								if node.economia =="Fabricação" then
            									combobox.hint = "Está cidade tem como principal atividade economica a compra de material prima para produção de objetos que são revendidos. ";
            								elseif node.economia =="Agropecuária" then
            									combobox.hint = "Está cidade tem como principal atividade economica a exportação de alimentos.";
            								elseif node.economia =="Exploração" then
            									combobox.hint = "Está cidade tem como principal atividade economica a exploração de recursos naturais. ";
            								elseif node.economia =="Vendas" then
            									combobox.hint = "Está cidade tem como principal atividade economica o comercio, sendo um centro de comprar e vendas. ";
            								end;
        end, obj);

    obj._e_event6 = obj.button1:addEventListener("onClick",
        function (_)
            local node = self.boxDetalhesDaCidade.node;
            								if node==nil then return end;
            
            								if node.tamanho == nil or node.tamanho == "" then
            									local tamanhos = {"Lugarejo","Povoado","Aldeia","Vila Pequena","Vila Grande","Cidade Pequena","Cidade Grande","Metrópole","Metrópole Planar"};
            									local index = math.random(9);
            
            									node.tamanho = tamanhos[index];
            								end;
            
            								if node.tipo == nil or node.tipo == "" then
            									local tipos = {"Rural","Fronteira","Civil","Urbana"};
            									local index = math.random(4);
            
            									node.tipo = tipos[index];
            								end;
            
            								if node.populacao == nil or node.populacao == "" then
            
            									if node.tamanho == "Lugarejo" then
            										node.populacao = math.random(20,80);
            									elseif node.tamanho == "Povoado" then
            										node.populacao = math.random(81,400);
            									elseif node.tamanho == "Aldeia" then
            										node.populacao = math.random(401,900);
            									elseif node.tamanho == "Vila Pequena" then
            										node.populacao = math.random(901,2000);
            									elseif node.tamanho == "Vila Grande" then
            										node.populacao = math.random(2001,5000);
            									elseif node.tamanho == "Cidade Pequena" then
            										node.populacao = math.random(5001,12000);
            									elseif node.tamanho == "Cidade Grande" then
            										node.populacao = math.random(12001,25000);
            									elseif node.tamanho == "Metrópole" then
            										node.populacao = math.random(25001,100000);
            									elseif node.tamanho == "Metrópole Planar" then
            										node.populacao = math.random(100001,200000);
            									end;
            
            								end;
            
            								if node.composicao == nil or node.composicao == "" then
            									local composicoes = {"Isolada","Miscigenada","Integrada"};
            									local index = math.random(3);
            
            									node.composicao = composicoes[index];
            								end;
            
            								if node.economia == nil or node.economia == "" then
            									local economias = {"Fabricação","Agropecuária","Exploração","Vendas"};
            									local index = math.random(4);
            
            									node.economia = economias[index];
            								end;
            
            								if node.politica_1~=true and node.politica_2~=true and node.politica_3~=true and node.politica_4~=true and node.politica_5~=true and node.politica_6~=true and node.politica_7~=true and node.politica_8~=true and node.politica_9~=true then
            									local index = math.random(9);
            
            									node["politica_" .. index] = true;
            								end;
            
            								if node.militarizacao == nil or node.militarizacao == "" then
            									local militarizacoes = {"Baixo","Médio","Alto","Guerra"};
            									local index = math.random(4);
            
            									node.militarizacao = militarizacoes[index];
            								end;
        end, obj);

    obj._e_event7 = obj.edit1:addEventListener("onChange",
        function (_)
            local node = self.boxDetalhesDaCidade.node;
            								if node==nil then return end;
            								if populacao == nil then return end;
            
            								local populacao = tonumber(node.populacao) or 0;
            
            								if populacao <=80 then
            									node.tamanho = "Lugarejo";
            								elseif populacao <=400 then
            									node.tamanho = "Povoado";
            								elseif populacao <=900 then
            									node.tamanho = "Aldeia";
            								elseif populacao <=2000 then
            									node.tamanho = "Vila Pequena";
            								elseif populacao <=5000 then
            									node.tamanho = "Vila Grande";
            								elseif populacao <=12000 then
            									node.tamanho = "Cidade Pequena";
            								elseif populacao <=25000 then
            									node.tamanho = "Cidade Grande";
            								elseif populacao <=100000 then
            									node.tamanho = "Metrópole";
            								else
            									node.tamanho = "Metrópole Planar";
            								end;
        end, obj);

    obj._e_event8 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.boxDetalhesDaCidade.node;
            								if node==nil then return end;
            
            								local populacao = tonumber(node.populacao) or 0;
            								local mult = 4;
            
            								if populacao >100000 then
            									mult = 6;
            								end;
            
            								-- Alterar mult por tipo de cidade
            								if node.tipo=="Rural" then
            									mult = mult * 0.75;
            								elseif node.tipo=="Urbana" then
            									mult = mult * 1.25;
            								end;
            
            								-- Limite de PO
            								local limite = math.floor(mult * populacao);
            								local riqueza = math.floor(limite * populacao / 20);
            								
            								while true do  
            									limite, k = string.gsub(limite, "^(-?%d+)(%d%d%d)", '%1,%2')
            									if (k==0) then
            									  break
            									end
            								end
            								limite = string.gsub(limite, ",", ".");
            
            								while true do  
            									riqueza, k = string.gsub(riqueza, "^(-?%d+)(%d%d%d)", '%1,%2')
            									if (k==0) then
            									  break
            									end
            								end
            								riqueza = string.gsub(riqueza, ",", ".");
            
            								node.limitePO = limite;
            
            								-- Riqueza Total
            								node.riqueza = riqueza;
        end, obj);

    obj._e_event9 = obj.cidade_militarizacao:addEventListener("onChange",
        function (_)
            local node = self.boxDetalhesDaCidade.node;
            								if node==nil then return end;
            
            								local mult = 1;
            								local combobox = self:findControlByName("cidade_militarizacao");
            								if node.militarizacao=="Baixo" then
            									combobox.hint = "-50% dos guardas e reservistas.";
            									mult = 0.5;
            								elseif node.militarizacao=="Médio" then
            									combobox.hint = "Quantidade normal de guardas e reservistas.";
            								elseif node.militarizacao=="Alto" then
            									combobox.hint = "+50% guardas e reservistas.";
            									mult = 1.5;
            								elseif node.militarizacao=="Guerra" then
            									combobox.hint = "+100% guardas e reservistas, considere que os reservistas vão estar prontos para lutar a qualquer hora (não é necessário esperar uma hora)";
            									mult = 2;
            								end;
        end, obj);

    obj._e_event10 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.boxDetalhesDaCidade.node;
            								if node==nil then return end;
            
            								local mult = 1;
            								if node.militarizacao=="Baixo" then
            									mult = 0.5;
            								elseif node.militarizacao=="Médio" then
            								elseif node.militarizacao=="Alto" then
            									mult = 1.5;
            								elseif node.militarizacao=="Guerra" then
            									mult = 2;
            								end;
            
            								local populacao = tonumber(node.populacao) or 0;
            
            								local guardas = math.max(math.floor(populacao * mult / 100), 1);
            								local reservistas = math.max(math.floor(populacao * mult / 20), 1);
            
            								node.guardas = guardas;
            								node.reservistas = reservistas;
        end, obj);

    obj._e_event11 = obj.mapImageCidade:addEventListener("onMouseDown",
        function (_, event)
            local node = self.boxDetalhesDaCidade.node;
            								node.event = event;
        end, obj);

    obj._e_event12 = obj.mapImageCidade:addEventListener("onClick",
        function (_)
            local node = self.boxDetalhesDaCidade.node;
            								if node==nil then return end;
            								local mesa = rrpg.getMesaDe(sheet);
            
            								if node.event.altKey then
            									-- Zoom control
            									local mapImageCidade = self:findControlByName("mapImageCidade");
            									local mapRectangleCidade = self:findControlByName("mapRectangleCidade");
            									local scale = 2;
            
            									if mapImageCidade.scale > 1 then
            										scale = 0.5;
            									end;
            
            									mapImageCidade.scale = mapImageCidade.scale * scale;
            									mapRectangleCidade.width = mapRectangleCidade.width * scale;
            									mapRectangleCidade.height = mapRectangleCidade.height * scale;
            								else
            									if not ndb.testPermission(sheet, "write") then return end;
            									-- Alterar Imagem
            									Dialogs.selectImageURL(nil,
            										function(url)
            											local node = self.boxDetalhesDaCidade.node;
            											node.mapaCidade = url;
            										end);
            								end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.cidade_militarizacao ~= nil then self.cidade_militarizacao:destroy(); self.cidade_militarizacao = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.mapImageCidade ~= nil then self.mapImageCidade:destroy(); self.mapImageCidade = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.boxDetalhesDaCidade ~= nil then self.boxDetalhesDaCidade:destroy(); self.boxDetalhesDaCidade = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.checkBox6 ~= nil then self.checkBox6:destroy(); self.checkBox6 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.checkBox8 ~= nil then self.checkBox8:destroy(); self.checkBox8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.checkBox7 ~= nil then self.checkBox7:destroy(); self.checkBox7 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.richEdit4 ~= nil then self.richEdit4:destroy(); self.richEdit4 = nil; end;
        if self.cidade_composicao ~= nil then self.cidade_composicao:destroy(); self.cidade_composicao = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.rclDestalhesDaCidade ~= nil then self.rclDestalhesDaCidade:destroy(); self.rclDestalhesDaCidade = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.richEdit7 ~= nil then self.richEdit7:destroy(); self.richEdit7 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.richEdit6 ~= nil then self.richEdit6:destroy(); self.richEdit6 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.cidade_tipo ~= nil then self.cidade_tipo:destroy(); self.cidade_tipo = nil; end;
        if self.richEdit3 ~= nil then self.richEdit3:destroy(); self.richEdit3 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.richEdit5 ~= nil then self.richEdit5:destroy(); self.richEdit5 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.checkBox10 ~= nil then self.checkBox10:destroy(); self.checkBox10 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.checkBox9 ~= nil then self.checkBox9:destroy(); self.checkBox9 = nil; end;
        if self.mapRectangleCidade ~= nil then self.mapRectangleCidade:destroy(); self.mapRectangleCidade = nil; end;
        if self.cidade_economia ~= nil then self.cidade_economia:destroy(); self.cidade_economia = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmCities()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmCities();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmCities = {
    newEditor = newfrmCities, 
    new = newfrmCities, 
    name = "frmCities", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmCities = _frmCities;
Firecast.registrarForm(_frmCities);

return _frmCities;
