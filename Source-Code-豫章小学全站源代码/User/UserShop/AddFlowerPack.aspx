<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_AddFlowerPack, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加花束包装</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="margin-top: 10px; width: 98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的店铺" href="Default.aspx">我的店铺</a>&gt;&gt;><a title="用户包装管理" href="UserFloPack.aspx">用户包装管理</a>&gt;&gt;<span id="li" runat="server">添加包装</span>
</div>
<asp:HiddenField ID="hfid" runat="server" />
  <div class="us_seta" style="margin-top: 5px;"><h1 align="center">编辑包装</h1></div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;"
        id="TABLE1">
        <tr>
            <td width="33%" align="right">包装名称：</td>
            <td width="67%">
                <asp:TextBox ID="paname" runat="server" Width="332px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="包装名称不能为空！" ControlToValidate="paname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="33%" align="right">包装价格：</td>
            <td width="67%">
                <asp:TextBox ID="txtprice" runat="server" Width="84px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8"  runat="server" ControlToValidate="txtPrice" ErrorMessage="包装价格格式不正确!" ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>(含包装、设计及服务费)
            </td>
        </tr>      
        <tr>
            <td width="33%" align="right">包装说明：</td>
            <td width="67%"><asp:TextBox ID="remark" runat="server" Height="119px" Width="334px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="100%" align="center"colspan="2">
                <asp:Button ID="Button1" runat="server" Text=" 添 加 " onclick="Button1_Click" />
            &nbsp;<input type="button" id="b" onclick="javascript:location.href='UserFloPack.aspx'" value=" 取 消 " />
            </td>
        </tr>
    </table>

</form>
</body>
</html>