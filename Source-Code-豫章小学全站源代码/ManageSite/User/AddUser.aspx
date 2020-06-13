<%@ page language="C#" autoeventwireup="true" inherits="User.AddUser, App_Web_wj135slx" title="添加会员" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=gb2312">
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="myForm" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >><a href="AddUser.aspx">添加用户</a></div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr>
                <td style="width: 15%; height: 22px;" align="right">
                    用户名：
                </td>
                <td style="width: 85%; height: 25px;" align="left">
                    <asp:TextBox ID="tbUserName" runat="server" TabIndex="1"></asp:TextBox><span style="color: red">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbUserName" ErrorMessage="用户名不能为空" Display="Static"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValgTextMaxLength" ControlToValidate="tbUserName" ValidationExpression="^[a-zA-Z0-9]{4,20}$" SetFocusOnError="false" Display="None" runat="server"></asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="tbUserName" ErrorMessage="用户名已存在" OnServerValidate="CustomValidator1_ServerValidate" Visible="False" Display="Dynamic"></asp:CustomValidator>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px;" align="right">
                    用户密码：
                </td>
                <td style="width: 85%; height: 22px;" align="left">
                    <asp:TextBox ID="tbPwd" runat="server" TextMode="Password"></asp:TextBox><span style="color: red">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbPwd" ErrorMessage="密码不能为空" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr >
                <td style="width: 15%;" align="right">
                    Email：
                </td>
                <td style="width: 85%" align="left">
                    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox><span style="color: red">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="Email地址不能为空"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="格式不正确" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Visible="true"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr >
                <td  style="width: 15%;" align="right">
                    提示问题：
                </td>
                <td style="width: 85%" align="left">
                    <asp:TextBox ID="tbQuestion" runat="server"></asp:TextBox><span style="color: red">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbQuestion" Display="Dynamic" ErrorMessage="请输入提示问题"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table width="100%" border="0"  cellpadding="0" cellspacing="1">
            <tr >
                <td  style="width: 15%; height: 22px" align="right">
                    提示问题答案：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbAnswer" runat="server"></asp:TextBox><span style="color: red">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbAnswer" ErrorMessage="提示答案不能为空"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    所属会员组：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:DropDownList ID="DDLGroup" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr >
                <td  style="width: 15%; height: 22px" align="right">
                    真实姓名：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbTrueName" runat="server"></asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    性别：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:RadioButtonList ID="tbUserSex" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="1">男</asp:ListItem>
                        <asp:ListItem Value="0">女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr >
                <td  style="width: 15%; height: 22px" align="right">
                    出生日期：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbBirthday" runat="server" onblur="setday(this);" onclick="setday(this);"></asp:TextBox>
                </td>
                <td  style="width: 15%; height: 22px" align="right">
                    办公电话：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbOfficePhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px" align="right">
                    家庭电话：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbHomePhone" runat="server"></asp:TextBox>
                </td>
                <td  style="width: 15%; height: 22px" align="right">
                    传真：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbFax" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td  style="width: 15%; height: 22px" align="right">
                    手机号码：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbMobile" runat="server"></asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    小灵通：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbPHS" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px" align="right">
                    联系地址：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbAddress" runat="server" Columns="40"></asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    邮政编码：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbZipCode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px" align="right">
                    身份证号码：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbIDCard" runat="server" Columns="40"></asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    个人主页：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbHomepage" runat="server" Columns="40">http://</asp:TextBox>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px" align="right">
                    QQ号码：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbQQ" runat="server"></asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    ICQ号码：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbICQ" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td  style="width: 15%; height: 22px" align="right">
                    MSN账号：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbMSN" runat="server"></asp:TextBox>
                </td>
                <td  style="width: 15%; height: 22px" align="right">
                    雅虎通账号：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbYahoo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td  style="width: 15%; height: 22px" align="right">
                    UC账号：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbUC" runat="server"></asp:TextBox>
                </td>
                <td  style="width: 15%; height: 26px;" align="right">
                    头像地址：
                </td>
                <td style="width: 35%; height: 26px;" align="left">
                    <asp:TextBox ID="tbUserFace" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px" align="right">
                    头像宽度：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbFaceWidth" runat="server">16</asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    头像高度：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbFaceHeight" runat="server">16</asp:TextBox>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px" align="right">
                    签名档：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbSign" runat="server" class="input1" TextMode="MultiLine" Width="300" Height="60"></asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    隐私设定：
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:RadioButtonList ID="tbPrivacy" runat="server">
                        <asp:ListItem Selected="True" Value="0">公开信息</asp:ListItem>
                        <asp:ListItem Value="1">只对好友公开</asp:ListItem>
                        <asp:ListItem Value="2">完全保密</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <asp:Literal ID="lblHtml" runat="server"></asp:Literal>
            <tr>
                <td style="height: 21px" colspan="4" align="center">
                    <asp:Button ID="btnSave"  CssClass="button"  runat="server" Text="保存会员信息" Width="90px" OnClick="btnSave_Click" TabIndex="12" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancel"  CssClass="button" runat="server" Text="取　消" Width="53px" OnClientClick="location.href='UserManage.aspx';return false;" TabIndex="13" />
                </td>
            </tr>
        </table>
    </div>
    <asp:Literal ID="ltlScripts" runat="server"></asp:Literal>
    </form>
</body>
</html>
