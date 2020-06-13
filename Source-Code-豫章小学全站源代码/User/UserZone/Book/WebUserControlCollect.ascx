<%@ control language="C#" autoeventwireup="true" inherits="WebUserControlCollect, App_Web_pe4eotmu" %>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
        
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1"
         Visible="false">删除</asp:LinkButton></td>
  </tr>  <script type="text/javascript" language="javascript" src="../../command/common.js"></script>
  <script type="text/javascript" language="javascript" src="../../command/subModal.js"></script>
  <script type="text/javascript" language="javascript">
    function refpage(ret)
    {
        if(typeof(ret)!="undefined")
        {
            window.document.getElementById("WebUserControlCollect1_Hfid").value=ret;
           document.form1.submit();
        }
    }
    </script>
</table>
<asp:HiddenField ID="Hfid" runat="server" OnValueChanged="Hfid_ValueChanged" />
