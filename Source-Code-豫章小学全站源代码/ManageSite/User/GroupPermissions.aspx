<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.User.GroupPermissions, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>会员组权限设置</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="column">
        <div class="columntitle">
        当前位置：功能导航 >> 
        <a href="GroupPermissions.aspx">
            会员组权限设置</a></div>
    <table width="99%" cellspacing="1" cellpadding="0" class="border" align="center">
        <tr class="tdbg" style="height:30px">
            <td  align="right" style="width: 100px;">
                <strong>会员组名称：</strong></td>
            <td align="left">
                <asp:Label ID="LblGroupName" runat="server" Text="" />
            </td>
        </tr>
        <tr class="tdbg" style="height:30px">
            <td class="tdbgleft" align="right" style="width: 100px;">
                <strong>会员组描述：</strong></td>
            <td align="left">
                <asp:Label ID="LblDescription" runat="server" Text="" />
            </td>
        </tr>
        <tr class="tdbg" style="height:30px">
            <td class="tdbgleft" align="right" style="width: 100px;">
                <strong>发布权限：</strong></td>
            <td align="left">                
                每天最多发布<asp:TextBox ID="TxtCCountPerDay" Columns="5" runat="server">0</asp:TextBox>条信息（不想限制请设置为0）。
            </td>
        </tr>        
        <tr class="tdbg" style="height:30px">
            <td class="tdbgleft" align="right" style="width: 100px;">
                <strong>收藏夹限制：</strong></td>
            <td align="left">
                会员收藏夹内最多可收录<asp:TextBox ID="TxtFavCount" Columns="5" runat="server">0</asp:TextBox>条信息（如果为0，则没有收藏权限）
            </td>
        </tr>        
        <tr class="tdbg" >
            <td class="tdbgleft" align="right" style="width: 100px;">
                <strong>计费方式：</strong></td>
            <td align="left">
                <asp:RadioButtonList ID="RblConsumeType" runat="server">
                    <asp:ListItem Selected="True" Value="0">只判断点券：有点券时，即使有效期已经到期，仍可以查看收费内容；点券用完后，即使有效期没有到期，也不能查看收费内容。</asp:ListItem>
                    <asp:ListItem Value="1">只判断有效期：只要在有效期内，点券用完后仍可以查看收费内容；过期后，即使会员有点券也不能查看收费内容。</asp:ListItem>
                    <asp:ListItem Value="2">同时判断点券和有效期：点券用完或有效期到期后，就不可查看收费内容。</asp:ListItem>
                    <asp:ListItem Value="3">同时判断点券和有效期：点券用完并且有效期到期后，才不能查看收费内容。</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>        
        <tr class="tdbg" style="height:30px">
            <td align="center" class="tdbgleft" colspan="2" >
                &nbsp;<asp:Button ID="btnSave" runat="server" CssClass="button"   OnClick="btnSave_Click" Text="保存权限设置" />
                &nbsp; &nbsp;&nbsp;<input id="Button1" type="button" Class="button"  value="返回" onclick="javascript:window.location.href='GroupManage.aspx'" /><asp:HiddenField ID="HdnGroupID" runat="server" />
            </td>            
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
