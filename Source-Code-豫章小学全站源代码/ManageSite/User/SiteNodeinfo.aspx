<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_User_SiteNodeinfo, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>栏目设置</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 30%;
            height:26px;
            text-align:right;
        }
        .style2
        {
            height: 55px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div style="height:40px">
    </div>
    <div>
        <table width="100%" cellspacing="1" cellpadding="0" align="center">
      <tr>
        <td class="style1">是否允许会员投稿：</td>
        <td style="text-align:left">
        
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection="Horizontal">
                <asp:ListItem Selected="True" Value="1">允许</asp:ListItem>
                <asp:ListItem Value="0">不允许</asp:ListItem>
            </asp:RadioButtonList>
        
        </td>
      </tr>
      <tr>
        <td class="style1">指定投稿栏目：</td>
        <td style="text-align:left">
        
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="0">可向所有栏目投稿</asp:ListItem>
                <asp:ListItem Value="1">指定栏目投稿</asp:ListItem>
            </asp:DropDownList>
        
        </td>
      </tr>
      <tr>
        <td class="style1">投稿是否需要审核：</td>
        <td style="text-align:left">
        
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                RepeatDirection="Horizontal">
                <asp:ListItem Value="0">不需要审核</asp:ListItem>
                <asp:ListItem Selected="True" Value="1">需要审核</asp:ListItem>
            </asp:RadioButtonList>
        
        </td>
      </tr>
      <tr>
        <td colspan="2" class="style2">
            <asp:Button ID="Button1" runat="server" Text="确定" />
            　<asp:Button ID="Button2" runat="server" Text="取消" />
          </td>
      </tr>
    </table>
    </div>
</form>
</body>
</html>
