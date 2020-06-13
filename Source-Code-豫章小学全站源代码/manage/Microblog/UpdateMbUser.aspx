<%@ page language="C#" autoeventwireup="true" inherits="manage_Microblog_UpdateMbUser, App_Web_hihf5f3l" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>修改微博用户信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
    function ElectChan() {
        var cen = document.getElementById("cen");
        if (cen.checked) {
            document.getElementById("tcen").style.display = "";
        } else {
            document.getElementById("tcen").style.display = "none";
        }
    }
</script>
</head>
<body onload="ElectChan()">
<form id="form1" runat="server">
<div class="r_navigation">

<span>后台管理</span> &gt;&gt; <span>微博管理</span> &gt;&gt; <span><a href="ThemeManage.aspx">微博用户管理</a></span></div>
<div class="clearbox"></div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
    <tr>
        <td class="spacingtitle" colspan="2" align="center">
            <asp:Literal ID="LTitle" runat="server" Text="修改微博用户信息"></asp:Literal>
            <asp:HiddenField ID="hfid" runat="server" />
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="center" width="30%" class="tdbgleft"><strong>用户名：</strong></td>
        <td> <asp:TextBox ID="txtName" runat="server" class="l_input" Width="214px" Height="20px" Enabled="false"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="center" class="tdbgleft" style="height: 26px"><strong>用户信息：</strong></td>
        <td style="height: 26px;">
        <input id="Elect" runat="server" type="checkbox"/>推荐&nbsp;
        <input type="checkbox" id="cen" runat="server" onclick="ElectChan()" />认证
        </td>
    </tr>
    <tbody id="tcen" style="display:none">
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="center" class="tdbgleft"><strong>认证标签：</strong></td>
        <td><asp:TextBox ID="txtRemark" runat="server" class="l_input" Width="214px" Height="20px"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="center" class="tdbgleft"><strong>认证信息：</strong></td>
        <td><asp:TextBox ID="txtCRemark" runat="server" TextMode="MultiLine" 
                class="l_input" Height="119px" Width="382px"></asp:TextBox></td>
    </tr>
    </tbody>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="center" class="tdbgleft"><strong>是否启用：</strong></td>
        <td><asp:RadioButtonList ID="rbisUse" runat="server" RepeatDirection="Horizontal">
               <asp:ListItem Value="1" Selected="True">启用</asp:ListItem><asp:ListItem Value="0">停用</asp:ListItem></asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="center" class="tdbgleft"><strong>用户标题：</strong></td>
        <td><asp:TextBox ID="txttitle" runat="server" class="l_input" Width="214px" Height="20px"></asp:TextBox>(即用户主页显示的标题)</td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="center" class="tdbgleft"><strong>备案信息：</strong></td>
        <td><asp:TextBox ID="txtRecord" runat="server" class="l_input"></asp:TextBox></td>
    </tr>
    <tr>
        <td colspan="2" align="center" style="height: 59px">
            <asp:Button ID="EBtnSubmit" class="C_input" Text="修改微博用户" runat="server" OnClick="EBtnSubmit_Click" />
            <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='MbUser.aspx'" id="Button2" />
        </td>
    </tr>
</table>
</form>
</body>
</html>
