<%@ page language="C#" autoeventwireup="true" inherits="ZoomLaManage.WebSite.Manage.User.AddManage, App_Web_wj135slx" title="编辑管理员" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>编辑管理员</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
        当前位置：功能导航 >><a href="AddManage.aspx">
            <asp:Label ID="lbTitle" runat="server" Text="添加管理员"></asp:Label></a></div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" align="center">
            <tr class="tdbg">
                <td class="tdbgleft" align="right">
                    <strong>管理员名：</strong>
                </td>
                <td align="left" style="height: 23px">
                    <asp:TextBox ID="tbdName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="管理员名不能为空"
                        ControlToValidate="tbdName" Display="None"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbdName"
                        ErrorMessage="不能包含特殊字符，如@，#，$，%，^，&，*，(，)，'，?，{，}，[，]，;，:等" ValidationExpression="^[^@#$%^&*()'?{}\[\];:]*$"
                        SetFocusOnError="True" Display="None"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbdName"
                        ErrorMessage="管理员名必须大于等于4个字符并且不能超过20个字符！" ValidationExpression="^[a-zA-Z0-9_\u4e00-\u9fa5]{4,20}$"
                        SetFocusOnError="True" Display="None"></asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr class="tdbg">
                <td class="tdbgleft" align="right">
                    <strong>真实姓名：</strong>
                </td>
                <td align="left" style="height: 23px">
                    <asp:TextBox ID="txtTrueName" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="真实姓名不能为空"
                    ControlToValidate="txtTrueName" Display="None"></asp:RequiredFieldValidator></td>
                 </tr>
            <tr class="tdbg">
                <td class="tdbgleft" align="right">
                    <strong>初始密码：</strong>
                </td>
                <td align="left">
                    <asp:TextBox ID="tbPwd" runat="server" TextMode="Password" Width="150px"></asp:TextBox><strong>&nbsp;
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" align="right">
                    <strong>&nbsp;确认密码：</strong>
                </td>
                <td align="left">
                    <asp:TextBox ID="tbPwd1" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
                    <asp:HiddenField ID="HdnPwd" runat="server" />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPwd"
                        ControlToValidate="tbPwd1" ErrorMessage="密码与初始密码不一致"></asp:CompareValidator>
                </td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" align="right">
                    <strong>管理员类型：</strong>
                </td>
                <td align="left">
                    <asp:DropDownList ID="ddlAdminType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAdminType_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" id="trsite" runat="server" visible="false">
                <td class="tdbgleft" align="right">
                    <strong>管理频道：</strong>
                </td>
                <td align="left">
                    <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
                    <asp:CheckBoxList ID="ddlSite" runat="server" RepeatColumns="4" DataValueField="NodeID"
                        DataTextField="NodeName">
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tbody id="tdadmin" runat="server">
                <tr class="tdbg">
                    <td class="tdbgleft" align="right">
                        <strong>&nbsp;角色设置：</strong>
                    </td>
                    <td align="left" valign="top">
                        <asp:CheckBoxList ID="cblRoleList" runat="server" BorderStyle="Solid" DataTextField="RoleName"
                            DataValueField="RoleID" OnSelectedIndexChanged="cblRoleList_SelectedIndexChanged" />
                    </td>
                </tr>
                <tr class="tdbg">
                    <td class="tdbgleft" align="right">
                        <strong>&nbsp;设置角色控制节点权限：</strong>
                    </td>
                    <td align="left" valign="top">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td class="tdbgleft" align="right">
                        <strong>&nbsp;是否前台审核互动：</strong>
                    </td>
                    <td align="left" valign="top">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </td>
                </tr>
                <tr class="tdbg" id="trStart" runat="server">
                    <td class="tdbgleft" align="right">
                        <strong>&nbsp;发布内容默认状态：</strong>
                    </td>
                    <td align="left" valign="top">
                        <asp:DropDownList ID="DefaultStart" runat="server">
                            <asp:ListItem Value="-99" Selected="True">请选择状态</asp:ListItem>
                            <asp:ListItem Value="99">已审</asp:ListItem>
                            <asp:ListItem Value="0">待审</asp:ListItem>
                            <asp:ListItem Value="-1">退稿</asp:ListItem>
                            <%--<asp:ListItem Value="-3">草稿</asp:ListItem>
                  <asp:ListItem Value="-2">回收站</asp:ListItem>--%>
                        </asp:DropDownList>
                    </td>
                </tr>
            </tbody>
            <tr class="tdbg">
                <td class="tdbgleft" align="right">
                    <strong>&nbsp;选项设置：</strong>
                </td>
                <td align="left">
                    <asp:CheckBox ID="cb1" runat="server" />允许多人同时使用此帐号登陆<br />
                    <asp:CheckBox ID="cb2" runat="server" />允许管理员修改密码<br />
                    <asp:CheckBox ID="cb3" runat="server" />是否锁定
                </td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" colspan="2" style="height: 23px" align="center">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" CssClass="button"
                        Text="提　交" />
                    &nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="取 消" CssClass="button" OnClientClick="location.href='AdminManage.aspx';return false;" />&nbsp;
                </td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
            ShowSummary="False" />
    </div>
    </form>
</body>
</html>
