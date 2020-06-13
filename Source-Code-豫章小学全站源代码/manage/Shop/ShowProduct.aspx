<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_ShowProduct, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>商品预览</title>
<style type="text/css">
form{margin: 0;padding: 0;}
form, ul{padding: 0px;margin: 0px;}
*{ margin:0px; padding:0px;}
.r_navigation{	margin-bottom: 0px;line-height: 24px;border: 1px solid #9bbde6;background: #f6fdf6;	text-align: left;clear: both;color: #000;}
.r_n_pic{float: left;width: 30px;height: 20px;margin: 1px 0px 0px;background: url('../../App_Themes/AdminDefaultTheme/images/localGIF.gif') no-repeat center;
display: block;}
.r_navigation a, #r_navigation:link{font: normal normal normal 12px/24px Arial,"宋体",Helvetica,sans-serif;	text-decoration: none;color: #000;}
a:link, a:visited, a:active{color: #000000;}
a:link, a:visited
{font: 12px "宋体";	color: #000;text-decoration: none;}
a{text-decoration: none;}
.clearbox, .clearbox2{	border-top: 1px solid transparent !important;margin-top: -1px !important;border-top: 0px;margin-top: 0px;height: 5px;clear: both;background: none;font-size: 0px;}
td{	line-height: 150%;}
body, th, td, input, button, textarea{	font-family: "宋体";	font-size: 12px;	margin-left: 0px;}
.titlemouseover{background: url('../../App_Themes/AdminDefaultTheme/Images/titlebg1.gif');
color: #ffffff; }
.tabtitle, .titlemouseover{	width: 80px;height: 22px;/*line-height: 120%;*/	padding:1px;padding-top: 1px;font-weight: normal;cursor: pointer;}
.tabtitle{background: url('../../App_Themes/AdminDefaultTheme/Images/titlebg2.gif'); }
.border, .TableWrap{border: 1px solid #9bbde6;background: #fff;}
.tdbg{	background: #f6fdf6;	/*line-height: 120%;*/	padding:2px;}
.tdbgleft{background: #e0f7e5;	/*line-height: 120%;*/	padding:2px;}
.C_input{background: url('../../App_Themes/AdminDefaultTheme/images/input_bg.gif') repeat-x center;
margin: 2px;overflow: visible;border: 1px solid #8F9F56;cursor: pointer;  padding-top:3px;padding-left: 13px; padding-right: 14px;padding-bottom: 3px;}
.l_input{ height:18px; line-height:18px;border:1px solid #0c6; }
select{	font-family: "Tahoma";	font-size: 12px;}
ul{list-style-type: none;}
.tdbg li{margin-left: 15px !important;}
</style>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
<script language="JavaScript" type="text/JavaScript">
    var aid = 0;
    var showID = 0;
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3", "Tabs4", "Tabs5", "Tabs6");
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
            if (aid <= 0) {
                document.getElementById("upbutton").style.display = "none";
            }
            if (aid <= 7)
            { document.getElementById("Editdown").style.display = ""; }
            if (aid >= 7) {
                document.getElementById("Editdown").style.display = "none";
                document.getElementById("upbutton").style.display = "";
            }
            if (aid >= 1) {
                document.getElementById("upbutton").style.display = "";
            }

        }

        
    }


    window.onload = function() {
        document.getElementById("upbutton").style.display = "none";
    }

    function ShowTable() {
        aid = aid + 1;
        if (aid < 8) {
            ShowTabss(aid);
        }
        if (aid >= 7) {
            document.getElementById("Editdown").style.display = "none";
            document.getElementById("upbutton").style.display = "";
        }
        if (aid >= 1) {
            document.getElementById("upbutton").style.display = "";
        }

    }

    function showup() {
        aid = aid - 1;
        if (aid >= 0 && aid < 8) {
            ShowTabss(aid);
        }
        if (aid <= 0) {
            document.getElementById("upbutton").style.display = "none";
        }
        if (aid <= 7)
        { document.getElementById("Editdown").style.display = ""; }
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

                break;
            case 3:
                document.getElementById("tableInterference").style.display = "";
                document.getElementById("Panel2").style.display = "";
                document.getElementById("Panel1").style.display = "none";
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


</script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
</head>
<body onload="showpf();">
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span><a href="ProductManage.aspx">
            商品管理</a></span>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        &gt;&gt;
        <asp:Label ID="topmenu" runat="server" Text="预览商品"></asp:Label></div>
    <div class="clearbox">
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
       
            <td id="TabTitle5" class="tabtitle" onclick="ShowTabss(5)">
                商品属性
            </td>
            <td id="TabTitle6" class="tabtitle" onclick="ShowTabss(6)">
                竞拍选项
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
                                <asp:HiddenField ID="Categoryid" runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" style="height: 26px">
                                <strong>商品编号：</strong>
                            </td>
                            <td style="width: 592px; height: 26px;">
                                <asp:Label ID="ProCode" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>自选数量：</strong>
                            </td>
                            <td>
                                 <asp:Label ID="Propeid" runat="server" Text="Label"></asp:Label>
                                <font color="red">(0为不允许自选购买;如果捆绑商品为空,则此数值为无效)</font>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>条形码：</strong>
                            </td>
                            <td>
                                <asp:Label ID="BarCode" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品名称：</strong>
                            </td>
                            <td>
                                <asp:Label ID="Proname" runat="server" Text="Label"></asp:Label>
                                </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>关键字：</strong>
                            </td>
                            <td>
                                 <asp:Label ID="Kayword" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品单位：</strong>
                            </td>
                            <td>
                                 <asp:Label ID="ProUnit" runat="server" Text="Label"></asp:Label>
                                </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品重量：</strong>
                            </td>
                            <td>
                                <asp:Label ID="Weight" runat="server" Text="Label"></asp:Label>
                                千克（Kg）
                                </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" style="height: 26px">
                                <strong>服务期限：</strong>
                            </td>
                            <td style="height: 26px">
                                <asp:Label ID="ServerPeriod" runat="server" Text="Label"></asp:Label>
                                </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品类型：</strong>
                            </td>
                            <td>
                                <asp:Label ID="ProClass1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>销售状态：</strong>
                            </td>
                            <td>
                                 <asp:Label ID="Sales1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>属性设置：</strong>
                            </td>
                            <td>
                            <asp:Label ID="istrue1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr> 
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>点击数：</strong>
                            </td>
                            <td>
                            <asp:Label ID="lblCountHits" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%" style="height: 24px">
                                <strong>更新时间：</strong>
                            </td>
                            <td style="height: 24px; width: 592px;">
                                <asp:Label ID="UpdateTime" runat="server" Text="Label"></asp:Label>
                                </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>内容页模板：</strong>
                            </td>
                            <td>
                                <asp:Label ID="ModeTemplate" runat="server" Text="Label"></asp:Label>
                               </td>
                        </tr>                       
                    </tbody>
                    <tbody id="Tabs1" style="display: none">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>商品简介：</strong></td>
                                <td>
                                    <asp:Label ID="Proinfo" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%" style="height: 24px">
                                <strong>详细介绍：</strong>
                            </td>
                            <td style="height: 24px; width: 592px;">                                    
                                    <asp:Label ID="Procontent" runat="server" Text="Label"></asp:Label>
<%--<script id="headscript" type="text/javascript">
                            
    //<![CDATA[
CKEDITOR.replace('Procontent',
{
    skin: 'v2',
    enterMode: 2,
    shiftEnterMode: 2,
    toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
});
    //]]>
</script>--%>

                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>商品清晰图：</strong>
                            </td>
                            <td>
                                <asp:Label ID="Clearimg" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" id="addsmallimg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>商品缩略图：</strong>
                            </td>
                            <td>
                                <asp:Label ID="Thumbnails" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="Tabs2" style="display: none">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>生 产 商：</strong>
                            </td>
                            <td>
                                <asp:Label ID="Producer" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>品牌/商标：</strong>
                            </td>
                            <td>
                                <asp:Label ID="Brand" runat="server" Text="Label"></asp:Label>
                               </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>缺货时允许购买:</strong>
                            </td>
                            <td>
                                 <asp:Label ID="Allowed" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>限购数量:</strong>
                            </td>
                            <td>
                                 <asp:Label ID="Quota" runat="server" Text="Label"></asp:Label>
                                -1为不限制数量 0为不允许购买
                                </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>最低购买数量:</strong>
                            </td>
                            <td>
                                <asp:Label ID="DownQuota" runat="server" Text="Label"></asp:Label>
                                -1为不限制数量 0为不允许购买
                                </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" >
                                <strong>秒杀时间段:(限制购买时间)</strong>
                            </td>
                            <td>
                                 <asp:Label ID="TextBox1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" style="height: 24px">
                                <strong>库存数量:</strong>
                            </td>
                            <td style="height: 24px">
                                <asp:Label ID="Stock" runat="server" Text="10"></asp:Label>
                               </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" style="height: 24px">
                                <strong>库存报警下限:</strong>
                            </td>
                            <td style="height: 24px; width: 592px;">
                                <asp:Label ID="StockDown" runat="server" Text="1"></asp:Label>
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
                                            <asp:Label ID="JisuanFs1" runat="server" Text="Label"></asp:Label>
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
                                <asp:Label ID="Rateset1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品税率:</strong>
                            </td>
                            <td>
                                 <asp:Label ID="Rate" runat="server" Text="Label"></asp:Label>
                                %
                               </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品推荐等级:</strong>
                            </td>
                            <td>
                                <asp:Label ID="Dengji1" runat="server" Text="Label"></asp:Label>
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
                                               <asp:Label ID="ShiPrice" runat="server" Text="Label"></asp:Label>
                                            元 
                                        </td>
                                        <td width="76%" style="height: 21px">
                                            购买时参考的市场零售价，可以比当前零售价高。
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
                                             <asp:Label ID="LinPrice" runat="server" Text="Label"></asp:Label>元 
                                        </td>
                                        <td width="78%" style="height: 20px">商店销售此商品时的价格。</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>打折优惠率:</strong>
                            </td>
                            <td>
                                <asp:Label ID="txtRecommend" runat="server" Text="Label"></asp:Label> %
                               </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft"><strong>积分价格:</strong></td>
                            <td><asp:Label ID="lblpoint" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>允许批发：</strong>
                            </td>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Wholesales1" runat="server" Text="否"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="pifaji" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" runat="server">
                                        <td>
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td style="height: 24px">
                                                        ① 一次性购买此商品数量满
                                                         <asp:Label ID="s1" runat="server" Text="Label"></asp:Label>
                                                        时，批发价为
                                                        <asp:Label ID="j1" runat="server" Text="0"></asp:Label>
                                                        元
                                                    </td>
                                                </tr>
                                                <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                    <td height="24">
                                                        ② 一次性购买此商品数量满
                                                         <asp:Label ID="s2" runat="server" Text="Label"></asp:Label>
                                                        时，批发价为
                                                         <asp:Label ID="j2" runat="server" Text="0"></asp:Label>
                                                        元
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="24">
                                                        ③ 一次性购买此商品数量满
                                                        <asp:Label ID="s3" runat="server" Text="Label"></asp:Label>
                                                        时，批发价为
                                                        <asp:Label ID="j3" runat="server" Text="0"></asp:Label>
                                                        元
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
                            <td   class="tdbgleft">
                                <strong>允许单独销售：</strong>
                            </td>
                            <td>
                                 <asp:Label ID="Wholesaleone1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>设置为礼品：</strong>
                            </td>
                            <td>
                                <div style="float: left">
                                    <asp:Label ID="Largess1" runat="server" Text="Label"></asp:Label>
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
                                 <asp:Label ID="Largesspirx" runat="server" Text="0"></asp:Label>
                                元 
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="Tabs4" style="display: none">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>促销方案：</strong>
                            </td>
                            <td>
                                    <asp:Label ID="ProjectType1" runat="server" Text="Label"></asp:Label>
                                    <asp:HiddenField ID="HiddenField3" runat="server" />
                                    <asp:HiddenField ID="HiddenField5" runat="server" />
                                    <asp:HiddenField ID="HiddenField6" runat="server" />
                                    <asp:HiddenField ID="HiddenField7" runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%" style="height: 19px">
                                <strong>其他促销方案：</strong>
                            </td>
                            <td style="height: 19px">
                                <asp:Label ID="OtherProject" runat="server" Text="0" /></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>购物积分：</strong>
                            </td>
                            <td>
                                购买&nbsp;
                                 <asp:Label ID="IntegralNum" runat="server" Text="1" /> &nbsp;件此商品可以得到
                                <asp:Label ID="Integral" runat="server" Text="1" />
                                积分
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
                            <td style="height: 19px" >
                             <asp:Label ID="radios" runat="server" />
                            </td>
                        </tr>
                        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td colspan="2">
                                <table cellpadding="0" id="Guess1" style="display: none" cellspacing="0" border="0"
                                    width="100%" runat="server">
                                    <tr class="tdbg">
                                        <td class="tdbgleft">
                                            <strong>秒杀时间段:(限制购买时间)</strong>
                                        </td>
                                        <td>
                                            从
                                             <asp:Label ID="TextBox3" runat="server" Text=""/>
                                            &nbsp;到
                                            <asp:Label ID="TextBox4" runat="server" Text=""/>
                                            &nbsp;为止
                                        </td>
                                    </tr>
                                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td class="tdbgleft">
                                            <strong>购买数量:(每次购买数量)</strong>
                                        </td>
                                        <td>
                                            <asp:Label ID="TextBox7" runat="server" Text="1"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td class="tdbgleft">
                                            <strong>开放秒杀商品数量:</strong>
                                        </td>
                                        <td>
                                            <asp:Label ID="TextBox8" runat="server" Text="1"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table id="Guess2" style="display: none" width="100%" border="0" cellpadding="0"
                                    cellspacing="0" runat="server">
                                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td class="tdbgleft" width="20%" style="height: 19px">
                                            <strong>竞拍时间段：</strong>
                                        </td>
                                        <td style="height: 19px">
                                            从
                                            <asp:Label ID="txtStime" runat="server" Text="1"></asp:Label>
                                            &nbsp;到
                                             <asp:Label ID="txtEtime" runat="server" Text="1"></asp:Label>
                                            &nbsp;为止
                                        </td>
                                    </tr>
                                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td class="tdbgleft" width="20%" style="height: 19px">
                                            <strong>竞拍模式：</strong>
                                        </td>
                                        <td style="height: 19px">
                                            <asp:Label ID="RadioButtonList11" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td class="tdbgleft" width="20%" style="height: 19px">
                                            <strong>起拍价格：</strong>
                                        </td>
                                        <td style="height: 19px">
                                            <asp:Label ID="TextBox11" runat="server" Text="0"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td class="tdbgleft" width="20%" style="height: 19px">
                                            <strong>干扰设置：</strong>
                                        </td>
                                        <td style="height: 19px">
                                                 <asp:Label ID="radio41" runat="server" Text="Label"></asp:Label>
                                            <asp:HiddenField ID="hfRadio41" runat="server" />
                                        </td>
                                    </tr>
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td colspan="2">
                                            <table id="tableInterference" width="100%" cellpadding="0" style="display: none" cellspacing="0"
                                                border="0" runat="server">
                                                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                    <td class="tdbgleft" width="20%" style="height: 19px">
                                                        <strong>干扰参数：</strong>
                                                    </td>
                                                    <td style="height: 19px">
                                                        <table width="100%" id="Panel1" runat="server">
                                                            <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                                <td>
                                                                    当参与竞拍人数达到<asp:Label ID="TextBox5" runat="server" Text="0"></asp:Label>人开始干扰
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table width="100%" id="Panel2" runat="server">
                                                            <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                                <td>
                                                                    出价额度达到<asp:Label ID="TextBox6" runat="server" Text="0"></asp:Label>元开始干扰
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        干扰次数:
                                                        <asp:Label ID="TextBox9" runat="server" Text="0"></asp:Label>
                                                        次/人<br />
                                                        <br />
                                                        干扰时间间隔:<asp:Label ID="TextBox10" runat="server" Text="0"></asp:Label>
                                                        <asp:Label ID="DropDownList1" runat="server" Text="0"></asp:Label>
                                                        <br />
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                    <td class="tdbgleft" width="20%" style="height: 19px">
                                                        <strong>干扰价格：</strong>
                                                    </td>
                                                    <td style="height: 19px">
                                                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                                                            <asp:ListItem Selected="True" Value="1">随机价格</asp:ListItem>
                                                            <asp:ListItem Value="2">最低价格</asp:ListItem>
                                                            <asp:ListItem Value="3">最高价格</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                        <asp:Label ID="RadioButtonList21" runat="server" Text="Lable"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                    <td class="tdbgleft" width="20%" style="height: 19px">
                                                        <strong>参与干扰会员：</strong>
                                                    </td>
                                                    <td style="height: 19px">
                                                        <asp:HiddenField ID="hfNum" runat="server" />
                                                        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" Width="200px" Height="150px"></asp:ListBox>
                                                        <asp:Label ID="ListBox11" runat="server" Text="Lable"></asp:Label>
                                                        <br />
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
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
        <tr>
            <td align="left" style="height: 59px">
                &nbsp; &nbsp;
                <input type="button" class="C_input" id="upbutton" name="upbutton" value="上一项" onclick="showup()" />
               <input type="button" class="C_input" id="Editdown" name="Editdown" value="下一项" onclick="ShowTable()" />
              
                <asp:Button ID="EBtnSubmit" class="C_input"  Text="修改商品信息" runat="server" 
                    onclick="EBtnSubmit_Click" />
                <input type="button" class="C_input"  name="Button2" value="返回列表"
                    onclick="location.href='ProductManage.aspx?NodeID=<%=Request.QueryString["NodeID"]%>'"
                    id="Button2" />
            </td>
        </tr> 
    </table>
    </form>
</body>
</html>
