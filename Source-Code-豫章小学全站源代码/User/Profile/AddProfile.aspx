<%@ page language="C#" autoeventwireup="true" inherits="User_Profile_AddProfile, App_Web_ktmoec40" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加返利</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="../../JS/calendar.js" type="text/javascript"></script>
<style type="text/css">
.style3{height: 29px;}
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
您现在的位置：<span id="Span1"><a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a>&gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; <a href="OrderManage.aspx?state=0">我的订单</a>&gt;&gt;<a>用户提交订单</a>
</div>
<table width="100%" cellpadding="2" cellspacing="1">
    <tr>
        <td colspan="2" align="center">
            <asp:Label ID="Label1" runat="server" Text="用户提交订单"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="right" width="45%">网站名字：</td>
        <td>
            <asp:TextBox ID="txtwname" runat="server" Width="150px" ReadOnly="true"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" width="45%">订单编号：</td>
        <td>
            <asp:TextBox ID="txtOrderID" runat="server" Width="150px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtOrderID" ErrorMessage="订单编号不能为空!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right"  width="45%">日期:</td>
        <td>
             <asp:TextBox ID="txtOrderData" onclick="calendar()" runat="server" Width="150px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                 ControlToValidate="txtOrderData" ErrorMessage="订单日期不能为空!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" width="45%" class="style3">订单金额:</td>
        <td class="style3">
            <asp:TextBox ID="txtOrderMoney" runat="server" Width="150px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator12"
                runat="server" ControlToValidate="txtOrderMoney" ErrorMessage="订单金额必须是数字!" ValidationExpression="^(-?\d+)(\.\d+)?$" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </td>
    </tr>
       <tr>
        <td colspan="2" align="center">
            <asp:Button ID="Button1" runat="server" Text="添加" Width="68px"  OnClientClick="javascript:if(check()) return true;else return false;" onclick="Button1_Click" />&nbsp;
            <asp:Button ID="Button2" runat="server" Text="取消" Width="63px" onclick="Button2_Click"  CausesValidation="False" />
        </td>
    </tr>
</table>
</form>
</body>
</html>