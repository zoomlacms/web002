<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.Template.LabelHtml, App_Web_lfti5d2r" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>静态标签</title>    
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
    <script src="/JS/Common.js" type="text/javascript"></script>
    <script src="/JS/Common.js" type="text/javascript"></script>
    <script type="text/javascript" src="/editor/fckeditor_label.js"></script>
    <style type="text/css">
         .dragspandiv
        {
            background-color: #FFFBF5;
            filter: alpha(opacity=70);
            border: 1px solid #F6B9D6;
            text-align: center;
            overflow: hidden;
            padding: 2px;
            height: 20px;
        }
        .spanfixdiv
        {
            background-color: #FFFBF5;
            border: 1px solid #F6B9D6;
            text-align: center;
            overflow: hidden;
            cursor: hand;
            height: 20px;
            margin: 4px;
        }
        .spanfixdiv1
        {
            background-color: #FFFBF5;
            border: 1px solid #F6B9D6;
            padding: 5px 5px 5px 5px;
            width: 80px;
            height: 20px;
            float: left;
            text-align: center;
            margin: 5px;
            overflow: hidden;
            cursor: hand;
        }
        .selectlist
        {
            background-color: #f6fdf6;
            border: 1px dashed #2F4F4F;
            padding: 5px 5px 5px 5px;
            width: 98%;
        }
        .plist
        {
            background-color: #f6fdf6;
            border: 1px dashed #2F4F4F;
            padding: 5px 5px 5px 5px;
            width: 98%;
            vertical-align: middle;
        }
        .fielddiv
        {
            background-color: #f6fdf6;
            border: 1px dashed #2F4F4F;
            padding: 5px 5px 5px 5px;
            float: left;
            width: 98%;
            height: 100%;
            text-align: left;
        }
        .spanfixdivchechk
        {
            background-color: #FFFBF5;
            border: 1px solid #F6B9D6;
            text-align: center;
            overflow: hidden;
            cursor: hand;
            height: 20px;
            margin: 4px 4px 4px 1px;
            float: left;
            width: 80%;
            overflow: hidden;
        }
        .editdiv
        {
            text-align: center;
            overflow: hidden;
            cursor: hand;
            height: 20px;
            margin: 4px 1px 4px 4px;
            float:left;
            width:12%;
        }
        .editdiv
        {
            text-align: center;
            overflow: hidden;
            cursor: hand;
            height: 20px;
            margin: 4px;
            float: left;
            width: 12%;
        }
        </style>
    <script type="text/javascript">
        function openurls(url) {
            Dialog.open({ URL: url });
        }
        function opentitle(url, title) {
            var diag = new Dialog();
            diag.Width = 800;
            diag.Height = 600;
            diag.Title = title;
            diag.URL = url;
            diag.show();
        }
        function closdlg() {
            Dialog.close();
        }

        function PrepareSave() {
            if (document.getElementById('Textarea').style.display == 'none') {
                var oEditor = FCKeditorAPI.GetInstance('DataFCKeditor');
                document.getElementById('textContent').value = oEditor.GetXHTML(true);
            }
        }
 
    </script>
    <script type="text/javascript">    
<!--
        var start = 0, end = 0;
        var x, y;
        var dragspan;
        var inserttext;
        var nn6 = document.getElementById && !document.all;
        var isdrag = false;
        var labeltype = '0';

        function initDrag(e) {
            var oDragHandle = nn6 ? e.target : event.srcElement;
            if (oDragHandle.className == "spanfixdiv" || oDragHandle.className == "spanfixdivchechk") {
                isdrag = true;
                dragspan = document.createElement('div');
                dragspan.style.position = "absolute";
                dragspan.className = "dragspandiv";
                y = nn6 ? e.clientY + 5 : event.clientY + 5;
                x = nn6 ? e.clientX + 10 : event.clientX + 10;
                dragspan.style.width = oDragHandle.style.width;
                dragspan.style.height = oDragHandle.style.height;
                dragspan.style.top = y + "px";
                dragspan.style.left = x + "px";
                dragspan.innerHTML = oDragHandle.innerHTML;
                document.body.appendChild(dragspan);
                document.onmousemove = moveMouse;

                inserttext = oDragHandle.getAttribute("code");
                labeltype = oDragHandle.getAttribute("outtype");

                return false;
            }
        }

        function moveMouse(e) {
            if (isdrag) {
                dragspan.style.top = (nn6 ? e.clientY : event.clientY) + document.documentElement.scrollTop + 5 + "px";
                dragspan.style.left = (nn6 ? e.clientX : event.clientX) + document.documentElement.scrollLeft + 10 + "px";
                return false;
            }
        }

        function dragend(textBox) {
            if (isdrag) {
                savePos(textBox);
                cit();
            }
        }

        function savePos(textBox) {
            if (typeof (textBox.selectionStart) == "number") {
                start = textBox.selectionStart;
                end = textBox.selectionEnd;
            }
        }

        function cit() {
            //var oEditor = FCKeditorAPI.GetInstance('textContent');
            var target = document.getElementById('<% =textContent.ClientID %>');
            if (nn6) {
                var pre = target.value.substr(0, start);
                var post = target.value.substr(end);

                if (labeltype == '1') {
                    target.value = pre + "{ZL.Label id=\"" + inserttext + "\"/}" + post;
                    //oEditor.InsertHtml(pre + "{ZL.Label id=\"" + inserttext + "\"/}" + post);           
                }
                else if (labeltype == '2') {

                    var link = "Insertlabel.aspx?n=" + escape(inserttext);
                    if (window.showModalDialog != null) {
                        var ret = showModalDialog(link, '', 'dialogWidth:500px; dialogHeight:300px; help: no; scroll: no; status: no; edge: sunken;');
                        if (ret != null) {
                            if (ret.replace(/^\s+|\s+$/g, "") == "") {
                                alert("不能输入空值");
                            }
                            else {
                                target.value = pre + ret + post;
                            }
                        }
                    }
                    else {
                        window.open(link, window, 'modal=yes,width=500,height=300,menubar=no,toolbar=no,location=no,resizable=no,status=no,scrollbars=no');
                    }
                }
                else if (labeltype == '3') {
                    target.value = pre + "{ZL.Source id=\"" + inserttext + "\"/}" + post;
                    //oEditor.InsertHtml(pre + inserttext + post); 
                }
                else if (labeltype == '5') {
                    target.text = "{ZL.Page id=\"" + inserttext + "\"/}";
                }
                else if (labeltype == '6') {
                    target.text = "{ZL.Page id=\"" + inserttext + "\" num=\"500\"/}";
                }
                else {
                    target.value = pre + inserttext + post;
                    //oEditor.InsertHtml(pre + inserttext + post); 
                }
            }
            else {
                target.focus();
                var s = target.scrollTop; //获得滚动条的位置

                var range = document.selection.createRange();

                if (labeltype == '1') {
                    range.text = "{ZL.Label id=\"" + inserttext + "\"/}";
                }
                else if (labeltype == '2') {
                    var link = "Insertlabel.aspx?n=" + escape(inserttext);
                    if (window.showModalDialog != null) {
                        var ret = showModalDialog(link, '', 'dialogWidth:500px; dialogHeight:300px; help: no; scroll: no; status: no; edge: sunken;');
                        if (ret != null) {
                            if (ret.replace(/^\s+|\s+$/g, "") == "") {
                                alert("不能输入空值");
                            }
                            else {
                                range.text = ret;
                            }
                        }
                    }
                    else {
                        window.open(link, window, 'modal=yes,width=500,height=300,menubar=no,toolbar=no,location=no,resizable=no,status=no,scrollbars=no');
                    }
                }
                else if (labeltype == '3') {
                    range.text = "{ZL.Source id=\"" + inserttext + "\"/}";
                }
                else if (labeltype == '5') {
                    range.text = "{ZL.Page id=\"" + inserttext + "\"/}";
                }
                else if (labeltype == '6') {
                    range.text = "{ZL.Page id=\"" + inserttext + "\" num=\"500\"/}";
                }
                else {
                    range.text = inserttext;
                }
                range.select();
                target.scrollTop = s; //把滚动条恢复到以前的位置
            }
        }

        function DragPos(textBox) {
            if (isdrag) {
                if (nn6) {
                    textBox.focus();
                }
                else {
                    var rng = textBox.createTextRange();
                    rng.moveToPoint(event.x, event.y);
                    rng.select();
                }
            }
        }

        document.onmousedown = initDrag;

        document.onmouseup = function () {
            isdrag = false;
            if (dragspan != null) {
                document.body.removeChild(dragspan);
                dragspan = null;
            }
        }

        function inputtxt(cc) {
            if (cc.value == "这里放入标签") {
                cc.value = '';
            }
        }
-->
    </script>   
    <script type="text/javascript" language="javascript">
        var editor;
        function createEditor() {
            var html = document.getElementById('textContent').value;
            if (document.getElementById("buttons").value == "可视化预览") {
                document.getElementById('textContent').style.display = "none";
                editor = CKEDITOR.replace('<% =textContent.ClientID %>',
            {
                skin: 'v2',
                enterMode: 2,
                shiftEnterMode: 2,
                width: "100%", height: 410,
                toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
            });
                editor.setData(html);
                document.getElementById("buttons").value = "返回代码编辑";
            } else {
                if (editor) {
                    var oEditor = CKEDITOR.instances.textContent;
                    document.getElementById('textContent').value = editor.getData();
                    document.getElementById('textContent').style.display = '';
                    editor.destroy();
                    editor = null;
                    document.getElementById("buttons").value = "可视化预览";
                }
            }
        }

        var tID = 0;
        var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2");
        var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2");
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
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
          当前位置：功能导航 >> <a href="LabelHtml.aspx">静态标签设置</a> </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table style="width: 100%;" cellpadding="2" cellspacing="1">
                    <tr class="tdbg">
                        <td align="right" style="width: 105px">
                            <strong>标签名称：&nbsp;</strong>
                        </td>
                        <td class="tdbg" align="left">
                            <asp:TextBox ID="TxtLabelName" runat="server" Width="288px" />
                            <asp:RequiredFieldValidator runat="server" ID="NReq" ControlToValidate="TxtLabelName"
                                Display="Dynamic" ErrorMessage="请输入标签名称">*</asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TxtLabelName"
                                ErrorMessage="标签名称重复" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                        </td>
                    </tr>
                    <tr class="tdbg">
                        <td align="right" style="width: 105px">
                            <strong>标签分类：&nbsp;</strong>
                        </td>
                        <td class="tdbg" align="left">
                            <asp:TextBox ID="TxtLabelType" runat="server" Width="216px"></asp:TextBox>
                            <asp:DropDownList ID="DropLabelType" runat="server" OnSelectedIndexChanged="SelectCate"
                                AutoPostBack="true">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtLabelType"
                                ErrorMessage="标签分类不能为空">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="tdbg">
                        <td align="right" style="width: 105px">
                            <strong>标签说明：&nbsp;</strong>
                        </td>
                        <td class="tdbg" align="left">
                            <asp:TextBox ID="TxtLabelIntro" runat="server" TextMode="MultiLine" Columns="50"
                                Rows="3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg">
                        <td align="right" style="width: 105px">
                            <strong>判断模式：&nbsp;</strong>
                        </td>
                        <td class="tdbg" align="left">
                            <asp:CheckBox ID="boolmodel" runat="server" Text="开启判断模式" AutoPostBack="True" />
                            <font color="red">(开启此模式，此标签将带有判断能力,下方将出现判断条件选择及条件输出内容)</font>
                        </td>
                    </tr>
                    <tr id="isbool" runat="server" visible="false">
                        <td style=" height: 24px" align="right">
                            <strong>模式设置：</strong>
                        </td>
                        <td class="tdbg" align="left">
                            <asp:DropDownList ID="Modeltypeinfo" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="计数判断">计数判断</asp:ListItem>
                                <asp:ListItem Value="用户登陆判断">用户登陆判断</asp:ListItem>
                                <asp:ListItem Value="参数判断">参数判断</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="Valueroot" runat="server" Width="179px" onmousedown="inputtxt(this)"
                                onfocus="inputtxt(this)" value="这里放入标签"></asp:TextBox>
                            <asp:DropDownList ID="addroot" runat="server" Visible="false" AutoPostBack="True">
                                <asp:ListItem Value="循环计算">循环计算</asp:ListItem>
                                <asp:ListItem Value="一直累加">一直累加</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="setroot" runat="server">
                                <asp:ListItem Value="大于">大于</asp:ListItem>
                                <asp:ListItem Value="等于" Selected>等于</asp:ListItem>
                                <asp:ListItem Value="小于">小于</asp:ListItem>
                                <asp:ListItem Value="不等于">不等于</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="Modelvalue" runat="server" Width="140px"></asp:TextBox>
                            <asp:Label ID="Label3" runat="server" ForeColor="#339933" Visible="False" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td  style="text-align: left;" colspan="2">
                            <strong>标签内容:<asp:Label ID="Label8" runat="server" Text="(<font color=red>满足</font>判断)" Visible="false"></asp:Label></strong>
                        </td>
                    </tr>
                    <tr>
                        <td  style="width: 100%; text-align: right;" colspan="2">
                            <table style="width: 100%">
                                <tr>
                                    <td style="width: 252px; vertical-align: top;" id="frmTitle">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tbody id="ss">
                                                <tr align="center">
                                                    <td>
                                                        <div id="Tab1_header" >
                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                <tr align="center">
                                                                    <td id="TabTitle0" class="titlemouseover" onclick="ShowTabss(0)" style="width: 81px">
                                                                        自定标签
                                                                    </td>
                                                                    <td id="TabTitle1" class="tabtitle" onclick="ShowTabss(1)" style="width: 81px">
                                                                        系统标签
                                                                    </td>
                                                                    <td id="TabTitle2" class="tabtitle" onclick="ShowTabss(2)" style="width: 81px">
                                                                        扩展函数
                                                                    </td>
                                                                    <td style="width: 12px">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <div  style="height:433px; width:250px;  border:1px solid #86C0DF;">
                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                <tbody id="Tabs0">
                                                                    <tr align="center">
                                                                        <td>
                                                                            <asp:DropDownList ID="DDLCate" runat="server" OnSelectedIndexChanged="ChangeCate"
                                                                                AutoPostBack="true">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr align="center">
                                                                        <td>
                                                                            <div style="overflow: auto; height: 410px">
                                                                                <asp:Label ID="LblLabel" runat="server"></asp:Label></div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                                <tbody id="Tabs1" style="display: none">
                                                                    <tr align="center">
                                                                        <td>
                                                                            <div style="overflow: auto; height: 410px">
                                                                                <asp:Label ID="LblSysLabel" runat="server"></asp:Label>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                                <tbody id="Tabs2" style="display: none">
                                                                    <tr align="center">
                                                                        <td>
                                                                            <div style="overflow: auto; height: 410px">
                                                                                <asp:Label ID="LblFunLabel" runat="server"></asp:Label>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td align="left" valign="bottom">
                                        <div id="Textarea">
                                            <asp:TextBox TextMode="MultiLine" runat="server" ID="textContent" Width="100%" Height="430px"></asp:TextBox>
                                        </div>
                                        <div id="FCKeditor" style="display: none">
                                            <textarea id="DataFCKeditor" cols="80" rows="20"></textarea>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="s1" runat="server" visible="false">
                        <td  style="width: 100%; text-align: left;" colspan="2">
                            <strong>标签内容:(<font color="red">不满足</font>判断)</strong>
                        </td>
                    </tr>
                    <tr id="s2" runat="server" visible="false">
                        <td class="tdbgleft" style="width: 100%; text-align: right;" colspan="2">
                            <table style="width: 100%">
                                <tr>
                                    <td align="left">
                                        <asp:TextBox TextMode="MultiLine" runat="server" ID="falsecontent" Width="100%" Height="231px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr class="tdbg">
                        <td colspan="2" align="center" style="height: 55px">
                            <asp:HiddenField ID="HdnLabelID" runat="server" />
                            <div style="float: left; padding-left: 250px">
                                <asp:Button ID="BtnSave" runat="server" CssClass="button" Text="保　存" OnClick="BtnSave_Click" OnClientClick="PrepareSave()"
                                    Style="cursor: pointer; cursor: hand; width: 88px;" />&nbsp;&nbsp;
                                <input id="BtnCancel" type="button" class="button" value="返  回" onclick="window.location.href='LabelManage.aspx?nid=<%= base.Request.QueryString["nid"]%>'"
                                    style="cursor: pointer; cursor: hand; width: 88px;" />&nbsp;&nbsp;
                            </div>
                            <div id="Div1" style="float: left">
                                <input type="button" value="可视化预览"  class="button" onclick="Toggle()" />
                            </div>
                            <div id="Div2" style="display: none" style="float: left">
                                <input id="BtnSwitchTextarea" type="button" disabled="disabled"  class="button" value="返回代码编辑" onclick="Toggle()" />
                            </div>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>

