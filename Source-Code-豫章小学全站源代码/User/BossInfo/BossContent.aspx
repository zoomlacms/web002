<%@ page language="C#" autoeventwireup="true" inherits="User_BossInfo_BossContent, App_Web_znyb5330" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<html>
<head id="Head1" runat="server">
<title>上级代理商信息</title>
<style type="text/css">
.style1 { background: #e0f7e5; line-height: 120%; width: 21%; }
.style2 { background: #e0f7e5; line-height: 120%; height: 24px; width: 21%; }
</style>
</head>
<body>
    <div>
        &nbsp;<table width="100%" border="0" cellspacing="1" cellpadding="0" class="r_navigation">
            <tr>
                <td height="24" align="center" class="style1" colspan="2">
                    你的上级代理商信息
                </td>
            </tr>
            <tr>
                <td height="24" align="right" class="style1">
                    代理商名称:
                </td>
                <td width="72%" height="24" align="left">
                    &nbsp;<asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td height="24" align="right" class="style1">
                    联系电话：
                </td>
                <td height="24" align="left">
                    &nbsp;<asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td height="24" align="center" class="style1" colspan="2">
                    代理商基本信息
                </td>
            </tr>
            <tr>
                <td height="24" align="right" class="style1">
                    代理商名称:
                </td>
                <td width="72%" height="24" align="left">
                    &nbsp;<asp:Label ID="tx_cname" runat="server" Text=""></asp:Label>
                </td>
            </tr>
                        <tr>
                <td height="24" align="right" class="style1">
                    代理商电话:
                </td>
                <td width="72%" height="24" align="left">
                    &nbsp;<asp:Label ID="txtTel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td height="24" align="center" class="style1" colspan="2">
                    总 业 绩 ：
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    收益金额：
                </td>
                <td align="left">
                    &nbsp;<asp:Label ID="tx_money" runat="server" Text=""></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Label ID="lblVIP" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td height="24" align="right" class="style1">
                    定单金额：
                </td>
                <td height="24" align="left">
                    &nbsp;<asp:Label ID="tx_zong" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td height="24" align="right" class="style1">
                    定单数量：
                </td>
                <td height="24" align="left">
                    &nbsp;<asp:Label ID="tx_num" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td  height="24" align="center" class="style1" colspan="2">
                    招 商 费 ：
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    收益金额：
                </td>
                <td align="left" style="height: 24px">
                    &nbsp;<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td height="24" align="right" class="style1">
                    直接招商金额：
                </td>
                <td height="24" align="left">
                    &nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr id="jjzs" runat="server" >
                <td height="24" align="right" class="style1">
                    间接招商金额：
                </td>
                <td height="24" align="left">
                    &nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td height="24" align="center" class="style1" colspan="2">
                    下 级 数 量
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    服务中心：
                </td>
                <td align="left" style="height: 24px">
                    &nbsp;<asp:Label ID="fhwunum" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    服务店:
                </td>
                <td align="left" style="height: 24px">
                    &nbsp;<asp:Label ID="Enum" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
