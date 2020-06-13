<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.Content.CollectionStep1, App_Web_buw3nddg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>采集管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
    //添加专题
    function AddToSpecial() {
        var urlstr = "SpecialList.aspx";
        var isMSIE = (navigator.appName == "Microsoft Internet Explorer");
        var special = null;
        if (isMSIE) {
            special = window.showModalDialog(urlstr, "self,width=200,height=150,resizable=yes,scrollbars=yes");
            if (special != "") {
                var arr = special.split(',');
                var odlsp = document.getElementById("HdnSpec").value;
                var odlarr = odlsp.split(',');
                var s = true;
                for (var arri = 0; arri < odlarr.length; arri++) {
                    if (odlarr[arri] == arr[0]) {
                        s = false;
                    }
                }
                if (s) {
                    AddRow(arr[1], arr[0], document.all.SpecTable, "此专题", 2);
                    document.getElementById("HdnSpec").value = odlsp + arr[0] + ",";
                }
            }
        }
        else {
            window.open(urlstr, 'newWin', 'modal=yes,width=200,height=150,resizable=yes,scrollbars=yes');
        }
    }

    //主节点
    function ShowNode(nodename) {
        document.getElementById("<%=txtNode.ClientID%>").value = nodename;
    }

    //添加节点
    function AddNode(type) {
        var nid = document.getElementById("<%=hfNode.ClientID%>").value;
        window.open('../Common/NodeList.aspx?nid=' + nid + '&type=' + type + '', 'newWin', 'modal=yes,width=400,height=300,resizable=yes,scrollbars=yes');
    }

    //添加条件行
    function AddNodeRow(nodename, nodeid) {
        AddRow(nodename, nodeid, document.all.NondeTable, "此节点", 1);
    }

    var i = 0, j = 0;     //行号与列号
    var oNewRow;    //定义插入行对象
    var oNewCell1, oNewCell2;     //定义插入列对象

    //添加条件行
    function AddRow(nodename, nodeid, tableid, text, index) {
        i = tableid.rows.length;
        oNewRow = tableid.insertRow(i);
        oNewRow.id = nodeid;

        //添加第一列
        oNewCell1 = tableid.rows[i].insertCell(0)
        oNewCell1.innerHTML = "<input type='text' id='Value" + nodeid + "'" + " style=\"width:250px;\" disabled=\"disabled\" value=\"" + nodename + "\">";

        //添加第二列
        oNewCell2 = tableid.rows[i].insertCell(1)
        oNewCell2.innerHTML = "&nbsp;<input type=button name=Del" + nodeid + " style=\"width:80px\" value='移除" + text + "'" + "onclick=\"if(confirm('你确定要从" + text + "中移除吗？'))DelCurrentRow(" + nodeid + "," + index + ");\">";
        j++;

    }
    //删除行
    function DelCurrentRow(nodeid, index) {
        var tableid;
        var hfClient;
        if (index == 1) {
            tableid = document.all.NondeTable;
            hfClient = document.getElementById("<%=hfNode.ClientID%>");
        }
        if (index == 2) {
            tableid = document.all.SpecTable;
            hfClient = document.getElementById("<%=HdnSpec.ClientID%>");
        }
        with (tableid) {
            for (var i = 0; i < rows.length; i++) {
                if (rows[i].id == nodeid) {
                    deleteRow(i);
                }
            }
        }
        var nid = hfClient.value;
        var arr = nid.split(",");
        var v = "";
        for (i = 0; i < arr.length; i++) {
            if (arr[i] != nodeid && arr[i] != "") {
                v += arr[i] + ",";
            }
        }
        hfClient.value = v;
        //document.write(document.getElementById("<%=hfNode.ClientID%>").value);
    }

</script>

<style type="text/css">
    .style1
    {
        background: #e0f7e5;
        padding: 2px;
        width: 20%;
        height: 43px;
    }
    .style2
    {
        height: 43px;
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理 </span>&gt;&gt;<span> 系统设置 </span>&gt;&gt;<span><a href="ContentManage.aspx"> 内容管理 </a></span>&gt;&gt; <span><a href="CollectionManage.aspx">采集项目管理</a></span> &gt;&gt; <span>
            <%=title%></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <%=type%>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <strong>项目名称：</strong>
            </td>
            <td>
                <asp:TextBox ID="txtItemName" runat="server" Width="200px" class="l_input" 
                   ></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtItemName" ErrorMessage="请输入项目名称"></asp:RequiredFieldValidator></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <strong>网站名称： </strong>
            </td>
            <td>
                <asp:TextBox ID="txtSiteName" runat="server" Width="199px" class="l_input"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSiteName" ErrorMessage="请输入网站名称"></asp:RequiredFieldValidator></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                          <strong>目标模型：</strong>
            </td>
            <td>
                <asp:DropDownList ID="ddlModel" runat="server" DataTextField="ModelName" 
                    DataValueField="ModelID" AutoPostBack="True" 
                    onselectedindexchanged="ddlModel_SelectedIndexChanged">
                </asp:DropDownList>

                <asp:Label ID="Lbl_checkNode" runat="server" Visible="false" Text="你选择的栏目没有绑定数据表单！" style="font-size:12px; color:Red"></asp:Label>

            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <strong>入库节点：</strong>
            </td>
            <td>
                <asp:TextBox ID="txtNode" runat="server" Width="250px" Enabled="false" 
                    class="l_input"></asp:TextBox>&nbsp;<input id="Button2" class="C_input"  style="width:130px;"  type="button" value="更改节点" style="width: 80px" onclick="AddNode('link')" />&nbsp;<input id="Button4" class="C_input" type="button"  style="width:130px;"  value="添加到其他节点" onclick="AddNode('check')" />
                <table cellpadding="0" cellspacing="0" id="NondeTable" border="0">
                </table>
                <asp:HiddenField ID="hfNode" runat="server" Value="1|选择节点," />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <strong>入库专题：</strong>
            </td>
            <td>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" id="SpecTable" border="0">
                            </table>
                        </td>
                        <td valign="top">
                            &nbsp;<input type="button" id="Button5" style="width:110px;"   value="添加到专题" onclick="AddToSpecial()" class="C_input" />
                            <asp:HiddenField ID="HdnSpec" runat="server" />
                        </td>
                    </tr>
                </table>
                <asp:DataList ID="dlSpec" runat="server" Width="100%">
                    <ItemTemplate>
                        <asp:TextBox ID="txtSpecial" class="l_input" runat="server" Width="250px" Text='<%#DataBinder.Eval(Container.DataItem, "Context")%>' Enabled="false"></asp:TextBox>&nbsp;<asp:Button ID="Button6" class="C_input"  style="width:130px;" runat="server" Text="从此专题中移除" OnClick="Button6_Click" OnClientClick="return confirm('你确定要从此专题中移除吗？')" />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <strong>采集URL：</strong>
            </td>
            <td>
                <asp:TextBox ID="txtUrl" class="l_input" runat="server" Width="360px" Text="http://">http://</asp:TextBox><span style="color: Green">&nbsp; 注：以 http:// 开头</span>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUrl" ErrorMessage="请输入正确的采集URL" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]+[\u4e00-\u9fa5]*)?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <strong>网站登录：</strong>
            </td>
            <td >
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal"  AutoPostBack="true"
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Value="1"  Selected="True">不需要登录</asp:ListItem>
                    <asp:ListItem Value="2">设置参数</asp:ListItem>                                       
                </asp:RadioButtonList> <span style="color: Green">&nbsp;只有在对方网站没有开启登录验证码功能时，才能进行登录采集</span>              
            </td>            
        </tr>
         <tr id="user1" class="tdbg" runat="server" visible="false" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <strong>用户参数：</strong>
            </td>
            <td>
                <strong>用户文本框名称：</strong><asp:TextBox ID="UTBName" runat="server" class="l_input"></asp:TextBox><strong>用户名称：</strong><asp:TextBox ID="username" runat="server"  class="l_input"></asp:TextBox></td>
        </tr>
        <tr  id ="password1" class="tdbg" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <strong>密码参数：</strong>
            </td>
            <td>
                <strong>密码文本框名称：</strong><asp:TextBox ID="PTBName" runat="server"  class="l_input"></asp:TextBox><strong>用户密码：</strong><asp:TextBox ID="password" runat="server" class="l_input" ></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <strong><font color=red>编码选择：</font></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="rblCoding" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1" Selected="True">GB2312</asp:ListItem>
                    <asp:ListItem Value="2">UTF-8</asp:ListItem>
                    <asp:ListItem Value="3">Big5</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <strong>采集数量：</strong>
            </td>
            <td>
                <asp:TextBox ID="txtNum" class="l_input" runat="server" Width="67px"></asp:TextBox><span style="color: Green">&nbsp; 注：不指定为全部</span>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <strong>备 注：</strong>
            </td>
            <td>
                <asp:TextBox ID="txtContext" runat="server" Rows="8" TextMode="MultiLine" 
                    Width="559px" class="l_input" Height="68px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg">
            <td colspan="2" align="center">
                <asp:Button ID="Button1" class="C_input" runat="server" Text="下一步" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Button3" class="C_input" type="button" value="返  回" onclick="window.location.href='CollectionManage.aspx'" />
            </td>
        </tr>
    </table>

    <script language="javascript">
        window.onload = function() {
            var str = "";
            str = window.document.getElementById("<%=hfNode.ClientID%>").value;
            if (str != "") {
                var strarr = str.split(",");
                var s = "";
                if (strarr.length > 0) {
                    var sa = strarr[0].split("|");
                    s += sa[0] + ",";
                    window.document.getElementById("<%=txtNode.ClientID%>").value = sa[1].replace("&gt;&gt;", ">>");
                    for (var ii = 0; ii < strarr.length; ii++) {
                        if (ii > 0) {
                            if (strarr[ii] != "") {
                                var sarr = strarr[ii].split("|");
                                AddNodeRow(sarr[1], sarr[0]);
                                s += sarr[0] + ",";
                            }
                        }
                    }
                }
                window.document.getElementById("<%=hfNode.ClientID%>").value = s;
            }

            str = window.document.getElementById("<%=HdnSpec.ClientID%>").value;
            strarr = str.split(",");
            var s = ""; //alert(str);
            if (strarr.length > 0) {
                for (var ii = 0; ii < strarr.length; ii++) {
                    if (strarr[ii] != "") {
                        var sarr = strarr[ii].split("|");
                        AddRow(sarr[1], sarr[0], document.all.SpecTable, "此专题", 2);
                        s += sarr[0] + ",";
                    }
                }
            }
            window.document.getElementById("<%=HdnSpec.ClientID%>").value = s;
        }
    </script>
    </form>
</body>
</html>