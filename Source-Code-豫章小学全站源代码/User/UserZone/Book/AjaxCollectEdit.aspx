<%@ page language="C#" autoeventwireup="true" inherits="AjaxCollectEdit, App_Web_pe4eotmu" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>常用标签</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function validate(){
     var Elements = document.getElementsByName("Collect");
     var msgs="";
     var i;

    for(var IM=0;IM<Elements.length;IM++)
    {
        if(Elements[IM].type=="radio")
        {
             if(Elements[IM].checked)
              {
                  msgs=Elements[IM].value;
              }
         }   
    }
      window.document.getElementById("HiddenField1").value=msgs;
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div>
    <table width="100%" height="135" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="45" colspan="2">类型:&nbsp;
          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr>
        <td width="50%" valign="top"><table width="100%" height="95" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td>标签(多个标签用空格分隔）</td>
            </tr>
            <tr>
              <td>&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
              <td>&nbsp;
                <asp:Button ID="Savebtn" runat="server" Text=" 保 存 " OnClick="Savebtn_Click" OnClientClick="validate();" /></td>
            </tr>
          </table>
          <asp:HiddenField ID="HiddenField1" runat="server" /></td>
        <td width="50%" valign="top"> 成员常用的标签:<br />
          <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
            <ItemTemplate>
              <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# ((string)Container.DataItem)%>' OnClick="LinkButton1_Click"><%# ((string)Container.DataItem)%> </asp:LinkButton>
              &nbsp; </ItemTemplate>
          </asp:DataList></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>