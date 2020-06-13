<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.Template.labelSql, App_Web_lfti5d2r" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>Sql查询设置</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<style type="text/css">
    <!
    -- .dragspandiv
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
    /*　书签式面板菜单标题背景样式定义 */.tabtitle, .titlemouseover
    {
        width: 80px;
        height: 22px; /*line-height: 120%;*/
        padding: 0px;
        padding-top: 2px;
        font-weight: normal;
        cursor: pointer;
    }
    .tabtitle
    {
        background: url(../Images/tabon6.gif);
    }
    .titlemouseover
    {
        background: url(../Images/bg_top2.gif);
        color: #ffffff;
    }
    -- ></style>

<script src="../../JS/Common.js" type="text/javascript"></script>

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
        if (oDragHandle.className == "spanfixdiv" || oDragHandle.className == "spanfixdiv1") {
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

    function dragend2(textBox) {
        if (isdrag) {
            savePos(textBox);
            var target = document.getElementById('<% =TxtTjValue.ClientID %>');
            if (nn6) {
                var pre = target.value.substr(0, start);
                var post = target.value.substr(end);
                target.value = pre + inserttext + post;
            }
            else {
                target.focus();
                var range = document.selection.createRange();
                range.text = inserttext;
            }
        }
    }

    function dragend3(textBox) {
        if (isdrag) {
            savePos(textBox);
            var target = document.getElementById('<% =TextBox1.ClientID %>');
            if (nn6) {
                var pre = target.value.substr(0, start);
                var post = target.value.substr(end);
                target.value = pre + inserttext + post;
            }
            else {
                target.focus();
                var range = document.selection.createRange();
                range.text = inserttext;
            }
        }
    }

    function dragend4(textBox) {
        if (isdrag) {
            savePos(textBox);
            var target = document.getElementById('<% =falsecontent.ClientID %>');
            if (nn6) {
                var pre = target.value.substr(0, start);
                var post = target.value.substr(end);
                target.value = pre + inserttext + post;
            }
            else {
                target.focus();
                var range = document.selection.createRange();
                range.text = inserttext;
            }
        }
    }


    function dragend5(textBox) {
        if (isdrag) {
            savePos(textBox);
            var target = document.getElementById('<% =TxtSqlWhere.ClientID %>');
            if (nn6) {
                var pre = target.value.substr(0, start);
                var post = target.value.substr(end);
                target.value = pre + inserttext + post;
            }
            else {
                target.focus();
                var range = document.selection.createRange();
                range.text = inserttext;
            }
        }
    }




    function cit() {
        var target = document.getElementById('<% =textContent.ClientID %>');
        if (nn6) {
            var pre = target.value.substr(0, start);
            var post = target.value.substr(end);
            if (labeltype == '1') {
                target.value = pre + "{ZL.Label id=\"" + inserttext + "\"/}" + post;
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
                target.value = pre + "{ZL.Page id=\"" + inserttext + "\"/}" + post;
            }
            else {
                target.value = pre + inserttext + post;
            }
        }
        else {
            target.focus();
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
                range.text = "{ZL.Page id=\"" + inserttext + "\"/}"
            }
            else {
                range.text = inserttext;
            }
        }
    }

    function DragPos(textBox) {
        if (isdrag) {
            if (nn6) {
                textBox.focus();
            }
            else {
                try {
                    var rng = textBox.createTextRange();
                    rng.moveToPoint(event.x, event.y);
                    rng.select();
                } catch (err) {
                }
            }
        }
    }

    document.onmousedown = initDrag;

    document.onmouseup = function() {
        isdrag = false;
        if (dragspan != null) {
            document.body.removeChild(dragspan);
            dragspan = null;
        }
    }
    function changecate() {
        var obj = document.getElementById("DropLabelType");
        var tar = document.getElementById("TxtLabelType");
        var text = obj.value;
        if (text != "") {
            tar.value = text;
        }
    }


    function inputtxt(cc) {
        if (cc.value == "这里放入标签") {
            cc.value = '';
        }
    }
-->
</script>

<script type="text/javascript">
    function Toggle() {
        var oEditor;
        if (typeof (FCKeditorAPI) != 'undefined')
            oEditor = FCKeditorAPI.GetInstance('DataFCKeditor');

        var eTextareaDiv = document.getElementById('Textarea');
        var eFCKeditorDiv = document.getElementById('FCKeditor');

        if (eTextareaDiv.style.display != 'none') {
            if (!oEditor) {
                CreateEditor();
            }
            else {
                oEditor.SetData(document.getElementById('textContent').value);
            }

            eTextareaDiv.style.display = 'none';
            Div1.style.display = 'none';
            eFCKeditorDiv.style.display = '';
            Div3.style.display = '';

            if (oEditor && !document.all) {
                if (oEditor.EditMode == FCK_EDITMODE_WYSIWYG)
                    oEditor.MakeEditable();
            }
        }
        else {
            document.getElementById('textContent').value = oEditor.GetXHTML(true);
            eTextareaDiv.style.display = '';
            Div1.style.display = '';
            eFCKeditorDiv.style.display = 'none';
            Div3.style.display = 'none';
        }
    }

    function CreateEditor() {
        document.getElementById('DataFCKeditor').value = document.getElementById('textContent').value;
        var sBasePath = document.location.href.substring(0, document.location.href.lastIndexOf('editor'));


        var oFCKeditor = new FCKeditor('DataFCKeditor');
        oFCKeditor.BasePath = sBasePath;

        var sSkin = "silver";
        var sSkinPath = '../../editor/skins/' + sSkin + '/';
        oFCKeditor.Config['SkinPath'] = sSkinPath;
        oFCKeditor.Config['PreloadImages'] =
		sSkinPath + 'images/toolbar.start.gif' + ';' +
		sSkinPath + 'images/toolbar.end.gif' + ';' +
		sSkinPath + 'images/toolbar.buttonbg.gif' + ';' +
		sSkinPath + 'images/toolbar.buttonarrow.gif';




        oFCKeditor.Width = '100%';
        oFCKeditor.Height = '450';
        oFCKeditor.ReplaceTextarea();
    }

    function FCKeditor_OnComplete(editorInstance) {
        document.getElementById('BtnSwitchTextarea').disabled = false;
    }

    function PrepareSave() {
        if (document.getElementById('Textarea').style.display == 'none') {
            var oEditor = FCKeditorAPI.GetInstance('DataFCKeditor');
            document.getElementById('textContent').value = oEditor.GetXHTML(true);
        }
    }

    function admin_Size(num, objname) {
        var obj = document.getElementById(objname)
        if (parseInt(obj.rows) + num >= 3) {
            obj.rows = parseInt(obj.rows) + num;
        }
        if (num > 0) {
            obj.width = "90%";
        }
    }
</script>

<script type="text/javascript" src="../../editor/fckeditor_label.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >><a href="labelSql.aspx">动态标签设置</a>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table style="width: 100%;" cellpadding="2" cellspacing="1">
                    <tr class="tdbg">
                        <td class="tdbgleft" align="center" style="width: 100px">
                            <strong>标签名称：</strong>
                        </td>
                        <td class="tdbg" align="left">
                            <asp:TextBox ID="TxtLabelName" runat="server" Width="288px" />
                            <asp:RequiredFieldValidator runat="server" ID="NReq" ControlToValidate="TxtLabelName"
                                Display="Dynamic" ErrorMessage="请输入标签名称" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TxtLabelName"
                                ErrorMessage="标签名称重复" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                        </td>
                    </tr>
                    <tr class="tdbg">
                        <td class="tdbgleft" align="right" style="width: 80px">
                            <strong>标签分类：</strong>
                        </td>
                        <td class="tdbg" align="left">
                            <asp:TextBox ID="TxtLabelType" runat="server" Width="216px"></asp:TextBox>
                            <asp:DropDownList ID="DropLabelType" runat="server" onchange="changecate();">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtLabelType"
                                ErrorMessage="标签分类不能为空"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdbgleft" style="width: 80px; text-align: right;">
                            <strong>标签类型：</strong>
                        </td>
                        <td class="tdbg">
                            <asp:RadioButtonList ID="RBLType" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
                                <asp:ListItem Selected="True" Value="2">动态标签</asp:ListItem>
                                <asp:ListItem Value="4">分页列表标签</asp:ListItem>
                                <asp:ListItem Value="3">数据源标签</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 80px">
                            <strong>标签说明：</strong>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TxtLabelIntro" runat="server" TextMode="MultiLine" Columns="50"
                                Rows="3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 80px">
                            <strong>选择数据：</strong>
                        </td>
                        <td>
                            <table style="width: 100%; margin: 0 auto;">
                                <tr>
                                    <td class="tdbg">
                                        <div id="selectdatediv" class="selectlist">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <table>
                                                            <tr>
                                                                <td style="width: 50px; text-align: right; height: 22px;">
                                                                    主表：
                                                                </td>
                                                                <td style="height: 22px">
                                                                    <asp:DropDownList ID="DbTableDownList" runat="server" Width="200px" AutoPostBack="True"
                                                                        OnSelectedIndexChanged="DBTableDownList_SelectedIndexChanged" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 50px; text-align: right;">
                                                                    输出字段：
                                                                </td>
                                                                <td>
                                                                    <asp:ListBox ID="DbFieldDownList" runat="server" Height="220px" Width="200px" SelectionMode="Multiple" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table id="table2" runat="server">
                                                            <tr>
                                                                <td style="width: 50px; text-align: right; height: 22px;">
                                                                    从表：
                                                                </td>
                                                                <td style="height: 22px">
                                                                    <asp:DropDownList ID="DbTableDownList2" runat="server" Width="200px" AutoPostBack="True"
                                                                        OnSelectedIndexChanged="DBTableDownList2_SelectedIndexChanged" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 50px; text-align: right;">
                                                                    输出字段：
                                                                </td>
                                                                <td>
                                                                    <asp:ListBox ID="DbFieldDownList2" runat="server" Height="220px" Width="200px" SelectionMode="Multiple" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <%--<asp:Repeater ID="Repeater1" runat="server">
                                                    <ItemTemplate>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td style="width: 50px; text-align: right; height: 22px;">
                                                                        从表：
                                                                    </td>
                                                                    <td style="height: 22px">
                                                                        <asp:DropDownList ID="DbTableDownList2" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DBTableDownListall_SelectedIndexChanged" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 50px; text-align: right;">
                                                                        输出字段：
                                                                    </td>
                                                                    <td>
                                                                        <asp:ListBox ID="DbFieldDownList2" runat="server" Height="220px" Width="200px" SelectionMode="Multiple" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </ItemTemplate>
                                                </asp:Repeater>--%>
                                                </tr>
                                            </table>
                                            <br />
                                            <font color="red">先取数据表后再选择输出字段，支持Ctrl或Shift选取操作</font></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tbody id="tj" runat="server" visible="false">
                        <tr>
                            <td style="width: 80px; text-align: right;">
                                <strong>约束字段：</strong>
                            </td>
                            <td class="tdbg">
                                <div id="ycdiv" class="selectlist">
                                    <asp:DropDownList ID="Dbtj" runat="server" AutoPostBack="True" OnSelectedIndexChanged="TableJoin">
                                        <asp:ListItem Value="left join">LeftJoin</asp:ListItem>
                                        <asp:ListItem Value="Inner join">InnerJoin</asp:ListItem>
                                        <asp:ListItem Value="outer join">OuterJoin</asp:ListItem>
                                        <asp:ListItem Value="right join">RightJoin</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="DbFieldList" runat="server" Width="120px" AutoPostBack="True"
                                        OnSelectedIndexChanged="TableJoin" />
                                    =
                                    <asp:DropDownList ID="DbFieldList2" runat="server" Width="120px" AutoPostBack="True"
                                        OnSelectedIndexChanged="TableJoin" />
                                    &nbsp;
                                </div>
                            </td>
                        </tr>
                    </tbody>
                    <tr>
                        <td class="tdbgleft" style="width: 80px; text-align: right;">
                            <strong>查询表：</strong>
                        </td>
                        <td class="tdbg" align="left">
                            <asp:TextBox ID="TxtSqlTable" runat="server" Columns="60" Rows="7" Width="522px"
                                TextMode="MultiLine" AutoPostBack="true"></asp:TextBox>
                            <img src="../../App_Themes/AdminDefaultTheme/images/sizeadd.gif" border="0" onclick="javascript:admin_Size(5,'TxtSqlTable')"
                                style="cursor: hand" />
                            <img src="../../App_Themes/AdminDefaultTheme/images/sizemin.gif" border="0" onclick="javascript:admin_Size(-5,'TxtSqlTable')"
                                style="cursor: hand" />
                            <br />
                            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="从选择数据中选择主表，若选择了从表，请在约束字段中设定表连接条件"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdbgleft" style="width: 80px; text-align: right;">
                            <strong>查询字段：</strong>
                        </td>
                        <td class="tdbg" align="left" >
                            <asp:TextBox ID="TxtSqlField" runat="server" Columns="60" Rows="7" Width="522px"
                                TextMode="MultiLine" AutoPostBack="true"></asp:TextBox>
                            <img src="../../App_Themes/AdminDefaultTheme/images/sizeadd.gif" border="0" onclick="javascript:admin_Size(5,'TxtSqlField')"
                                style="cursor: hand" />
                            <img src="../../App_Themes/AdminDefaultTheme/images/sizemin.gif" border="0" onclick="javascript:admin_Size(-5,'TxtSqlField')"
                                style="cursor: hand" />
                            <br />
                            <asp:Button ID="Button3"  CssClass="button" runat="server" Text="设定查询字段" OnClick="Button3_Click" />
                            <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="从输出字段中选择查询的字段，未选字段点击为全选操作"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdbgleft" style="width: 80px; text-align: right;">
                            <strong>添加参数：</strong>
                        </td>
                        <td class="tdbg">
                            <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" style="text-align: center">
                                <tr class="tdbg" align="center" style="height: 25px;">
                                    <td style="width: 10%">
                                        参数名称
                                    </td>
                                    <td style="width: 10%">
                                        默认值
                                    </td>
                                    <td style="width: 15%">
                                        参数类型
                                    </td>
                                    <td style="width: 25%">
                                        参数说明
                                    </td>
                                    <td>
                                        操作
                                    </td>
                                </tr>
                                <asp:Repeater ID="repParam" runat="server" OnItemCommand="repParam_ItemCommand">
                                    <ItemTemplate>
                                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                            <td align="center">
                                                <%#Eval("ParamName")%>
                                            </td>
                                            <td align="center">
                                                <%#Eval("ParamValue") %>
                                                <td align="center">
                                                    <%# GetParamType(Eval("ParamType","{0}"))%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("ParamDesc")%>
                                                </td>
                                                <td align="center">
                                                    &nbsp;
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("Param") %>'>修改</asp:LinkButton>
                                                    |
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Del" CommandArgument='<%# Eval("Param") %>'>删除</asp:LinkButton>
                                                </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </table>
                            <br />
                            <table border="0" cellpadding="0" cellspacing="1" class="border" style="text-align: center">
                                <tr class="tdbg" align="center" style="height: 25px;">
                                    <td style="height: 25px; width: 80px;">
                                        <asp:TextBox ID="TxtParamName" runat="server" Text="参数名称" Width="80px" />
                                    </td>
                                    <td style="width: 80px; height: 25px">
                                        <asp:TextBox ID="TxtParamValue" runat="server" Text="默认值" Width="80px" />
                                    </td>
                                    <td align="left" style="width: 100px; height: 25px">
                                        <asp:DropDownList ID="DDLParamType" runat="server">
                                            <asp:ListItem Selected="True" Value="1">普通参数</asp:ListItem>
                                            <asp:ListItem Value="2">页面参数</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 100px; height: 25px" align="left">
                                        <asp:TextBox ID="TxtParamDesc" runat="server" Text="参数说明" Width="80px" />
                                    </td>
                                    <td style="width: 80px; height: 25px">
                                        <asp:Button ID="BtnAddParam" runat="server" CssClass="button" Text="添加" OnClick="BtnAddParam_Click"
                                            Style="cursor: pointer; cursor: hand;" />
                                    </td>
                                    <td style="height: 25px">
                                        <asp:HiddenField ID="HdnParam" runat="server" />
                                        <asp:HiddenField ID="HdnTempParam" runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 80px; text-align: right;">
                            <strong>自定义参数：<br />
                                （拖放添加）</strong>
                        </td>
                        <td class="tdbg">
                            <div id="plist" class="plist">
                                <asp:Label ID="attlist" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 80px; text-align: right; height: 19px;">
                            <strong>查询条件：</strong>
                        </td>
                        <td class="tdbg">
                            <div id="gridviewclause" class="fielddiv">
                                <asp:DropDownList ID="DDLJointj" runat="server">
                                    <asp:ListItem Selected="True">And</asp:ListItem>
                                    <asp:ListItem>OR</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="DDLFTable" runat="server" AutoPostBack="True" OnSelectedIndexChanged="BindTableField">
                                    <asp:ListItem Selected="True" Value="1">主表</asp:ListItem>
                                    <asp:ListItem Value="2">从表</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="DDLTjField" runat="server" Width="120px" />
                                <asp:DropDownList ID="DDLtj" runat="server">
                                    <asp:ListItem>等于</asp:ListItem>
                                    <asp:ListItem>大于</asp:ListItem>
                                    <asp:ListItem>小于</asp:ListItem>
                                    <asp:ListItem>大于等于</asp:ListItem>
                                    <asp:ListItem>小于等于</asp:ListItem>
                                    <asp:ListItem>不等于</asp:ListItem>
                                    <asp:ListItem>在</asp:ListItem>
                                    <asp:ListItem>象</asp:ListItem>
                                    <asp:ListItem>不在</asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox ID="TxtTjValue" runat="server"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" CssClass="button" Text="添加查询条件" OnClick="Button1_Click" /><br />
                                <asp:TextBox ID="TxtSqlWhere" runat="server" onmouseup="dragend5(this)" Columns="60"
                                    Rows="3" Height="74px" Width="522px" TextMode="MultiLine"></asp:TextBox>
                                <img src="../../App_Themes/AdminDefaultTheme/images/sizeadd.gif" border="0" onclick="javascript:admin_Size(5,'TxtSqlWhere')"
                                    style="cursor: hand" />
                                <img src="../../App_Themes/AdminDefaultTheme/images/sizemin.gif" border="0" onclick="javascript:admin_Size(-5,'TxtSqlWhere')"
                                    style="cursor: hand" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdbgleft" style="width: 80px; text-align: right; height: 19px;">
                            <strong>字段排序：</strong>
                        </td>
                        <td class="tdbg">
                            <div id="Div2" class="fielddiv">
                                <asp:DropDownList ID="DDLOrderTable" runat="server" AutoPostBack="True" OnSelectedIndexChanged="BindOrderField">
                                    <asp:ListItem Selected="True">主表</asp:ListItem>
                                    <asp:ListItem>从表</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="DDLOrderField" runat="server" Width="120px" />
                                <asp:DropDownList ID="DDLOrder" runat="server">
                                    <asp:ListItem Value="DESC">降序</asp:ListItem>
                                    <asp:ListItem Value="ASC">升序</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="Button2" runat="server" Text="添加排序字段"  CssClass="button" OnClick="Button2_Click" Style="cursor: pointer;
                                    cursor: hand;" ValidationGroup="false" /><br />
                                <asp:TextBox ID="TxtOrder" runat="server" Columns="60" Rows="7" TextMode="MultiLine"
                                    Width="522px"></asp:TextBox>
                                <img src="../../App_Themes/AdminDefaultTheme/images/sizeadd.gif" border="0" onclick="javascript:admin_Size(5,'TxtOrder')"
                                    style="cursor: hand" />
                                <img src="../../App_Themes/AdminDefaultTheme/images/sizemin.gif" border="0" onclick="javascript:admin_Size(-5,'TxtOrder')"
                                    style="cursor: hand" />
                                <br />
                                <span style="color: Red;">(当标签为分页标签时,字段排序不能为空)</span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtOrder"
                                    Display="None" ErrorMessage="当标签为分页标签时,字段排序不能为空" Style="display: none" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdbgleft" style="width: 80px; text-align: right;">
                            <strong>数据数目：</strong>
                        </td>
                        <td class="tdbg" align="left">
                            <asp:TextBox ID="TextBox1" runat="server" Text="10" Width="50px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdbgleft" style="width: 80px; text-align: right;">
                            <strong>判断模式：</strong>
                        </td>
                        <td class="tdbg" align="left">
                            <asp:CheckBox ID="boolmodel" runat="server" Text="开启判断模式" AutoPostBack="True" />
                            <font color="red">(开启此模式，此标签将带有判断能力,下方将出现判断条件选择及条件输出内容)</font>
                        </td>
                    </tr>
                    <tr id="isbool" runat="server" visible="false">
                        <td class="tdbgleft" style="width: 80px; text-align: right; height: 24px">
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
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Modelvalue" ErrorMessage="条件数值不能为空!" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                        </td>
                    </tr>
                    <tr>
                        <td class="spacingtitle" style="width: 100%; text-align: left;" colspan="2">
                            <strong>标签内容:<asp:Label ID="Label8" runat="server" Text="(<font color=red>满足</font>判断)"
                                Visible="false"></asp:Label></strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdbgleft" style="width: 100%; text-align: right;" colspan="2">
                            <table style="width: 100%">
                                <tr>
                                    <td style="width: 252px; vertical-align: top;" id="frmTitle">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tbody id="ss">
                                                <tr align="center">
                                                    <td>
                                                        <div id="Tab1_header">
                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                <tr align="center">
                                                                    <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)" style="width: 81px">
                                                                        自定标签
                                                                    </td>
                                                                    <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)" style="width: 81px">
                                                                        字段标签
                                                                    </td>
                                                                    <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)" style="width: 81px">
                                                                        系统标签
                                                                    </td>
                                                                    <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)" style="width: 81px">
                                                                        扩展函数
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <div style="height: 433px; width: 250px; border: 1px solid #86C0DF;">
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
                                                                                    <asp:Label ID="LblColumn" runat="server" Text="标签字段"></asp:Label></div>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody id="Tabs2" style="display: none">
                                                                        <tr align="center">
                                                                            <td>
                                                                                <div style="overflow: auto; height: 410px">
                                                                                    <asp:Label ID="LblSysLabel" runat="server"></asp:Label>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody id="Tabs3" style="display: none">
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
                        <td class="spacingtitle" style="width: 100%; text-align: left;" colspan="2">
                            <strong>标签内容:(<font color="red">不满足</font>判断)</strong>
                        </td>
                    </tr>
                    <tr id="s2" runat="server" visible="false">
                        <td class="tdbgleft" style="width: 100%; text-align: right;" colspan="2">
                            <table style="width: 100%">
                                <tr>
                                    <td align="left">
                                        <font color="red"><b>当选择计数判断时，下面只能填写{Repeate}标签里面的内容</b></font><asp:TextBox TextMode="MultiLine"
                                            runat="server" ID="falsecontent" Width="100%" Height="231px" onmouseup="dragend4(this)"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr class="tdbg">
                        <td align="center" colspan="2">
                            <asp:HiddenField ID="HdnlabelID" runat="server" />
                            <div style="float: left; padding-left: 250px">
                                <asp:Button ID="BtnSave" OnClick="BtnSave_Click" CssClass="button" runat="server" OnClientClick="PrepareSave()"
                                    Style="cursor: pointer; cursor: hand; width: 88px;" Text="保存标签" />&nbsp;&nbsp;&nbsp;<input
                                        id="BtnCancel" type="button" class="button" value="返  回" onclick="window.location.href='LabelManage.aspx?nid=<%=Request.QueryString["nid"] %>'"
                                        style="cursor: pointer; cursor: hand; width: 88px;" />&nbsp;&nbsp;&nbsp;
                            </div>
                            <div id="Div1" style="float: left">
                                <input type="button" value="可视化预览" class="button"  onclick="Toggle()" />
                            </div>
                            <div id="Div3" style="display: none" style="float: left">
                                <input id="BtnSwitchTextarea" type="button" class="button"  disabled="disabled" value="返回代码编辑" onclick="Toggle()" />
                            </div>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                ShowSummary="False" />
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
