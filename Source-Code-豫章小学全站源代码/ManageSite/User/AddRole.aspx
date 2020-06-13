<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.User.AddRole, App_Web_wj135slx" title="创建角色" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>创建角色</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
        当前位置：功能导航 >>
        <a href="AddRole.aspx">
            <asp:Literal ID="LblTitle" Text="创建角色" runat="Server"></asp:Literal></a></div>
        <table width="99%" cellspacing="1" cellpadding="0" align="center">
            <tr class="tdbg">
                <td  align="right" style="width: 100px" valign="middle">
                    角色名：
                </td>
                <td style="width: 100px" align="left" >
                    <asp:TextBox ID="txbRoleName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txbRoleName"
                        Display="Dynamic" ErrorMessage="角色名不能为空">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvRole" runat="server" ControlToValidate="txbRoleName" Display="Dynamic"
                        ErrorMessage="角色名已经存在" OnServerValidate="CustomValidator1_ServerValidate" Visible="False">*</asp:CustomValidator>
                </td>
            </tr>
            <tr class="tdbg">
                <td align="right"  style="width: 100px; height: 20px" valign="middle">
                    角色描述：
                </td>
                <td align="left" style="width: 100px; height: 20px" valign="middle">
                    <asp:TextBox ID="tbRoleInfo" runat="server" Height="72px" TextMode="MultiLine" Width="228px"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg">
                <td align="right"  style="width: 100px; height: 20px" valign="middle">
                角色所属频道：
            </td>
             <td align="left" style="width: 100px; height: 20px" valign="middle">
                <asp:DropDownList ID="ddlNode" runat="server" DataTextField="NodeName" DataValueField="NodeID">
                </asp:DropDownList>
            </td>
            </tr>
        </table>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Button ID="btnSave" runat="server"  CssClass="button" Text="保存角色" Width="152px" OnClick="Button2_Click" />
    </div>
    </form>
</body>
</html>
