<%@ page language="C#" autoeventwireup="true" validaterequest="false" enableeventvalidation="false" inherits="Zoomla.Website.manage.Shop.AddProduct, App_Web_5abfvvyw" enableviewstatemac="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>编辑商品</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="/JS/jquery.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
<script type="text/javascript" src="../Common/Common.js"></script> 
<link rel='stylesheet' type='text/css' href='/App_Themes/AdminDefaultTheme/doutime.css' />
<style type="text/css">
	#flotop	{width: 100%;}
	#flotop
	{
		height: 30px;
		background: url(../images/top_bg.gif) repeat-x;
		z-index: 99;
	}
	/*顶部高为30px导航样式**/
	#msgDiv, #mgDiv
	{
		z-index: 10001;
		width: 500px;
		height: 750px;
		background: white;
		border: #CCC 1px solid;
		position: absolute;
		left: 50%;
		top: 20%;
		font-size: 12px;
		margin-left: -225px;
		display: none;
	}
	#bDiv
	{
		display: none;
		position: absolute;
		top: 0px;left: 0px;right: 0px;background-color: #777;
		filter: progid:DXImageTransform.Microsoft.Alpha(style=3,opacity=25,finishOpacity=75)opacity: 0.6;
	}
	/*弹出层*/
	#msgShut, #mgShut
	{
		width: 30px;
		height: 20px;
		cursor: pointer;
		line-height: 20px;
		text-align: center;
		float: right;
		color: #F00;
		font-weight: bold;
	}
</style>
    <script language="JavaScript" type="text/JavaScript">
        var aid = 0;
        var showID = 0;
        var tID = 0;
        var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7");
        var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3", "Tabs4", "Tabs5", "Tabs6", "Tabs7");
        function ShowTabss(SID) {
            if (SID != tID) {
                if (document.getElementById(arrTabTitle[tID].toString()) != null)
                    document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
                if (document.getElementById(arrTabTitle[SID].toString()) != null)
                    document.getElementById(arrTabTitle[SID].toString()).className = "titlemouseover";
                if (document.getElementById(arrTabs[tID].toString()) != null)
                    document.getElementById(arrTabs[tID].toString()).style.display = "none";
                if (document.getElementById(arrTabs[SID].toString()) != null)
                    document.getElementById(arrTabs[SID].toString()).style.display = "";
                tID = SID;
                aid = SID;
            }
        }


        function ShowTable() {
            if (aid < 7) {
                aid = aid + 1;
            }
            if (aid < 7) {
                ShowTabss(aid);
            }
        }

        function showup() {
            if (aid > 0) {
                aid = aid - 1;
            }
            if (aid >= 0 && aid < 8) {
                ShowTabss(aid);
            }
        }

        function deleteRow(tableID, rowIndex, rowsid) {
            var ccd = confirm('你确定将此绑定的商品删除吗？');
            if (ccd) {
                var table = document.all[tableID]
                var bindstr = "," + document.getElementById("Hiddenbind").value + ",";
                rowsid = "," + rowsid + ",";
                var reg = new RegExp(rowsid, "g")
                bindstr = bindstr.replace(reg, ",");
                reg = new RegExp(",,", "g")
                bindstr = bindstr.replace(reg, ",");
                document.getElementById("Hiddenbind").value = bindstr;
                table.deleteRow(rowIndex);
                document.getElementById("Hiddenbind").value = document.getElementById("Hiddenbind").value.replace(reg, ",");
                if (document.getElementById("Hiddenbind").value == "" || document.getElementById("Hiddenbind").value == ",") {
                    document.getElementById("Span1").innerHTML = "";
                    document.getElementById("Hiddenbind").value = "";
                }
            }
        }

        function CheckAll(spanChk)//CheckBox全选
        {
            var oItem = spanChk.children;
            var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
            xState = theBox.checked;
            elm = theBox.form.elements;
            for (i = 0; i < elm.length; i++)
                if (elm[i].type == "checkbox" && elm[i].id != theBox.id && elm[i].id.indexOf("Item", false) > -1) {
                    if (elm[i].checked != xState)
                        elm[i].click();
                }
        }

        function SelectProducer() {
            window.open('Producerlist.aspx', '', 'width=600,height=450,resizable=0,scrollbars=yes');
        }
        //团购信息
        function OpenSelect2() {

            window.open('TGALL.aspx?shopid=<%=Request.QueryString["ID"] %>', '', 'width=600,height=450,resizable=0,scrollbars=yes');
            return false;
        }

        function OpenSelect() {

            window.open('AddbindPro.aspx?id=<%=Request.QueryString["ID"] %>', '', 'width=600,height=450,resizable=0,scrollbars=yes');
            return false;
        }

        function ProductsSelect(act) {
            window.open('ProductsSelect.aspx?act=' + act, '', 'width=600,height=450,resizable=0,scrollbars=yes');
        }

        function OpenprojectSelect() {

            window.open('projectSelect.aspx', '', 'width=600,height=450,resizable=0,scrollbars=yes');
            return false;
        }

        function ClearSelect() {
            document.getElementById("Span1").innerHTML = "";
            document.getElementById("Hiddenbind").value = "";
        }

        function SelectBrand() {
            window.open('Brandlist.aspx?producer=' + document.getElementById('Producer').value + '', '', 'width=600,height=450,resizable=0,scrollbars=yes');

        }

        function SetDisabled(checked) {
            document.getElementById('ProCode').disabled = checked;
        }


        function show(checked) {
            if (checked.value == 1) {
                document.getElementById("pifaji").style.display = "";
            }
            else {
                document.getElementById("pifaji").style.display = "none";
            }
        }

        function showpf() {
            if (document.getElementById("Wholesales_0").checked == true) {
                document.getElementById("pifaji").style.display = "";
            } else {
                document.getElementById("pifaji").style.display = "none";
            }
        }

        function Clearoption() {
            var hiddenidvalue = document.getElementById("OtherProject"); //获取已经存在的ID值

            for (var i = hiddenidvalue.options.length - 1; i >= 0; i--) {
                if (hiddenidvalue[i].selected == true) {
                    hiddenidvalue[i] = null;
                }
            }

        }

        function ShowGuess(obj) {
            switch (obj) {
                case 1:
                    document.getElementById("Guess1").style.display = "none";
                    document.getElementById("Guess2").style.display = "none";
                    break;
                case 2:
                    document.getElementById("Guess1").style.display = "";
                    document.getElementById("Guess2").style.display = "none";
                    break;
                case 3:
                    document.getElementById("Guess1").style.display = "none";
                    document.getElementById("Guess2").style.display = "";
                    break;
            }

             
        }

        function ShowInterference(i) {
            switch (i) {
                case 1:
                    document.getElementById("tableInterference").style.display = "none";
                    break;
                case 2:
                    document.getElementById("tableInterference").style.display = "";
                    document.getElementById("Panel1").style.display = "";
                    document.getElementById("Panel2").style.display = "none";
                    document.getElementById("Panel3").style.display = "none";
                    break;
                case 3:
                    document.getElementById("tableInterference").style.display = "";
                    document.getElementById("Panel1").style.display = "none";
                    document.getElementById("Panel2").style.display = "";
                    document.getElementById("Panel3").style.display = "none";
                    break;
                case 4:
                    document.getElementById("tableInterference").style.display = "";
                    document.getElementById("Panel1").style.display = "none";
                    document.getElementById("Panel2").style.display = "none";
                    document.getElementById("Panel3").style.display = "";
                    break;
            }
        }

        function buttonclick(username, userid) {
            var objlist = document.getElementById("ListBox1");
            node = document.createElement("<option   value='" + userid + "'>");
            text = document.createTextNode(username);
            node.appendChild(text);
            objlist.appendChild(node);

            for (var i = 0; i < objlist.length; i++) {
                objlist.options[i].selected = true;
            }
        }
        function deldata(userid) {
            var objlist = document.getElementById("ListBox1");
            for (i = objlist.length - 1; i >= 0; i--) {
                if (objlist.options[i].value == userid) {
                    objlist.remove(i);
                }
            }
        }

        function change(obj) {
            if (obj == "3") {
                document.getElementById("tpoint").style.display = "";
            } else {
                document.getElementById("tpoint").style.display = "none";
            }
        }

        function deleteRow(tableID, rowIndex, rowsid) {
            var ccd = confirm('确定删除此花材吗？');
            if (ccd) {
                var table = document.all[tableID]
                var bindstr = "," + document.getElementById("HiddenField1").value + ",";
                rowsid = "," + rowsid + ",";
                var reg = new RegExp(rowsid, "g");
                bindstr = bindstr.replace(reg, ",");
                reg = new RegExp(",,", "g")
                bindstr = bindstr.replace(reg, ",");
                document.getElementById("HiddenField1").value = bindstr;
                table.deleteRow(rowIndex);
                document.getElementById("HiddenField1").value = document.getElementById("HiddenField1").value.replace(reg, ",");
                if (document.getElementById("HiddenField1").value == "" || document.getElementById("HiddenField1").value == ",") {
                    document.getElementById("ShiPrice").disabled = "";
                    document.getElementById("LinPrice").disabled = "";
                    document.getElementById("txtDayPrice").disabled = "";
                    document.getElementById("txtBookPrice").disabled = "";
                    document.getElementById("Span2").innerHTML = "";
                    document.getElementById("HiddenField1").value = "";
                } else {
                    numChange('0');
                }
            }
        }

        function ClearSelect2() {
            document.getElementById("Span2").innerHTML = "";
            document.getElementById("HiddenField1").value = "";
            document.getElementById("ShiPrice").value = "";
            document.getElementById("LinPrice").value = "";
            document.getElementById("hfprice").value = "";
            document.getElementById("txtDayPrice").value = "";
            document.getElementById("txtBookPrice").value = "";
            document.getElementById("hfBookprice").value = "";
            document.getElementById("hfFesPrice").value = "";
            document.getElementById("LinPrice").disabled = "";
            document.getElementById("ShiPrice").disabled = "";
            document.getElementById("txtDayPrice").disabled = "";
            document.getElementById("txtBookPrice").disabled = "";
        }

        //花材数量改变
        function numChange(obj) {
            if (document.getElementById("HiddenField1").value != "") {
                if (obj != '0' && isNaN(document.getElementById("pronums" + obj).value)) {
                    document.getElementById("ShiPrice").value = "";
                    document.getElementById("LinPrice").value = "";
                    document.getElementById("hfprice").value = "";
                    document.getElementById("txtDayPrice").value = "";
                    document.getElementById("txtBookPrice").value = "";
                    document.getElementById("hfBookprice").value = "";
                    document.getElementById("hfFesPrice").value = "";
                    alert("请输入数字");
                } else {
                    var hidPrice = 0;   //花材总价格
                    var bookprices = 0;   //花材预订价
                    var festprices = 0;   //花材节日价
                    var hid = document.getElementById("HiddenField1").value;
                    var hidNum = "";
                    var hids = hid.split(',');
                    for (i = 0; i < hids.length; i++) {
                        if (hids[i] != "") {
                            var num = 0;
                            var price = 0;
                            var bookprice = 0;  //预订价
                            var festprice = 0;   //节日价
                            if (document.getElementById("pronums" + hids[i]).value != "")
                                num = parseInt(document.getElementById("pronums" + hids[i]).value);
                            price = parseFloat(document.getElementById("prices" + hids[i]).innerText.substring(1));
                            bookprice = parseFloat(document.getElementById("bookprice" + hids[i]).innerText.substring(1));
                            festprice = parseFloat(document.getElementById("festprice" + hids[i]).innerText.substring(1));
                            hidNum = hidNum + "," + num;
                            hidPrice = hidPrice + (num * price);
                            bookprices = bookprices + (num * bookprice);
                            festprices = festprices + (num * festprice);
                        } else {
                            hidNum = hidNum + ",0";
                        }
                    }
                    document.getElementById("ShiPrice").value = hidPrice;
                    document.getElementById("LinPrice").value = hidPrice;
                    document.getElementById("hfprice").value = hidPrice;
                    document.getElementById("hfBookprice").value = bookprices;
                    document.getElementById("hfFesPrice").value = festprices;
                    document.getElementById("txtDayPrice").value = bookprices;
                    document.getElementById("txtBookPrice").value = festprices;
                    document.getElementById("LinPrice").disabled = "disabled";
                    document.getElementById("ShiPrice").disabled = "disabled";
                    document.getElementById("txtDayPrice").disabled = "disabled";
                    document.getElementById("txtBookPrice").disabled = "disabled";
                    if (hidNum.substring(0, 1) == ",") {
                        hidNum = hidNum.substring(1);
                    }
                    if (hidNum.substring(hidNum.length - 1) == ",") {
                        hidNum = hidNum.substring(0, hidNum.length - 1);
                    }
                    document.getElementById("hidNum").value = hidNum;
                }
            }
        }
    </script>
    <script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
    <script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
    <link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
</head>
<body onload="showpf();">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="r_navigation">后台管理&gt;&gt; 商城管理 &gt;&gt;<a href="ProductManage.aspx">商品管理</a><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        &gt;&gt;<asp:Label ID="topmenu" runat="server" Text="添加商品"></asp:Label>
    </div>
        <asp:HiddenField ID="HiddenUser" runat="server" />
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="TabTitle0" class="titlemouseover" onclick="ShowTabss(0)">
                基本信息
            </td>
            <td id="TabTitle1" class="tabtitle" onclick="ShowTabss(1)">
                介绍及图片
            </td>
            <td id="TabTitle2" class="tabtitle" onclick="ShowTabss(2)">
                其他信息
            </td>
            <td id="TabTitle3" class="tabtitle" onclick="ShowTabss(3)">
                价格设置
            </td>
            <td id="TabTitle4" class="tabtitle" onclick="ShowTabss(4)">
                促销设置
            </td>
            <td id="TabTitle7" class="tabtitle" onclick="ShowTabss(7)">
                添加花材
            </td>
            <td id="TabTitle5" class="tabtitle" onclick="ShowTabss(5)">
                商品属性
            </td>
            <td id="TabTitle6" class="tabtitle" onclick="ShowTabss(6)">
                竞拍选项
            </td>
            <td id="Td3" class="tabnone">
            </td>
            <td id="Td1" class="tabnone">
                <img src="/images/up.gif" title="上一项" onclick="showup()" />
            </td>
            <td id="Td2" class="tabnone">
                <img src="/images/down.gif" title="下一项" onclick="ShowTable()" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
        <tr class="tdbg">
            <td valign="top" style="margin-top: 0px; margin-left: 0px;">
                <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                    <tbody id="Tabs0">
                        <tr class="tdbg">
                            <td width="20%" class="tdbgleft">
                                <strong>所属节点：</strong>
                            </td>
                            <td>
                                <asp:Label ID="nodename" runat="server"></asp:Label>
                                <asp:HiddenField ID="HdnNode" runat="server" />
                                <asp:HiddenField ID="HdnModel" runat="server" />
                                <asp:HiddenField ID="ClickType" runat="server" />
                                <asp:HiddenField ID="ID" runat="server" Value="0" />
                                <asp:HiddenField ID="I_tem" runat="server" />
                                <asp:HiddenField ID="ComModelID" runat="server" />
                                <asp:HiddenField ID="Hiddenbind" runat="server" />
                                <asp:HiddenField ID="hidNum" runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft">
                                <strong>所属专题：</strong>
                            </td>
                            <td>
                                <asp:HiddenField ID="HdnSpec" runat="server" />
                                <asp:Label ID="Categoryname" runat="server"></asp:Label>
                                <div id="lblSpec" runat="server">
                                </div>
                                <input type="button" id="Button1" value="添加到专题" class="C_input" onclick="AddToSpecial()"
                                    style="width: 100px" />
                                <asp:HiddenField ID="Categoryid" runat="server" />
                                &nbsp;
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" style="height: 26px">
                                <strong>商品编号：</strong>
                            </td>
                            <td style="width: 592px; height: 26px;">
                                <asp:TextBox ID="ProCode" runat="server" disabled="disabled" Width="155px" class="l_input" />
                                <asp:CheckBox ID="CheckBox1" Text="自动编号" onclick="SetDisabled(this.checked)" runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft" style="height: 26px">
                                <strong>捆绑销售：</strong>
                            </td>
                            <td style="height: 26px;">
                                <asp:Button ID="Button3" class="C_input" Style="width: 100px" runat="server" Text="添加捆绑商品"
                                    OnClientClick="OpenSelect();return false;" />
                                <asp:Button ID="Button4" class="C_input" Style="width: 100px" runat="server" Text="清空捆绑列表"
                                    OnClientClick="ClearSelect();return false;" /><br />
                                <span runat="server" id="Span1"></span>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>自选数量：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="Propeid" runat="server" Text="0" Width="51px" class="l_input" />
                                <font color="red">(0为不允许自选购买;如果捆绑商品为空,则此数值为无效)</font>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>条形码：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="BarCode" runat="server" Width="155px" class="l_input" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品名称：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="Proname" runat="server" Width="442px" class="l_input" />
                                <span class="STYLE1">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="Proname" Display="Dynamic" ErrorMessage="商品名称不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></span>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>关键字：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="Kayword" runat="server" Width="155px" class="l_input" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品单位：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="ProUnit" runat="server" Width="155px" class="l_input" Text="件" />
                                <span class="STYLE1">*<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="ProUnit" Display="Dynamic" ErrorMessage="商品单位不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></span>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品重量：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="Weight" runat="server" Width="91px" class="l_input" />
                                千克（Kg）<asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"
                                    ControlToValidate="Weight" ErrorMessage="商品重量必须是数字!" ValidationExpression="^(-?\d+)(\.\d+)?$"
                                    SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" style="height: 26px">
                                <strong>服务期限：</strong>
                            </td>
                            <td style="height: 26px">
                                <asp:TextBox ID="ServerPeriod" runat="server" Width="53px" class="l_input" />
                                <asp:DropDownList ID="ServerType" runat="server">
                                    <asp:ListItem Selected="True" Value="3">年</asp:ListItem>
                                    <asp:ListItem Value="2">月</asp:ListItem>
                                    <asp:ListItem Value="1">日</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"
                                    ControlToValidate="ServerPeriod" ErrorMessage="服务期限必须是数字!" ValidationExpression="^\d+$"
                                    SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品类型：</strong>
                            </td>
                            <td>
                                <asp:RadioButtonList ID="ProClass" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="ProClass_SelectedIndexChanged"
                                    AutoPostBack="True">
                                    <asp:ListItem Selected="True" Value="1">正常销售</asp:ListItem>
                                    <asp:ListItem Value="2">特价处理</asp:ListItem>
                                    <asp:ListItem Value="3">积分商品</asp:ListItem>
                                    <asp:ListItem Value="4">团购</asp:ListItem>
                                </asp:RadioButtonList>
                                <div id="TG">
                                    <asp:MultiView ID="MultiView1" runat="server">
                                        <asp:View ID="View1" runat="server">
                                            <table>
                                                <tr>
                                                    <td>团购订金：</td>
                                                    <td><asp:TextBox ID="txtColoneDeposit" runat="server" class="l_input"></asp:TextBox>元
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6"
                                                runat="server" ControlToValidate="txtColoneDeposit" ErrorMessage="团购订金格式不对!" ValidationExpression="\d+[.]?\d*"
                                                Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        最低团购人数：
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="NumberText" runat="server" class="l_input"></asp:TextBox>人&nbsp;
                                                    </td>
                                                    <td>
                                                        团购价格:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TGPrice" runat="server" class="l_input"></asp:TextBox>元
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        开始时间
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="ColonelStartTimetxt" runat="server"  onclick="calendar()" class="l_input"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        结束时间:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="ColonelendTimetxt" runat="server"  onclick="calendar()" class="l_input"></asp:TextBox>
                                                        <asp:HiddenField ID="hfEndTime" runat="server" />
                                                        <asp:HiddenField ID="hfBeginTime" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4" align="center">
                                                        <asp:Button ID="Button14" class="C_input" Style="width: 100px" runat="server" Text="添加"
                                                            CausesValidation="false" OnClick="Button14_Click" />
                                                        <asp:Button ID="Button15" class="C_input" Style="width: 100px" runat="server" Text="浏览价格"
                                                            CausesValidation="false" OnClientClick="OpenSelect2();return false;" />
                                                        <asp:Button ID="TGButtion" class="C_input" Style="width: 100px" runat="server" Text="取消"
                                                            CausesValidation="false" OnClick="TGButtion_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:View>
                                    </asp:MultiView>
                                </div>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>销售状态：</strong>
                            </td>
                            <td>
                                <asp:CheckBox ID="Sales" Text="打勾表示销售中，否则为停售状态" runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>属性设置：</strong>
                            </td>
                            <td>
                                <asp:CheckBox ID="istrue" runat="server" Text="审核通过" />
                                <asp:CheckBox ID="isnew" runat="server" Text="新品" />
                                <asp:CheckBox ID="ishot" runat="server" Text="热销" />
                                <asp:CheckBox ID="isbest" runat="server" Text="精品" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%" style="height: 24px">
                                <strong>点击数：</strong>
                            </td>
                            <td style="height: 24px; width: 592px;">
                                <asp:TextBox ID="txtCountHits" runat="server" class="l_input" Text="Label" />
                                <span class="STYLE1">*<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                    ControlToValidate="UpdateTime" Display="Dynamic" ErrorMessage="点击数不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></span>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%" style="height: 24px">
                                <strong>更新时间：</strong>
                            </td>
                            <td style="height: 24px; width: 592px;">
                                <asp:TextBox ID="UpdateTime" runat="server" class="l_input" />
                                <span class="STYLE1">*<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                                    ControlToValidate="UpdateTime" Display="Dynamic" ErrorMessage="更新时间不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></span>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>内容页模板：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="ModeTemplate" runat="server" class="l_input" />
                                <input type="button" class="C_input" style="width: 100px" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('ModeTemplate')+'&FilesDir=',650,480)" />
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="Tabs1" style="display: none">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>商品简介：</strong>
                            </td>
                            <td>用于首页及栏目页显示，最多255个字符<br/>
                                <asp:TextBox ID="Proinfo" runat="server" Height="87px" TextMode="MultiLine" Width="500px"
                                    class="l_input" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%" style="height: 24px">
                                <strong>详细介绍：</strong>
                            </td>
                            <td style="height: 24px; width: 80%;">
                                <textarea cols="80" id="Procontent" width="580px" height="200px" name="Procontent"
                                    rows="10" runat="server"></textarea>
                                <script id="headscript" type="text/javascript">
//<![CDATA[
                                    CKEDITOR.replace('Procontent',
{
    skin: 'v2',
    enterMode: 2,
    width:'100%',
    shiftEnterMode: 2
    //toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
});
//]]>
                                </script>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>商品清晰图：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="Clearimg" runat="server" Width="300px" class="l_input" /><iframe
                                    id="bigimgs" style="top: 2px" src="fileupload.aspx?menu=Clearimg" width="100%"
                                    height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
                            </td>
                        </tr>
                        <tr class="tdbg" id="addsmallimg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>商品缩略图：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="Thumbnails" runat="server" Width="300px" class="l_input" /><iframe
                                    id="smallimgs" style="top: 2px" src="fileupload.aspx?menu=Thumbnails" width="100%"
                                    height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="Tabs2" style="display: none">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>生 产 商：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="Producer" runat="server" Width="214px" class="l_input"></asp:TextBox>【<a
                                    href="###" onclick="SelectProducer();">请选择</a>】
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>品牌/商标：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="Brand" runat="server" Width="214px" class="l_input"></asp:TextBox>【<a
                                    href="###" onclick="SelectBrand();">请选择</a>】
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>缺货时允许购买:</strong>
                            </td>
                            <td>
                                <asp:CheckBox ID="Allowed" runat="server" Text="打勾表示缺货时允许购买， 否则缺货时不允许购买" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>限购数量:</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="Quota" runat="server" Width="100px" class="l_input">-1</asp:TextBox>
                                -1为不限制数量 0为不允许购买
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Quota"
                                    ErrorMessage="限购数量必须是数字!" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>最低购买数量:</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="DownQuota" runat="server" Width="100px" class="l_input">-1</asp:TextBox>
                                -1为不限制数量 0为不允许购买
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="DownQuota"
                                    ErrorMessage="最低购买数量必须是数字!" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>秒杀时间段:(限制购买时间)</strong>
                            </td>
                            <td>
                                从<asp:TextBox ID="TextBox1" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>
                                &nbsp;到
                                <asp:TextBox ID="TextBox2" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>
                                &nbsp;为止
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" style="height: 24px">
                                <strong>库存数量:</strong>
                            </td>
                            <td style="height: 24px">
                                <asp:TextBox ID="Stock" runat="server" Width="100px" class="l_input">10</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="Stock"
                                    ErrorMessage="库存数量必须是数字!" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" style="height: 24px">
                                <strong>库存报警下限:</strong>
                            </td>
                            <td style="height: 24px; width: 592px;">
                                <asp:TextBox ID="StockDown" runat="server" Width="100px" class="l_input">1</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="StockDown"
                                    ErrorMessage="库存报警下限必须是数字!" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>前台库存计算方式:</strong>
                            </td>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="25%">
                                            <asp:RadioButtonList ID="JisuanFs" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Selected="True" Value="0">实际库存</asp:ListItem>
                                                <asp:ListItem Value="1">虚拟库存</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td width="89%">
                                            （实际库存－已订购数）
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>税率设置:</strong>
                            </td>
                            <td>
                                <asp:RadioButtonList ID="Rateset" runat="server">
                                    <asp:ListItem Selected="True" Value="1">含税，不开发票时有税率优惠 </asp:ListItem>
                                    <asp:ListItem Value="2">含税，不开发票时没有税率优惠</asp:ListItem>
                                    <asp:ListItem Value="3">不含税，开发票时需要加收税费</asp:ListItem>
                                    <asp:ListItem Value="4">不含税，开发票时不需要加收税费</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品税率:</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="Rate" runat="server" Text="0" class="l_input" />
                                %
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
                                    ControlToValidate="Rate" ErrorMessage="商品税率必须是数字!" ValidationExpression="^(-?\d+)(\.\d+)?$"
                                    SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品推荐等级:</strong>
                            </td>
                            <td>
                                <asp:DropDownList ID="Dengji" runat="server">
                                    <asp:ListItem Value="5">★★★★★</asp:ListItem>
                                    <asp:ListItem Value="4">★★★★</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="3">★★★</asp:ListItem>
                                    <asp:ListItem Value="2">★★</asp:ListItem>
                                    <asp:ListItem Value="1">★</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="Tabs3" style="display: none">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>市场参考价：</strong>
                            </td>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td style="width: 23%; height: 21px;">
                                            <asp:TextBox ID="ShiPrice" runat="server" Width="93px" class="l_input" />元 <font
                                                color="red">*</font>
                                        </td>
                                        <td width="76%" style="height: 21px">
                                            购买时参考的市场零售价，可以比当前零售价高。<asp:RegularExpressionValidator ID="RegularExpressionValidator13"
                                                runat="server" ControlToValidate="ShiPrice" ErrorMessage="市场价格格式不对!" ValidationExpression="\d+[.]?\d*"
                                                Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator><asp:RequiredFieldValidator
                                                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="ShiPrice" ErrorMessage="市场价不能为空!"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>当前零售价：</strong>
                            </td>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td style="width: 23%; height: 20px;">
                                            <asp:HiddenField ID="hfprice" runat="server" />
                                            <asp:HiddenField ID="hfFesPrice" runat="server" />
                                            <asp:HiddenField ID="hfBookprice" runat="server" />
                                            <asp:TextBox ID="LinPrice" runat="server" Width="93px" class="l_input" />
                                            元 <font color="red">*</font>
                                        </td>
                                        <td width="78%" style="height: 20px">
                                            商店销售此商品时的价格。<asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server"
                                                ControlToValidate="LinPrice" ErrorMessage="零售价格式不对!" ValidationExpression="\d+[.]?\d*"
                                                Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator><asp:RequiredFieldValidator
                                                    ID="RequiredFieldValidator4" runat="server" ControlToValidate="LinPrice" ErrorMessage="零售价不能为空!"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            width="100%">
                            <td class="tdbgleft">
                                <strong>会员价:</strong>
                            </td>
                            <td>
                                <asp:UpdatePanel ID="UpdatePanel" runat="server">
                                    <ContentTemplate>
                                        <asp:RadioButtonList ID="rdoUserPrice" runat="server" RepeatDirection="Horizontal"
                                            AutoPostBack="True" OnSelectedIndexChanged="rdoUserPrice_SelectedIndexChanged">
                                            <asp:ListItem Value="0" Selected="True">会员价</asp:ListItem>
                                            <asp:ListItem Value="1">会员组</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <div id="userP" runat="server">
                                            会员价：<asp:TextBox ID="userPrice" runat='server' class="l_input" Width="35px"></asp:TextBox>元</div>
                                        <div id="divGroup" runat="server" visible="false">
                                            <asp:Repeater ID="repGroup" runat="server">
                                                <ItemTemplate>
                                                    <asp:HiddenField ID="groupID" runat="server" Value='<%#Eval("GroupID") %>' />
                                                    <%#Eval("GroupName")%>：<asp:TextBox ID="GroupPrice" runat='server' class="l_input"
                                                        Width="30px"></asp:TextBox>元
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            width="100%">
                            <td class="tdbgleft">
                                <strong>节日价格:</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDayPrice" runat="server" class="l_input" Height="19px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtDayPrice"
                                    ErrorMessage="节日价格格式不正确!" ValidationExpression="\d+[.]?\d*" Display="Dynamic"
                                    SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            width="100%">
                            <td class="tdbgleft">
                                <strong>节日时间:</strong>
                            </td>
                            <td>
                                <div id='hotelDiv'>
                                    <asp:TextBox ID='CheckInDate' runat="server" Text="yyyy-mm-dd" class="l_input"></asp:TextBox>至
                                    <asp:TextBox ID='CheckOutDate' runat="server" Text="yyyy-mm-dd" class="l_input"></asp:TextBox></div>
                                <input id='IntervallCheckInAndChekOut' value='1' type='hidden' />
                                <input id='CheckOut' type='hidden' runat="server" />
                                <script type='text/javascript' src='/JS/systemall.js'></script>
                                <script type='text/javascript' src='/JS/homecn.js'></script>
                                <asp:HiddenField ID="serverdate" runat="server" Value='2010-8-31' />
                                <div id='m_contentend'>
                                </div>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            width="100%">
                            <td class="tdbgleft">
                                <strong>预订价格:</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="txtBookPrice" runat="server" class="l_input" Height="19px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtBookPrice"
                                    ErrorMessage="预订价格格式不正确!" ValidationExpression="\d+[.]?\d*" Display="Dynamic"
                                    SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            width="100%">
                            <td class="tdbgleft">
                                <strong>预订时间:</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="txtBookDay" runat="server" class="l_input" Height="19px"></asp:TextBox>
                                <font color="red">节日时间提前N天为预订价</font>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtBookDay"
                                    ErrorMessage="预订时间格式不正确!" ValidationExpression="\d+" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>打折优惠率:</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRecommend" runat="server" Text="0" Width="93px" class="l_input" />
                                %
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtRecommend"
                                    ErrorMessage="优惠率必须是数字!" ValidationExpression="^(-?\d+)(\.\d+)?$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdbgleft">
                                <strong>积分价格:</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPoint" runat="server" Text="0" Width="93px" class="l_input" Enabled="false" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtRecommend"
                                    ErrorMessage="积分价格必须是数字!" ValidationExpression="^(-?\d+)(\.\d+)?$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>允许批发：</strong>
                            </td>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="Wholesales" runat="server" RepeatDirection="Horizontal"
                                                Width="106px">
                                                <asp:ListItem Value="1" onclick="show(this);">是</asp:ListItem>
                                                <asp:ListItem Selected="True" Value="0" onclick="show(this);">否</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr id="pifaji" style="display: none" onmouseover="this.className='tdbgmouseover'"
                                        onmouseout="this.className='tdbg'">
                                        <td>
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td style="height: 24px">
                                                        ① 一次性购买此商品数量满
                                                        <asp:TextBox ID="s1" runat="server" Text='10' Width="49px" class="l_input" />
                                                        时，批发价为
                                                        <asp:TextBox ID="j1" runat="server" Width="68px" class="l_input">0</asp:TextBox>
                                                        元
                                                    </td>
                                                </tr>
                                                <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                    <td height="24">
                                                        ② 一次性购买此商品数量满
                                                        <asp:TextBox ID="s2" runat="server" Text='50' Width="49px" class="l_input" />
                                                        时，批发价为
                                                        <asp:TextBox ID="j2" runat="server" Width="68px" class="l_input">0</asp:TextBox>
                                                        元
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="24">
                                                        ③ 一次性购买此商品数量满
                                                        <asp:TextBox ID="s3" runat="server" Text='100' Width="49px" class="l_input" />
                                                        时，批发价为
                                                        <asp:TextBox ID="j3" runat="server" Width="68px" class="l_input">0</asp:TextBox>
                                                        元
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>允许单独销售：</strong>
                            </td>
                            <td>
                                <asp:RadioButtonList ID="Wholesaleone" runat="server" RepeatDirection="Horizontal"
                                    Width="106px">
                                    <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
                                    <asp:ListItem Value="0">否</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>设置为礼品：</strong>
                            </td>
                            <td>
                                <div style="float: left">
                                    <asp:RadioButtonList ID="Largess" runat="server" RepeatDirection="Horizontal" Width="106px">
                                        <asp:ListItem Value="1">是</asp:ListItem>
                                        <asp:ListItem Value="0" Selected="True">否</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <div style="float: left; width: auto">
                                    <font color="red">(自选数量大于0时设为礼品无效)</font></div>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>礼品价格：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="Largesspirx" runat="server" Width="91px" class="l_input">0</asp:TextBox>
                                元 <font color="red">设置为礼品且允许单独销售时的价格</font>
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="Tabs4" style="display: none">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>促销方案：</strong>
                            </td>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td rowspan="7" width="39px">
                                            <asp:RadioButtonList ID="ProjectType" runat="server" Width="39px" CellSpacing="0"
                                                CellPadding="0">
                                                <asp:ListItem Value="1" Selected="True" style="line-height: 26px"></asp:ListItem>
                                                <asp:ListItem Value="2" style="line-height: 25px"></asp:ListItem>
                                                <asp:ListItem Value="3" style="line-height: 25px"></asp:ListItem>
                                                <asp:ListItem Value="4" style="line-height: 26px"></asp:ListItem>
                                                <asp:ListItem Value="5" style="line-height: 26px"></asp:ListItem>
                                                <asp:ListItem Value="6" style="line-height: 26px">6</asp:ListItem>
                                                <asp:ListItem Value="7" style="line-height: 27px">7</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td width="96%" height="22">
                                            &nbsp;不促销
                                        </td>
                                    </tr>
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td height="22">
                                            &nbsp;买&nbsp;<asp:TextBox class="l_input" ID="ProjectPronum2" Text="1" runat="server"
                                                Width="26px"></asp:TextBox>件此商品 可以送一件同样商品
                                        </td>
                                    </tr>
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td style="height: 22px">
                                            &nbsp;买&nbsp;<asp:TextBox Text="1" ID="ProjectPronum3" class="l_input" runat="server"
                                                Width="26px"></asp:TextBox>件此商品 可以送一件其他商品 赠品名称：<asp:TextBox ID="Productsname3" class="l_input"
                                                    runat="server" ReadOnly="true" onclick="ProductsSelect('Productsname1');"></asp:TextBox><asp:Button
                                                        ID="Button6" class="C_input" runat="server" Text="浏览..." OnClientClick="ProductsSelect('3');return false;" />
                                            <asp:HiddenField ID="HiddenField3" runat="server" />
                                        </td>
                                    </tr>
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td height="22">
                                            &nbsp;送&nbsp;<asp:TextBox ID="ProjectPronum4" class="l_input" runat="server" Text="1"
                                                Width="26px"></asp:TextBox>件同样商品
                                        </td>
                                    </tr>
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td style="height: 22px">
                                            &nbsp;送&nbsp;<asp:TextBox ID="ProjectPronum5" runat="server" class="l_input" Text="1"
                                                Width="26px"></asp:TextBox>件其他商品 送一件赠品名称：<asp:TextBox ID="Productsname5" class="l_input"
                                                    runat="server" ReadOnly="true" onclick="ProductsSelect('Productsname2');"></asp:TextBox><asp:Button
                                                        ID="Button7" runat="server" class="C_input" Text="浏览..." OnClientClick="ProductsSelect('5');return false;" />
                                            <asp:HiddenField ID="HiddenField5" runat="server" />
                                        </td>
                                    </tr>
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td height="22">
                                            &nbsp;加&nbsp;<asp:TextBox ID="ProjectMoney6" class="l_input" runat="server" Text="1"
                                                Width="26px"></asp:TextBox>元钱送商品 送一件赠品名称：<asp:TextBox ID="Productsname6" runat="server"
                                                    class="l_input" ReadOnly="true" onclick="ProductsSelect('Productsname3');"></asp:TextBox><asp:Button
                                                        ID="Button8" runat="server" class="C_input" Text="浏览..." OnClientClick="ProductsSelect('6');return false;" />
                                            <asp:HiddenField ID="HiddenField6" runat="server" />
                                        </td>
                                    </tr>
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td height="22">
                                            &nbsp;满&nbsp;<asp:TextBox ID="ProjectMoney7" runat="server" Text="1" Width="26px"
                                                class="l_input"></asp:TextBox>元钱送商品 送一件赠品名称：<asp:TextBox ID="Productsname7" class="l_input"
                                                    runat="server" ReadOnly="true" onclick="ProductsSelect('Productsname4');"></asp:TextBox><asp:Button
                                                        ID="Button5" class="C_input" runat="server" Text="浏览..." OnClientClick="ProductsSelect('7');return false;" />
                                            <asp:HiddenField ID="HiddenField7" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%" style="height: 19px">
                                <strong>其他促销方案：</strong>
                            </td>
                            <td style="height: 19px">
                                <asp:Button ID="Button9" class="C_input" runat="server" Text="绑定其他促销方案" Width="261px"
                                    OnClientClick="OpenprojectSelect();return false;" /><br />
                                <asp:ListBox ID="OtherProject" runat="server" Height="127px" Width="261px" SelectionMode="Multiple">
                                </asp:ListBox>
                                <br />
                                <asp:Button ID="Button10" class="C_input" runat="server" Text="删除选中方案" Width="260px"
                                    OnClientClick="Clearoption();return false;" />
                                <br />
                                <font color="red"><b>选中状态</b></font><font color="green">的方案将被更新</font> 支持<b>Ctrl</b>或<b>Shift</b>键多选
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>购物积分：</strong>
                            </td>
                            <td>
                                购买&nbsp;<asp:TextBox ID="IntegralNum" runat="server" Text="1" Width="26px" class="l_input"></asp:TextBox>&nbsp;件此商品可以得到
                                <asp:TextBox ID="Integral" runat="server" Width="53px" class="l_input" 
                                    MaxLength="3" />
                                积分
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server"
                                    ControlToValidate="Integral" ErrorMessage="积分只能是数字或小数！" 
                                    ValidationExpression="^\d+\.?\d+$|^\d+$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="Tabs7" style="display: none">
                        <tr class="tdbg">
                            <td class="tdbgleft" style="height: 26px">
                                <strong>选择花材：</strong>
                            </td>
                            <td style="height: 26px;">
                                <input id="Button12" class="C_input" style="width: 100px" type="button" onclick="SelectFlower()"
                                    value="添加花材" />
                                <asp:Button ID="Button13" class="C_input" Style="width: 100px" runat="server" Text="清空花材"
                                    OnClientClick="ClearSelect2();return false;" /><br />
                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                <span runat="server" id="Span2"></span>
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="Tabs5" style="display: none">
                        <asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
                    </tbody>
                    <tbody id="Tabs6" style="display: none;">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%" style="height: 19px">
                                <strong>功能启用：</strong>
                            </td>
                            <td style="height: 19px">
                                <input id="Radio1" type="radio" checked="true" name="Guess" runat="server" onclick="ShowGuess(1)" />关闭功能
                                <input id="Radio2" type="radio" name="Guess" runat="server" onclick="ShowGuess(2)" />开启秒杀
                                <input id="Radio3" type="radio" name="Guess" runat="server" onclick="ShowGuess(3)" />开启竞拍
                            </td>
                        </tr>
                        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td colspan="2">
                                <table cellpadding="0" id="Guess1" style="display: none" cellspacing="0" border="0"
                                    width="100%">
                                    <tr class="tdbg">
                                        <td class="tdbgleft">
                                            <strong>秒杀时间段:(限制购买时间)</strong>
                                        </td>
                                        <td>
                                            从<asp:TextBox ID="TextBox3" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>
                                            &nbsp;到<asp:TextBox ID="TextBox4" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>&nbsp;为止
                                        </td>
                                    </tr>
                                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td class="tdbgleft">
                                            <strong>购买数量:(每次购买数量)</strong>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server" Width="86px" class="l_input">1</asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td class="tdbgleft">
                                            <strong>开放秒杀商品数量:</strong>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server" Width="64px" class="l_input">1</asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table id="Guess2" style="display: none" width="100%" border="0" cellpadding="0"
                                    cellspacing="0">
                                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td class="tdbgleft" width="20%" style="height: 19px">
                                            <strong>竞拍时间段：</strong>
                                        </td>
                                        <td style="height: 19px">
                                            从<asp:TextBox ID="txtStime" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>
                                            &nbsp;到<asp:TextBox ID="txtEtime" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>&nbsp;为止
                                        </td>
                                    </tr>
                                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td class="tdbgleft" width="20%" style="height: 19px">
                                            <strong>竞拍模式：</strong>
                                        </td>
                                        <td style="height: 19px">
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                                <asp:ListItem Selected="True" Value="1">限时竞拍（以出价高，并15秒内无人抢拍为获胜）</asp:ListItem>
                                                <asp:ListItem Value="2">幸运竞拍（以出价低并不重复为获胜）</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:HiddenField ID="cid" runat="server" />
                                        </td>
                                    </tr>
                                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td class="tdbgleft" width="20%" style="height: 19px">
                                            <strong>起拍价格：</strong>
                                        </td>
                                        <td style="height: 19px">
                                            <asp:TextBox ID="TextBox11" runat="server" Width="51px" class="l_input">0</asp:TextBox>(默认为0开始)
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox11"
                                                ErrorMessage="起拍价格格式不正确!" ValidationExpression="\d+[.]?\d*" Display="Dynamic"
                                                SetFocusOnError="True"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td class="tdbgleft" width="20%" style="height: 19px">
                                            <strong>干扰设置：</strong>
                                        </td>
                                        <td style="height: 19px">
                                            <input id="Radio4" type="radio" name="Interference" checked runat="server" onclick="ShowInterference(1)" />关闭干扰
                                            <input id="Radio5" type="radio" name="Interference" runat="server" onclick="ShowInterference(2)" />按达到人数干扰
                                            <input id="Radio6" type="radio" name="Interference" runat="server" onclick="ShowInterference(3)" />按达到金额干扰
                                            <input id="Radio7" type="radio" name="Interference" runat="server" onclick="ShowInterference(4)" />按倒计时干扰
                                        </td>
                                    </tr>
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td colspan="2">
                                            <table id="tableInterference" width="100%" cellpadding="0" style="display: none"
                                                cellspacing="0" border="0">
                                                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                    <td class="tdbgleft" width="20%" style="height: 19px">
                                                        <strong>干扰参数：</strong>
                                                    </td>
                                                    <td style="height: 19px">
                                                        <table width="100%" id="Panel1">
                                                            <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                                <td>
                                                                    当参与竞拍人数达到<asp:TextBox ID="TextBox5" runat="server" Width="53px" onkeyup="this.value=this.value.replace(/\D/g,'')">0</asp:TextBox>人开始干扰
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table width="100%" id="Panel2">
                                                            <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                                <td>
                                                                    出价额度达到<asp:TextBox ID="TextBox6" runat="server" Width="53px" onkeyup="this.value=this.value.replace(/\D/g,'')">0</asp:TextBox>元开始干扰
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table width="100%" id="Panel3">
                                                            <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                                <td>
                                                                    倒计时达到<asp:TextBox ID="TextBox12" runat="server" Width="53px" onkeyup="this.value=this.value.replace(/\D/g,'')">0</asp:TextBox>秒开始干扰
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <span style="display: none">干扰次数:<asp:TextBox ID="TextBox9" runat="server" Width="78px">0</asp:TextBox>次/人
                                                            干扰时间间隔:<asp:TextBox ID="TextBox10" runat="server" Width="78px">0</asp:TextBox><asp:DropDownList
                                                                ID="DropDownList1" runat="server">
                                                                <asp:ListItem Value="Hours">小时</asp:ListItem>
                                                                <asp:ListItem Value="Minutes">分钟</asp:ListItem>
                                                                <asp:ListItem Value="Second">秒</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <br />
                                                        </span>
                                                    </td>
                                                </tr>
                                                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                                                    style="display: none">
                                                    <td class="tdbgleft" width="20%" style="height: 19px">
                                                        <strong>干扰价格：</strong>
                                                    </td>
                                                    <td style="height: 19px">
                                                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                                                            <asp:ListItem Selected="True" Value="1">随机价格</asp:ListItem>
                                                            <asp:ListItem Value="2">最低价格</asp:ListItem>
                                                            <asp:ListItem Value="3">最高价格</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                    <td class="tdbgleft" width="20%" style="height: 19px">
                                                        <strong>参与干扰会员：</strong>
                                                    </td>
                                                    <td style="height: 19px">
                                                        <asp:HiddenField ID="hfNum" runat="server" />
                                                        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" Width="200px"
                                                            Height="150px"></asp:ListBox>
                                                        <br />
                                                        <input id="Button11" type="button" value="选择用户" class="C_input" onclick="window.open('/manage/Common/SelectUser.aspx', '', 'width=600,height=450,resizable=0,scrollbars=yes');" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                    ShowSummary="False" />
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
        <tr>
            <td align="left" style="height: 59px">
                &nbsp; &nbsp;
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存商品信息" runat="server" OnClientClick="numChange('0');"
                    OnClick="EBtnSubmit_Click1" />
                <asp:Button ID="btnAdd" class="C_input" Text="添加为新商品" runat="server" OnClick="btnAdd_Click" />
                <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='ProductManage.aspx?NodeID=<%=Request.QueryString["NodeID"]%>'" id="Button2" />               
            </td>
        </tr>
    </table>
    <div id="flotop">
        <div id="msgDiv">
            <div id="msgShut">
                关闭</div>
            <div id="msgDetail">
            </div>
        </div>
        <div id="bgDiv">
        </div>
    </div>
    <script type="text/javascript">
        function SelectFlower() {
            //背景
            var bgObj = document.getElementById("bgDiv");
            bgObj.style.width = (document.body.offsetWidth) + "px";
            bgObj.style.height = screen.height + "px";

            //定义窗口
            var msgObj = document.getElementById("msgDiv");
            msgObj.style.marginTop = -75 + document.documentElement.scrollTop + "px";
            //关闭
            document.getElementById("msgShut").onclick = function () {
                bgObj.style.display = msgObj.style.display = "none";
            }
            msgObj.style.display = bgObj.style.display = "block";
            msgDetail.innerHTML = "<p align=center><iframe src='/User/UserShop/SelectFlower.aspx?type=2' width='500' height='750' scrolling='no' frameborder='0'></iframe></p>"

        }
		function GV(id, value) {
            $("#" + id).val(value);
        }
    </script>
    </form>
</body>
</html>
<script type="text/javascript">
    function GetPicurl(imgurl) {
        //var optlen = document.getElementById("selectpic").options.length;
        var optlen = 1;
        var isin = 0;
        //alert(imgurl)
        for (var i = 0; i < optlen; i++) {
            //var doctxt = document.getElementById("selectpic").options.item(i);doctxt.value.toLowerCase() == imgurl.toLowerCase() || 
            var doctxt = imgurl;
            if (imgurl.toLowerCase().indexOf("http://") > -1) {
                isin = 1;
            }
        }

        if (isin == 0) {
            var option = document.createElement("option");
            option.text = imgurl;
            option.value = imgurl;
            //document.getElementById("selectpic").add(option);
        }
    }
</script>