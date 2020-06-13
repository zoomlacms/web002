<%@ page language="C#" autoeventwireup="true" inherits="manage_User_GroupConfig, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>会员组设置</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
         <div class="column">
        <div class="columntitle">
        当前位置：功能导航 >> 
        <a href="GroupConfig.aspx">
            <asp:Literal ID="Literal1" runat="server" Text="会员组设置"></asp:Literal></a></div>
      <table class="border" width="100%" cellpadding="2" cellspacing="1">
        <tr class="tdbg">
            <td style="width: 237px" align="right">
                <strong>会员组名称：</strong>
            </td>
            <td align="left" ><asp:Label ID="GroupName" runat="server" Text=""></asp:Label>
                <asp:HiddenField ID="Groupid" runat="server" />
            </td>
            
        </tr>
        <tr class="tdbg">
            <td  align="right" style="width: 237px">
                <strong>会员组描述：</strong></td>
            <td align="left">
                <asp:Label ID="GroupInfo" runat="server" Text=""></asp:Label></td>
        </tr>        
        <tr class="tdbg">
            <td  align="right" style="width: 237px">
                <strong>选择用户模型：</strong>
            </td>
            <td align="left">
                <asp:CheckBoxList ID="GroupModel" runat="server">
                </asp:CheckBoxList></td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
                &nbsp;<asp:Button ID="EBtnSubmit" Text="保存"  CssClass="button" runat="server" OnClick="EBtnSubmit_Click" />
                &nbsp;&nbsp;
                <input name="Cancel" type="button"  CssClass="button"  id="Cancel" value="取消" onclick="javascript:location.href='GroupManage.aspx'" />                
            </td>
        </tr>
    </table> 
    </div>
</form>
</body>
</html>
