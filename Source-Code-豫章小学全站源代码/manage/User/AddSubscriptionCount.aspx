<%@ page language="C#" autoeventwireup="true" inherits="manage_User_AddSubscriptionCount, App_Web_own0w3ym" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加订阅内容</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" language="javascript" type="text/javascript"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
<script type="text/javascript" src="/js/Dialog.js"></script>
<script>
    function Openwin(url,title) {
        var diag = new Dialog();
        diag.Modal = false;
        diag.Width = 800;
        diag.Height = 400;
        diag.Title = title;
        diag.URL = url;
        diag.show();
    }

    function SelChan(obj) {
        if (obj == "0") {
            document.getElementById("priUser").style.display = "";
            document.getElementById("UserGroup").style.display = "none";
        }
        if (obj == "1") {
            document.getElementById("priUser").style.display = "none";
            document.getElementById("txtUserID").value = "";
            document.getElementById("hfid").value = "";
            document.getElementById("UserGroup").style.display = "";
        }
        if (obj == "2") {
            document.getElementById("priUser").style.display = "none";
            document.getElementById("txtUserID").value = "";
            document.getElementById("hfid").value = "";
            document.getElementById("UserGroup").style.display = "none";
        }
    }

    function Check() {
        if (document.getElementById("selUserType").value == "0") {
            if (document.getElementById("priUser").value == "") {
                return true;
            }
        }
        return false;
    }

</script>
</head>
<body>
<form id="form1" runat="server">
 <div class="r_navigation">后台管理&gt;&gt; 附件管理 &gt;&gt; <a href="SubscriptListManage.aspx?menu=all">订阅管理</a>&gt;&gt;<asp:Label ID="lblName" runat="server"></asp:Label> </div>
    <div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
            <tr>
                <td align="center" colspan="2" class="spacingtitle">
                    <b><asp:Label ID="lblName1" runat="server"></asp:Label></b></td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td width="15%" align="right" class="tdbgleft">投递标题：</td>
                <td>
                <asp:TextBox ID="txtTitle" runat="server" class="l_input" ReadOnly="true" ></asp:TextBox>
                    <asp:TextBox ID="title" runat="server" class="l_input" ReadOnly="true" 
                        TextMode="MultiLine" Height="121px" Width="264px"></asp:TextBox>
                     <input id="Button2" runat="server" type="button" value="选择订阅内容" onclick="Openwin('SelectContent.aspx','选择内容');void(0)" 
                        class="C_input" /><asp:RequiredFieldValidator ID="checkTitle" runat="server" 
                        ErrorMessage="投递标题不能为空!" ControlToValidate="title" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:HiddenField ID="GerenerId" runat="server" />
                </td>
            </tr>
            <tr class="tdbg">
            <td class="tdbgleft" style="height: 26px" align="right">投递对象：</td>
            <td style="height: 26px">
            <asp:TextBox ID="txtSel" runat="server" class="l_input" ReadOnly="true" ></asp:TextBox>
                <select id="selUserType" runat="server" onchange="SelChan(this.value)" >
                    <option Value="0" Selected="Selected">用户</option>
                    <option Value="1">用户组</option>
                    <option Value="2">所有用户</option>
                </select></td>
            </tr>
            <tbody id="priUser">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="right">目标用户：</td>
                <td>
                <asp:TextBox ID="userId" runat="server" class="l_input" ReadOnly="true" ></asp:TextBox>
                <asp:TextBox ID="txtUserID" runat="server" ReadOnly="true" class="l_input" TextMode="MultiLine" 
                        Width="262px" Height="94px"></asp:TextBox>
                <input id="Button1" type="button" runat="server" value="选择订阅用户" onclick="Openwin('SelectUserName.aspx','选择客户');void(0)" class="C_input" />
                <asp:HiddenField ID="hfid" runat="server"  />&nbsp;</td>
            </tr>
            </tbody>
            <tbody id="UserGroup" style="display:none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="right">用户组：</td>
                <td><asp:DropDownList ID="ddGroup" runat="server">
                </asp:DropDownList></td>
            </tr>
            </tbody>
            <tr class="tdbg">
            <td class="tdbgleft" style="height: 26px" align="right">允许退订：</td>
            <td style="height: 26px">
                <asp:DropDownList ID="ddlRe" runat="server">
                    <asp:ListItem Value="0" Selected="True">否</asp:ListItem>
                    <asp:ListItem Value="1">是</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" style="height: 26px" align="right">生效时间：</td>
                <td style="height: 26px">
                    <asp:TextBox ID="txtCreateTime" onclick="calendar()" runat="server" class="l_input"></asp:TextBox></td>
            </tr>
            <tr  class="tdbg">
                <td class="tdbgleft" style="height: 26px" align="right">到期时间：</td>
                <td style="height: 26px">
                 <asp:TextBox ID="txtEndTime" onclick="calendar()" runat="server" class="l_input"></asp:TextBox></td>
            </tr>
            <tr><td ></td><td><font color="red">注:生效时间为空为当前时间即生效,到期时间为空则为无限期; 如已投递信息则匹配最新策略</font></td></tr>
            <tr class="tdbgbottom">
                <td colspan="2">
                    <asp:Button ID="BtnSend" class="C_input" runat="server" Text="提交" Width="76px" OnClick="BtnSend_Click"  />
                    &nbsp;&nbsp; &nbsp;
                    <input id="Reset1" type="button" value="取消" width="60px" class="C_input" onclick="javascript:location.href='SubscriptListManage.aspx?menu=all'" /></td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>