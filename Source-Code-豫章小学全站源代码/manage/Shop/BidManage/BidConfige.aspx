<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_BidManage_BidConfige, App_Web_wtzqf5go" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>竞拍信息配置</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
 <div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt;<span>商城管理</span> &gt;&gt;<span>竞拍管理</span> &gt;&gt;<span>用户干扰设置</span>
</div>
<div class="clearbox"></div>
 <table width="99%" cellspacing="1" cellpadding="0" class="border">
    <tr class="tdbg">
        <td colspan="2" align="center" class="title">
            <asp:Label ID="Label1" runat="server" Text="竞拍参数设置"></asp:Label>&nbsp;
        </td>
    </tr>
    <tr class="tdbg">
        <td align="center" class="tdbg">
            竞拍信誉值:
        </td>
         <td>
           用户竞拍1元可增加<asp:TextBox ID="txtVal" runat="server" class="l_input"></asp:TextBox>信誉值&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4"  runat="server" ControlToValidate="txtVal" ErrorMessage="信誉值格式不正确!"
                ValidationExpression="^-?\d+$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
     <tr class="tdbg">
        <td align="center" class="tdbg">
            竞拍积分值:
        </td>
         <td>
           用户竞拍1元可增加<asp:TextBox ID="txtPoint" runat="server" class="l_input"></asp:TextBox>积分&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" ControlToValidate="txtPoint" ErrorMessage="积分值格式不正确!"
                ValidationExpression="^-?\d+$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
     <tr class="tdbg">
        <td align="center" class="tdbg">
            竞拍商品封顶:
        </td>
         <td>
           用户每个月可获取:<asp:TextBox ID="txtShopNum" runat="server" class="l_input"></asp:TextBox>件商品<font>0为不封顶</font>&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server" ControlToValidate="txtShopNum" ErrorMessage="商品数量格式不正确!"
                ValidationExpression="^-?\d+$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </td>
    </tr>
     <tr class="tdbg">
        <td class="tdbg" colspan="2"><asp:Button ID="btn" runat="server" Text="保存" 
                class="C_input" onclick="btn_Click" /></td>
    </tr>
</table>
</form>
</body>
</html>
