<%@ page language="C#" autoeventwireup="true" inherits="User_Info_UserDeci_Modify, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>编辑地址薄</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function Secc() {
        alert('添加成功！');
        location.href = 'UserRecei.aspx';
    }
    function Seccerr() {
        alert('添加失败！');
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
您现在的位置：<span id="Span1">
	<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a>&gt;&gt;
	<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&nbsp;&gt;&gt;
	<a href="UserRecei.aspx">我的地址薄</a>
</span>&gt;&gt; <a>编辑地址薄</a>
</div>
<table width="100%" cellpadding="2" cellspacing="1">
    <tr>
        <td colspan="2" align="center">
            <asp:Label ID="Label1" runat="server" Text="添加地址薄"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right" width="45%">
            收货人姓名：
        </td>
        <td>
            <asp:HiddenField ID="hfid" runat="server" />
            <asp:TextBox ID="txtName" runat="server" Width="150px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName" ErrorMessage="收货人姓名不能为空!">
            </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" width="45%">
            所在省市：
        </td>
        <td>
            <asp:DropDownList ID="ddlProvince" Width="90px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProvince_SelectedIndexChanged">
            </asp:DropDownList>
            省
            <asp:DropDownList ID="ddlCity" Width="150px" runat="server"></asp:DropDownList>
            市
        </td>
    </tr>
    <tr>
        <td align="right" width="45%">
            具体地址：
        </td>
        <td>
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="306px" Height="108px"></asp:TextBox>
                <font color="gray">具体地址可以不加省市</font>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="具体地址不能为空!">
            </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" width="45%" class="style3">
            E-Mail：
        </td>
        <td class="style3">
            <asp:TextBox ID="txtmail" runat="server" Width="150px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtmail" runat="server" ErrorMessage="E-Mail不能为空！" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="txtmail" ErrorMessage="邮件地址不规范" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$">
            </asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="right" width="45%" class="style3">
            邮政编码：
        </td>
        <td class="style3">
            <asp:TextBox ID="txtZipCode" runat="server" Width="150px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtZipCode" ErrorMessage="邮政编码不能为空!">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator7" ValidationExpression="^\d{6}$" ControlToValidate="txtZipCode" ErrorMessage="只能输入正确的邮政编码">
            </asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="right" width="45%">
            电话号码：
        </td>
        <td>
            <asp:TextBox runat="server" ID="phoneSection" Width="50px"></asp:TextBox>
            -
            <asp:TextBox runat="server" ID="phone" Width="100px"></asp:TextBox><font color="gray">区号-电话号码</font>
            <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ValidationExpression="^\d{3,4}$" ControlToValidate="phoneSection" ErrorMessage="请输入正确的区号">
            </asp:RegularExpressionValidator>
            <br />
            <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator2" ValidationExpression="^\d{5,12}$" ControlToValidate="phone" ErrorMessage="请输入正确的电话号码">
            </asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="right" width="45%">
            手机号码：
        </td>
        <td>
            <asp:TextBox ID="txtMobile" runat="server" Width="150px"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator4" ValidationExpression="^1[(0-9)]{10}$" ControlToValidate="txtMobile" ErrorMessage="按照手机号规则输入">
            </asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="right" width="45%">
            是否默认：
        </td>
        <td>
            <asp:CheckBox ID="isDefault" runat="server" Text="" />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="Button1" runat="server" Text="添加" Width="68px" OnClick="Button1_Click" />&nbsp;
            <asp:Button ID="Button2" runat="server" Text="取消" Width="63px" OnClientClick="javascript:location.href='UserRecei';return false;" CausesValidation="False" />
        </td>
    </tr>
</table>
</form>
</body>
</html>