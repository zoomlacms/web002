<%@ page language="C#" autoeventwireup="true" inherits="manage_User_UserConfirm, App_Web_own0w3ym" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>印证情况</title>
</head>
<body>
<form id="form1" runat="server">
  <div> 印证情况：
    <asp:RadioButtonList ID="Confirm" runat="server" RepeatDirection="Horizontal" >
      <asp:ListItem Value="0">没有</asp:ListItem>
      <asp:ListItem Value="1" Selected="True">有</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Button ID="submit" runat="server" Text="提交" onclick="submit_Click" />
  </div>
</form>
</body>
</html>