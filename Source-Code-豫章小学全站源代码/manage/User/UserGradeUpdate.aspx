<%@ page language="C#" autoeventwireup="true" inherits="manage_User_UserGradeUpdate, App_Web_own0w3ym" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>确认房间</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script>

    function gotourl(url) {
        try {
            parent.MDILoadurl(url); void (0);
        } catch (Error) {
            parent.frames["main_right"].location = "../" + url; void (0);
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div style="width: 100%; margin-left: auto; margin-right: auto; text-align: center;">
    <div style="width: 100px; margin-left: auto; margin-right: auto; text-align: left;">
      <asp:HiddenField ID="hfId" runat="server" />
      <asp:Repeater ID="repUserGrade" runat="server">
        <ItemTemplate>
          <input name='rdUserGrade' type="radio" <%#ZoomLa.Common.DataConverter.CLng(Eval("Grade").ToString())==ZoomLa.Common.DataConverter.CLng( Request["grade"])?"checked=true":"" %> value='<%#Eval("Grade") %>' />
          <%#Eval("Name") %><br />
        </ItemTemplate>
      </asp:Repeater>
    </div>
    <div style="width: 100%; margin-left: auto; margin-right: auto; text-align: center;">
      <asp:Button ID="btOK" CssClass="C_input" runat="server" Text="确定" onclick="btOK_Click" />
      <asp:Button ID="brNO" CssClass="C_input" runat="server" Text="取消" OnClientClick="Dialog.close()"/>
    </div>
  </div>
</form>
</body>
</html>