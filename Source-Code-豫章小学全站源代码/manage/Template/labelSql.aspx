<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.Template.labelSql, App_Web_0medrxrm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>标签查询</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.dragspandiv { background-color: #FFFBF5; border: 1px solid #F6B9D6; text-align: center; overflow: hidden; padding: 2px; height: 20px; }
.spanfixdiv { background-color: #FFFBF5; border: 1px solid #F6B9D6; text-align: center; overflow: hidden; cursor: hand; height: 20px; margin: 4px; }
.spanfixdivchechk { background-color: #FFFBF5; border: 1px solid #F6B9D6; text-align: center; overflow: hidden; cursor: hand; height: 20px; margin: 4px 4px 4px 0px; float: left; width: 80%; overflow: hidden; }
.editdiv { text-align: center; overflow: hidden; cursor: hand; height: 20px; margin: 6px 0px 4px 2px; float:left; width:12%; }
.spanfixdiv1 { background-color: #FFFBF5; border: 1px solid #F6B9D6; padding: 5px 5px 5px 5px; width: 80px; height: 20px; float: left; text-align: center; margin: 5px; overflow: hidden; cursor: hand; }
.selectlist { background-color: #E8F5FF; border: 1px dashed #2F4F4F; padding: 5px 5px 5px 5px; width: 98%; }
.plist { background-color: #E8F5FF; border: 1px dashed #2F4F4F; padding: 5px 5px 5px 5px; width: 98%; vertical-align: middle; }
.fielddiv { background-color: #E8F5FF; border: 1px dashed #2F4F4F; padding: 5px 5px 5px 5px; float: left; width: 98%; height: 100%; text-align: left; }
.FinishButton { display: none; }
.NextButton { text-align: center; float: left; }
</style>
    <script src="../../JS/Common.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
    <script type="text/javascript" src="../../js/Drag.js"></script>
    <script type="text/javascript" src="../../js/Dialog.js"></script>
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
    </script>
    <script language="javascript" type="text/javascript">
        function addubb(ubb) {
            var textEl = document.getElementById("<%=textContent.ClientID %>");
            var text = ubb;

            if (textEl.createTextRange && textEl.caretPos) {
                var caretPos = textEl.caretPos;
                caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? text + ' ' : text;
            }
            else
                textEl.value = textEl.value + text;
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
            if (oDragHandle.className == "spanfixdiv" || oDragHandle.className == "spanfixdiv1" || oDragHandle.className == "spanfixdivchechk") {
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
        function dragend6(textBox) {
            if (isdrag) {
                savePos(textBox);
                var target = document.getElementById('<% =TxtOrder.ClientID %>');
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
                    target.text = "{ZL.Source id=\"" + inserttext + "\"/}";
                }
                else if (labeltype == '5') {
                    target.text = "{ZL.Page id=\"" + inserttext + "\"/}";
                }
                else if (labeltype == '6') {
                    target.text = "{ZL.Page id=\"" + inserttext + "\" num=\"500\"/}";
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
            var obj = document.getElementById("<%=DropLabelType.ClientID %>");
            var tar = document.getElementById("<%=TxtLabelType.ClientID %>");
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
        function admin_Size(num, objname) {
            var obj = document.getElementById(objname)
            if (parseInt(obj.rows) + num >= 3) {
                obj.rows = parseInt(obj.rows) + num;
            }
            if (num > 0) {
                obj.width = "90%";
            }
        }

        function selectvalue(vas, vas2) {
            if (document.getElementById("<%=DbTableDownList.ClientID %>")) {
                for (var i = 0; i < document.getElementById("<%=DbTableDownList.ClientID %>").length; i++) {
                    if (document.getElementById("<%=DbTableDownList.ClientID %>").options[i].value == vas) {
                        document.getElementById("<%=DbTableDownList.ClientID %>").selectedIndex = i;
                    }
                }
                setTimeout('__doPostBack(\'Wizard1$DbTableDownList\',\'\')', 0);

                document.getElementById("<%=DbTableDownList2.ClientID %>").length;
                for (var i = 0; i < document.getElementById("<%=DbTableDownList2.ClientID %>").length; i++) {
                    if (document.getElementById("<%=DbTableDownList2.ClientID %>").options[i].value == vas2) {
                        document.getElementById("<%=DbTableDownList2.ClientID %>").selectedIndex = i;
                    }
                }
                setTimeout('__doPostBack(\'Wizard1$DbTableDownList2\',\'\')', 0);
            }
        }
    </script>
    <script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
    <script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
    <link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
    <script type="text/javascript">
        var editor;
        function createEditor() {
            var html = document.getElementById('<%=textContent.ClientID %>').value;
            if (document.getElementById("buttons").value == "可视化预览") {
                document.getElementById('<%=textContent.ClientID %>').style.display = "none";
                editor = CKEDITOR.replace('<%=textContent.ClientID %>',
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
                    document.getElementById('<%=textContent.ClientID %>').value = editor.getData();
                    document.getElementById('<%=textContent.ClientID %>').style.display = '';
                    editor.destroy();
                    editor = null;
                    document.getElementById("buttons").value = "可视化预览";
                }
            }
        }
    </script>
    </head>
    <body>
    <form id="form1" runat="server">
      <div class="r_navigation"> <span>后台管理</span>&gt;&gt;<span> 系统设置 </span>&gt;&gt; <a href="LabelManage.aspx">标签管理</a>&gt;&gt;<span> 动态标签设置</span>&nbsp; <a href="" id="a1" runat="server">
        <asp:Label ID="LabelName" runat="server" Text=""></asp:Label>
        </a></div>
      <div class="clearbox"> </div>
      <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>--%>
      <asp:Literal ID="Literal1" runat="server"></asp:Literal>
      <asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="False" Width="100%" ActiveStepIndex="0"  FinishCompleteButtonText="保存标签"  OnFinishButtonClick="BtnSave_Click">
        <HeaderTemplate> </HeaderTemplate>
        <WizardSteps>
          <asp:WizardStep ID="WizardStep1" EnableTheming="true" runat="server" Title="step1">
            <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
              <tr>
                <td class="spacingtitle" colspan="2" align="center">第一步：基本信息</td>
              </tr>
              <tr class="tdbg">
                <td class="tdbgleft" align="right" style="width: 80px"><strong>标签名称：</strong></td>
                <td align="left"><asp:TextBox ID="TxtLabelName" class="l_input" runat="server" Width="288px" />
                  <asp:RequiredFieldValidator runat="server" ID="NReq" ControlToValidate="TxtLabelName"  Display="Dynamic" ErrorMessage="必须输入名称" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TxtLabelName"  ErrorMessage="名称重复" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True"></asp:CustomValidator></td>
              </tr>
              <tr class="tdbg">
                <td class="tdbgleft" align="right" style="width: 80px"><strong>标签分类：</strong></td>
                <td align="left"><asp:TextBox ID="TxtLabelType" class="l_input" runat="server" Width="216px"></asp:TextBox>
                  <asp:DropDownList ID="DropLabelType" runat="server" onchange="changecate();"> </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtLabelType"  ErrorMessage="分类不能为空"></asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                <td class="tdbgleft" style="width: 80px; text-align: right;"><strong>标签类型：</strong></td>
                <td><asp:RadioButtonList ID="RBLType" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
                    <asp:ListItem Selected="True" Value="2">动态标签</asp:ListItem>
                    <asp:ListItem Value="4">分页列表标签</asp:ListItem>
                    <asp:ListItem Value="3">数据源标签</asp:ListItem>
                  </asp:RadioButtonList></td>
              </tr>
              <tr class="tdbg">
                <td class="tdbgleft" align="right" style="width: 80px"><strong>标签说明：</strong></td>
                <td align="left"><asp:TextBox ID="TxtLabelIntro" class="l_input" runat="server" TextMode="MultiLine" Columns="50" Rows="3" Height="60px"></asp:TextBox></td>
              </tr>
              <tr class="tdbg">
                <td colspan="2" height="28" align="center"><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack=true OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="1" Text="基本信息"></asp:ListItem>
                    <asp:ListItem Value="2" Text="数据查询"></asp:ListItem>
                    <asp:ListItem Value="3" Text="参数设定"></asp:ListItem>
                    <asp:ListItem Value="4" Text="标签内容"></asp:ListItem>
                  </asp:DropDownList>
                  <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="下一步" class="C_input" OnClick="StartNextButton_Click" />
                  <asp:Button ID="Button13" OnClick="BtnSave_Click" class="C_input" runat="server" Style="cursor: pointer; cursor: hand;" Text="保存标签" />
                  <input id="Button8" type="button" class="C_input" value="取　消" onclick="window.location.href='LabelManage.aspx'" style="cursor: pointer; cursor: hand;" /></td>
              </tr>
            </table>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin-top:5px">
              <tr align="left">
                <td width="10%" class="tdbg"><strong>　　辅助说明:</strong>本操作用于定义标签基本信息,标签建好后可以在前台任意位置调用输出动态数据：
                  <li>动态标签可以在任何页面引用,分页列表支持分页显示,数据源标签可节省查询效率,需要在模板中引用数据输出。</li>
                  <li>动态标签的调用格式为{ZL.Label id="标签名" NodeID="0" /}，其中 NodeID="0" 为变量参数，可于第二步编辑中定义或增减变量。</li>
                  <li>标签支持在任意动态页面输出，如&#60%Call.Label("{ZL.Label id=\"标签名称\" NodeID=\"91\" /}"); %&#62方法则能在非模板引擎页输出动态标签。</li>
                  <li>系统采用智能多库算法，数据库名请不要采用数字开头并夹带小数点等特殊符号，如[2009data.1]格式则是非法数据库名格式，不符合数据库联查标准。</li></td>
              </tr>
            </table>
          </asp:WizardStep>
          <asp:WizardStep ID="WizardStep2" runat="server" Title="step2">
            <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
              <tr>
                <td class="spacingtitle" colspan="2" align="center">第二步：数据查询</td>
              </tr>
              <tr class="tdbg">
                <td class="tdbgleft" align="right" style="width: 80px"><strong>选择数据：</strong></td>
                <td><table style="width: 100%; margin: 0 auto;">
                    <tr>
                    <td class="tdbg"><div id="selectdatediv" class="selectlist">
                        <table>
                        <tr>
                            <td><table>
                                <tr>
                                <td style="width: 100px; text-align: right; height: 22px;"> 请选择数据库： </td>
                                <td style="height: 22px"><asp:DropDownList ID="DatabaseList" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="TableDownList_SelectedIndexChanged" /></td>
                              </tr>
                                <tr>
                                <td style="width: 50px; text-align: right; height: 22px;"> 主表： </td>
                                <td style="height: 22px"><asp:DropDownList ID="DbTableDownList" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DBTableDownList_SelectedIndexChanged" /></td>
                              </tr>
                                <tr>
                                <td style="width: 50px; text-align: right;"> 输出字段： </td>
                                <td><asp:ListBox ID="DbFieldDownList" runat="server" Height="220px" Width="200px" SelectionMode="Multiple" /></td>
                              </tr>
                              </table></td>
                            <td><table id="table2" runat="server">
                                <tr>
                                <td style="width: 100px; text-align: right; height: 22px;"> 请选择数据库： </td>
                                <td style="height: 22px"><asp:DropDownList ID="DatabaseList2" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="TableDownList_SelectedIndexChanged2" /></td>
                              </tr>
                                <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                <td style="width: 50px; text-align: right; height: 22px;"> 从表： </td>
                                <td style="height: 22px"><asp:DropDownList ID="DbTableDownList2" runat="server" Width="200px" AutoPostBack="True"  OnSelectedIndexChanged="DBTableDownList2_SelectedIndexChanged" /></td>
                              </tr>
                                <tr>
                                <td style="width: 50px; text-align: right;"> 输出字段： </td>
                                <td><asp:ListBox ID="DbFieldDownList2" runat="server" Height="220px" Width="200px" SelectionMode="Multiple" /></td>
                              </tr>
                              </table></td>
                          </tr>
                      </table>
                        <br />
                        <font color="red">先取数据表后再选择输出字段，支持Ctrl或Shift选取操作</font></div></td>
                  </tr>
                  </table></td>
              </tr>
              <tbody id="tj" runat="server" visible="false">
                <tr>
                  <td class="tdbgleft" style="text-align: right;"> 约束字段： </td>
                  <td class="tdbg"><div id="ycdiv" class="selectlist">
                      <asp:DropDownList ID="Dbtj" runat="server" AutoPostBack="True" OnSelectedIndexChanged="TableJoin">
                      <asp:ListItem Value="left join">LeftJoin</asp:ListItem>
                      <asp:ListItem Value="Inner join">InnerJoin</asp:ListItem>
                      <asp:ListItem Value="outer join">OuterJoin</asp:ListItem>
                      <asp:ListItem Value="right join">RightJoin</asp:ListItem>
                    </asp:DropDownList>
                      <asp:DropDownList ID="DbFieldList" runat="server" Width="120px" AutoPostBack="True"  OnSelectedIndexChanged="TableJoin" />
                      =
                      <asp:DropDownList ID="DbFieldList2" runat="server" Width="120px" AutoPostBack="True" OnSelectedIndexChanged="TableJoin" />
                      &nbsp; </div></td>
                </tr>
              </tbody>
              <tr>
                <td class="tdbgleft" style="width: 80px; text-align: right;"> 查询表： </td>
                <td><asp:TextBox ID="TxtSqlTable" class="l_input" runat="server" Columns="60" Rows="7" Width="483px" TextMode="MultiLine" AutoPostBack="true" Height="60px"></asp:TextBox>
                  <br />
                  <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="从选择数据中选择主表，若选择了从表，请在约束字段中设定表连接条件"></asp:Label>
                  <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2" runat="server" ErrorMessage="，查询表不能为空!" ControlToValidate="TxtSqlTable"></asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                <td class="tdbgleft" style="width: 80px; text-align: right;"> 查询字段： </td>
                <td><asp:TextBox ID="TxtSqlField" class="l_input" runat="server" Columns="60" Rows="7" Width="485px" TextMode="MultiLine" AutoPostBack="true" Height="60px"></asp:TextBox>
                  <br />
                  <asp:Button ID="Button3" class="C_input" Style="width: 110px;" runat="server" Text="设定查询字段" OnClick="Button3_Click" />
                  <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="从输出字段中选择查询的字段，未选字段点击为全选操作"></asp:Label></td>
              </tr>
              <tr>
                <td colspan="2" align="center"><asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack=true OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem Value="1" Text="基本信息"></asp:ListItem>
                    <asp:ListItem Value="2" Text="数据查询"></asp:ListItem>
                    <asp:ListItem Value="3" Text="参数设定"></asp:ListItem>
                    <asp:ListItem Value="4" Text="标签内容"></asp:ListItem>
                  </asp:DropDownList>
                  <asp:Button ID="PreviousButtonStep3" runat="server" CausesValidation="False" class="C_input"  CommandName="MovePrevious" Text="上一步" OnClick="PreviousButtonStep3_Click" />
                  <asp:Button ID="NextButtonStep3" runat="server" class="C_input" CommandName="MoveNext"  OnClick="StartNextButton_Click" Text="下一步" />
                  <asp:Button ID="Button10" OnClick="BtnSave_Click" class="C_input" runat="server" Style="cursor: pointer; cursor: hand;" Text="保存标签" />
                  <input id="Button9" type="button" class="C_input" value="取　消" onclick="window.location.href='LabelManage.aspx'" style="cursor: pointer; cursor: hand;" /></td>
              </tr>
            </table>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin-top:5px">
              <tr align="left">
                <td width="10%" class="tdbg"><strong>　　辅助说明:</strong>数据库一般查询主数据库[仅高级版本支持从数据库]：
                  <li>多表查询应采用ID关联,比如文章模型则采用ZL_CommonModel left join ZL_C_Article on ZL_CommonModel.ItemID=ZL_C_Article.ID方法关联查询。</li>
                  <li>为保持查询效率，每次查询请撷取所需字段，从而提升效率。</li>
                  <li>建立标签时应注意多表间的逻辑，点此<a href="javascript:void(0);" onclick="javascript:window.open('http://www.zoomla.cn/learn')">下载数据字典</a>以提升开发效率。</li></td>
              </tr>
            </table>
          </asp:WizardStep>
          <asp:WizardStep ID="WizardStep3" runat="server" Title="step3">
            <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
              <tr>
                <td class="spacingtitle" colspan="2" align="center">第三步：参数设定</td>
              </tr>
              <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 80px; text-align: right;"> 添加参数： </td>
                <td class="tdbg"><table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" style="text-align: center">
                    <tr class="tdbg" align="center" style="height: 25px;">
                    <td style="width: 10%"> 参数名称 </td>
                    <td style="width: 10%"> 默认值 </td>
                    <td style="width: 15%"> 参数类型 </td>
                    <td style="width: 25%"> 参数说明 </td>
                    <td> 操作 </td>
                  </tr>
                    <asp:Repeater ID="repParam" runat="server" OnItemCommand="repParam_ItemCommand">
                    <ItemTemplate>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="center"><%#Eval("ParamName")%></td>
                        <td align="center"><%#Eval("ParamValue") %>
                          <td align="center"><%# GetParamType(Eval("ParamType","{0}"))%></td>
                        <td align="center"><%#Eval("ParamDesc")%></td>
                        <td align="center">&nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("Param") %>'>修改</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Del" CommandArgument='<%# Eval("Param") %>'>删除</asp:LinkButton></td>
                      </tr>
                      </ItemTemplate>
                  </asp:Repeater>
                  </table>
                  <br />
                  <table border="0" cellpadding="0" cellspacing="1" class="border" style="text-align: center">
                    <tr class="tdbg" align="center" style="height: 25px;">
                      <td style="height: 25px; width: 80px;"><asp:TextBox ID="TxtParamName" runat="server" Text="参数名称" Width="80px" /></td>
                      <td style="width: 80px; height: 25px"><asp:TextBox ID="TxtParamValue" runat="server" Text="默认值" Width="80px" /></td>
                      <td align="left" style="width: 100px; height: 25px"><asp:DropDownList ID="DDLParamType" runat="server">
                          <asp:ListItem Selected="True" Value="1">普通参数</asp:ListItem>
                          <asp:ListItem Value="2">页面参数</asp:ListItem>
                          <asp:ListItem Value="3">单选参数</asp:ListItem>
                          <asp:ListItem Value="4">多选参数</asp:ListItem>
                        </asp:DropDownList></td>
                      <td style="width: 100px; height: 25px" align="left"><asp:TextBox ID="TxtParamDesc" runat="server" Text="参数说明" Width="80px" /></td>
                      <td style="width: 80px; height: 25px"><asp:Button ID="BtnAddParam" runat="server" Text="添加" class="C_input" OnClick="BtnAddParam_Click"  Style="cursor: pointer; cursor: hand;" /></td>
                      <td style="height: 25px"><asp:HiddenField ID="HdnParam" runat="server" />
                        <asp:HiddenField ID="HdnTempParam" runat="server" /></td>
                    </tr>
                  </table></td>
              </tr>
              <tr class="tdbg">
                <td class="tdbgleft" style="width: 80px; text-align: right;"> 自定义参数：<br />
                  [拖放添加] </td>
                <td><div id="plist" class="plist">
                    <asp:Label ID="attlist" runat="server"></asp:Label>
                  </div></td>
              </tr>
              <tr class="tdbg">
                <td class="tdbgleft" style="width: 80px; text-align: right; height: 19px;"> 查询条件： </td>
                <td><div id="gridviewclause" class="fielddiv">
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
                    <asp:TextBox ID="TxtTjValue" class="l_input" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" class="C_input" Text="添加查询条件" OnClick="Button1_Click" />
                    <br />
                    <asp:TextBox ID="TxtSqlWhere" runat="server" class="l_input" onmouseup="dragend5(this)" Columns="60" Rows="3" Height="74px" Width="522px" TextMode="MultiLine"></asp:TextBox>
                  </div></td>
              </tr>
              <tr>
                <td class="tdbgleft" style="width: 80px; text-align: right; height: 19px;"> 字段排序： </td>
                <td><div id="Div2" class="fielddiv">
                    <asp:DropDownList ID="DDLOrderTable" runat="server" AutoPostBack="True" OnSelectedIndexChanged="BindOrderField">
                    <asp:ListItem Selected="True">主表</asp:ListItem>
                    <asp:ListItem>从表</asp:ListItem>
                  </asp:DropDownList>
                    <asp:DropDownList ID="DDLOrderField" runat="server" Width="120px" />
                    <asp:DropDownList ID="DDLOrder" runat="server">
                    <asp:ListItem Value="DESC">降序</asp:ListItem>
                    <asp:ListItem Value="ASC">升序</asp:ListItem>
                  </asp:DropDownList>
                    <asp:Button ID="Button2" class="C_input" runat="server" Text="添加排序字段" OnClick="Button2_Click"
                                Style="cursor: pointer; cursor: hand;" ValidationGroup="false" />
                    <br />
                    <asp:TextBox ID="TxtOrder" class="l_input" runat="server" Columns="60" Rows="7" TextMode="MultiLine"
                                Width="522px" Height="69px" onmouseup="dragend6(this)"></asp:TextBox>
                    <br />
                    <span style="color: Red;">(大部分时候需要填写，建议：字段排序不能为空)</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtOrder"
                                Display="None" ErrorMessage="当标签为分页标签时,字段排序不能为空" Style="display: none" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  </div></td>
              </tr>
              <tr class="tdbg">
                <td class="tdbgleft" style="width: 80px; text-align: right;"> 数据数目： </td>
                <td><asp:TextBox ID="TextBox1" class="l_input" runat="server" Text="10" Width="50px"></asp:TextBox></td>
              </tr>
              <tr>
                <td colspan="2" align="center"><asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack=true OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    <asp:ListItem Value="1" Text="基本信息"></asp:ListItem>
                    <asp:ListItem Value="2" Text="数据查询"></asp:ListItem>
                    <asp:ListItem Value="3" Text="参数设定"></asp:ListItem>
                    <asp:ListItem Value="4" Text="标签内容"></asp:ListItem>
                  </asp:DropDownList>
                  <asp:Button ID="Button4" runat="server" CausesValidation="False" class="C_input" CommandName="MovePrevious" Text="上一步" OnClick="PreviousButtonStep3_Click" />
                  <asp:Button ID="Button5" runat="server" class="C_input" CommandName="MoveNext" OnClick="StartNextButton_Click" Text="下一步" />
                  <asp:Button ID="Button12" OnClick="BtnSave_Click" class="C_input" runat="server" Style="cursor: pointer; cursor: hand;" Text="保存标签" />
                  <input id="Button11" type="button" class="C_input" value="取　消" onclick="window.location.href='LabelManage.aspx'" style="cursor: pointer; cursor: hand;" /></td>
              </tr>
            </table>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin-top:5px">
              <tr align="left">
                <td width="10%" class="tdbg"><strong>　　辅助说明:</strong>设定您要定义的参数：
                  <li>支持中文名定义参数,参数可以在前台模板中传递数值。</li>
                  <li>支持采用页面采数传递信息。</li>
                  <li>参数可自由拖放到查询条件、排序规则、数据条目等位置。</li>
                  <li>参数支持普通参数、页面参数、单选参数、多选参数四种模式，其中单选参数与多选参数的值以$符号切割，如：华东$华南$华西$华北。</li>
                  <li>查询条件支持嵌入T-sql语法规则，例如一条查询指定节点下的二级数据规则，可设定条件：NodeID in (select NodeID from ZL_Node where ParentID=@NodeID) or NodeID=@NodeID,当然也可以采用更高效的父节点属性查询：NodeID=@NodeID or FirstNodeID=@NodeID（注@NodeID为节点变量）。</li></td>
              </tr>
            </table>
          </asp:WizardStep>
          <asp:WizardStep ID="WizardStep4" runat="server" Title="step4">
            <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
              <tr>
                <td class="spacingtitle" colspan="2" align="center">第四步：标签内容</td>
              </tr>
              <tr>
                <td class="tdbgleft" style="width: 80px; text-align: right;"> 自定义参数：<br />
                  [拖放添加] </td>
                <td><div id="Div3" class="plist">
                    <asp:Label ID="attlist1" runat="server"></asp:Label>
                  </div></td>
              </tr>
              <tr>
                <td class="tdbgleft" style="width: 80px; text-align: right;"> 判断模式： </td>
                <td bgcolor="#e8f5ff" ><asp:CheckBox ID="boolmodel" runat="server" Text="开启判断模式" AutoPostBack="True" />
                  <font color="red">[开启后将根据判断条件输出内容]</font>
                  <iframe id="I1" frameborder="0" name="I1" scrolling="no" src="label.htm" style="height: 30px;  width: 530px; margin-left: 142px;"></iframe></td>
              </tr>
              <tr id="isbool" runat="server" visible="false" bgcolor="#cbe6fc" style="background:#cbe6fc">
                <td class="tdbgleft" style="width: 80px; text-align: right; height: 24px"> 模式设置： </td>
                <td><%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Modelvalue" ErrorMessage="条件数值不能为空!" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>--%>
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
                  <asp:TextBox ID="Modelvalue" class="l_input" runat="server" Width="140px" ToolTip="注意：当判断是否为空时，请不要填写任何内容"></asp:TextBox>
                  <asp:Label ID="Label3" runat="server" ForeColor="#339933" Visible="False" Font-Bold="True"></asp:Label></td>
              </tr>
              <tr>
                <td class="spacingtitle" style="width: 100%; text-align: left;" colspan="2"><strong>标签内容:
                  <asp:Label ID="Label8" runat="server" Text="(<font color=red>满足</font>判断)"
                            Visible="false"></asp:Label>
                  </strong></td>
              </tr>
              <tr>
                <td class="tdbgleft" style="width: 100%; text-align: right;" colspan="2"><table style="width: 100%">
                    <tr>
                    <td style="width: 322px; vertical-align: top;" id="frmTitle"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tbody id="ss">
                        <tr align="center">
                            <td><div id="Tab1_header">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr align="center">
                                    <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)" style="width: 81px"> 自定标签 </td>
                                    <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)" style="width: 81px"> 字段标签 </td>
                                    <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)" style="width: 81px"> 系统标签 </td>
                                    <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)" style="width: 81px"> 扩展函数 </td>
                                    <td>&nbsp;</td>
                                  </tr>
                              </table>
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tbody id="Tabs0">
                                    <tr align="center">
                                    <td><asp:DropDownList ID="DDLCate" runat="server" OnSelectedIndexChanged="ChangeCate" AutoPostBack="true"> </asp:DropDownList></td>
                                  </tr>
                                    <tr align="center">
                                    <td><div style="overflow: auto; height: 410px">
                                        <asp:Label ID="LblLabel" runat="server"></asp:Label>
                                      </div></td>
                                  </tr>
                                  </tbody>
                                <tbody id="Tabs1" style="display: none">
                                    <tr align="center">
                                    <td><div style="overflow: auto; height: 410px">
                                        <asp:Label ID="LblColumn" runat="server" Text="标签字段"></asp:Label>
                                      </div></td>
                                  </tr>
                                  </tbody>
                                <tbody id="Tabs2" style="display: none">
                                    <tr align="center">
                                    <td><div style="overflow: auto; height: 410px">
                                        <asp:Label ID="LblSysLabel" runat="server"></asp:Label>
                                      </div></td>
                                  </tr>
                                  </tbody>
                                <tbody id="Tabs3" style="display: none">
                                    <tr align="center">
                                    <td><div style="overflow: auto; height: 410px">
                                        <asp:Label ID="LblFunLabel" runat="server"></asp:Label>
                                      </div></td>
                                  </tr>
                                  </tbody>
                              </table>
                              </div></td>
                          </tr>
                      </tbody>
                      </table></td>
                    <td align="left"><div id="Textarea">
                        <asp:TextBox TextMode="MultiLine" runat="server" ID="textContent" Width="100%" Style="border: solid 1px #8EC1EE"  Height="410px"></asp:TextBox>
                      </div></td>
                  </tr>
                  </table></td>
              </tr>
              <tr id="s1" runat="server" visible="false">
                <td class="spacingtitle" style="width: 100%; text-align: left;" colspan="2"><strong>标签内容:(<font color="red">不满足</font>判断)</strong></td>
              </tr>
              <tr id="s2" runat="server" visible="false">
                <td class="tdbgleft" style="width: 100%; text-align: right;" colspan="2"><table style="width: 100%">
                    <tr>
                    <td align="left"><font color="red"><b>当选择计数判断时，下面只能填写{Repeate}标签里面的内容</b></font>
                        <asp:TextBox TextMode="MultiLine"  runat="server" ID="falsecontent" Width="100%" Height="231px" onmouseup="dragend4(this)"></asp:TextBox></td>
                  </tr>
                  </table></td>
              </tr>
              <tr class="tdbg">
                <td align="center" colspan="2"><asp:HiddenField ID="HdnlabelID" runat="server" />
                  <div style="float: left; padding-left: 250px; display: none">
                    <input id="BtnCancel" type="button" class="C_input" value="取　消" onclick="window.location.href='LabelManage.aspx'" style="cursor: pointer; cursor: hand;" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnSave" OnClick="BtnSave_Click" class="C_input" runat="server" Style="cursor: pointer; cursor: hand;" Text="保存标签" />
                    &nbsp;&nbsp;&nbsp; </div>
                  <div id="Div1" style="float: left"></div>
                  <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" /></td>
              </tr>
              <tr>
                <td colspan="2" align="center"><asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack=true OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                    <asp:ListItem Value="1" Text="基本信息"></asp:ListItem>
                    <asp:ListItem Value="2" Text="数据查询"></asp:ListItem>
                    <asp:ListItem Value="3" Text="参数设定"></asp:ListItem>
                    <asp:ListItem Value="4" Text="标签内容"></asp:ListItem>
                  </asp:DropDownList>
                  <input id="buttons" name="buttons" type="button" value="可视化预览" class="C_input" onclick="createEditor()" />
                  <asp:Button ID="PreviousButtonFinish" runat="server" CausesValidation="False" class="C_input" CommandName="MovePrevious" Text="上一步" OnClick="PreviousButtonStep3_Click" />
                  <asp:Button ID="Button6" OnClick="BtnSave_Click" class="C_input" runat="server" Style="cursor: pointer; cursor: hand;" Text="保存标签" />
                  <input id="Button7" type="button" class="C_input" style="width: 110px;" value="取　消" onclick="window.location.href='LabelManage.aspx'" style="cursor: pointer; cursor: hand;" /></td>
              </tr>
            </table>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" style="margin-top:5px">
              <tr align="left">
                <td width="10%" class="tdbg"><strong>　　辅助说明:</strong>标签内容决定输出的信息表现形式：
                  <li>标签内容支持CSS等HTML定义，可以从左侧拖拽标签参数使用。</li>
                  <li>重复输出数据请需要在{Repeate}{/Repeate}内进行排序输出。</li>
                  <li>扩展函数支持字段格式化、截取、重新筛选、取值获值等操作，使数据输出更加科学合理。</li>
                  <li>由于多浏览器兼容与W3C规则严谨度要求，建议标签预览仅作为预览使用，不作为保存操作，以免产生乱码。</li></td>
              </tr>
            </table>
          </asp:WizardStep>
        </WizardSteps>
        <StepNavigationTemplate>
          <center>
          </center>
        </StepNavigationTemplate>
        <StartNavigationTemplate>
          <center>
          </center>
        </StartNavigationTemplate>
        <FinishNavigationTemplate>
          <center>
          </center>
        </FinishNavigationTemplate>
      </asp:Wizard>
      <%--</ContentTemplate>
</asp:UpdatePanel>--%>
</form>
</body>
</html>