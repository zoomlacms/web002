<%@ page language="C#" autoeventwireup="true" inherits="manage_Flex_editpic, App_Web_t13hjwl4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>添加模板</title>

       <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            color: #1e860b;
            font-weight: bold;
            line-height: 22px;
            letter-spacing: 8px;
            height: 33px;
            padding: 2px;
            background: #dbf9d9 url('../../App_Themes/AdminDefaultTheme/Images/title.gif') repeat-x 50% top;
        }
    </style>
    
   <script language="javascript">
   function savepic() {
       var Mu_BackImg1 = document.getElementById("Mu_BackImg1").value;
       var Mu_BackImg2 = document.getElementById("Mu_BackImg2").value;

   }
   
function Button1_onclick() {

}

   </script>
</head>

<body>
    <form id="form1" runat="server">
 <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
  <tr align="center">
            <td colspan="2" class="style1">
                <strong>
                    <asp:Label ID="LblTitle" runat="server" Text="上传模板" Font-Bold="True"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
        <td class="tdbgleft">
        模板小图：
        </td>
   <td class="tdbg" style="text-align: left; width: 80%;" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <asp:TextBox ID="Mu_BackImg1" class="l_input" runat="server" Width="260px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="模板小图不能为空!" ControlToValidate="Mu_BackImg1"></asp:RequiredFieldValidator>
                <iframe id="Iframe1" src="../Common/PubimgUpload.aspx?menu=Mu_BackImg1" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="25" scrolling="no"></iframe>
     </td>
     </tr>
     <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">
        模板大图：
        </td>
   <td class="tdbg" style="text-align: left; width: 80%;">
                <asp:TextBox ID="Mu_BackImg2" class="l_input" runat="server" Width="260px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="模板大图不能为空!" ControlToValidate="Mu_BackImg2"></asp:RequiredFieldValidator>
                <iframe id="Iframe2" src="../Common/PubimgUpload.aspx?menu=Mu_BackImg2" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="25" scrolling="no"></iframe>
     </td>
     </tr>
             <tr class="tdbg">
            <td style="text-align: center" colspan="2" class="style2">
            <asp:Button ID="Button2"  class="C_input" runat="server" onclick="Button2_Click" Text="保存" />&nbsp;&nbsp;
                <input name="BtnCancel" class="C_input"   type="button" onclick="javascript:window.close();"
                    value=" 取消 " />
                
            </td>
        </tr>
    </table>  
    </form>
</body>
</html>
