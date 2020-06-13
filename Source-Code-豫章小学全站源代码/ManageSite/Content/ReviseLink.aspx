<%@ page language="C#" autoeventwireup="true" inherits="manage_File_ReviseLink, App_Web_t3qayxfc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>修改链接 </title>
<script  language="javascript" type="text/javascript">
</script>
 <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div>
<div class="r_navigation">
        <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >>修改链接  </div>
<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
   <tr class="tdbg">
        <td class="tdbgleft" align="right" style="width: 105px">
            <strong>关键字：&nbsp;</strong></td>
        <td class="style4" align="left">
            <asp:TextBox ID="Txtlinkname" runat="server" Width="175px" 
               ></asp:TextBox>
        </td>
    </tr>
    
     <tr class="tdbg">
            <td class="tdbgleft" align="right" style="width: 105px" >
                <strong>目标框架：&nbsp;</strong>
            </td>
            <td width="66%" align="left" >
                <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True"  >
                   
                <asp:ListItem Value="_blank">_blank</asp:ListItem>
                <asp:ListItem Value="_top">_top</asp:ListItem>
                <asp:ListItem Value="_self">_self</asp:ListItem>
                <asp:ListItem Value="_parent">_parent</asp:ListItem>
                </asp:DropDownList>
                
            </td>
        </tr>
       <tr class="tdbg">
        <td class="tdbgleft" align="right" style="width: 105px">
            <strong>链接网址：&nbsp;</strong></td>
        <td class="style1" align="left">
            <asp:TextBox ID="TxtKeyword" runat="server" Width="175px" >http://www.</asp:TextBox>
        </td>
    </tr>
   <tr class="tdbg">
            <td align="right" style="width: 105px">
                <strong> 链接状态：&nbsp;</strong></td>
            <td>
                <asp:RadioButtonList ID="Txtstate"  runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0" Selected="True">开启</asp:ListItem>
                 <asp:ListItem Value="1">关闭</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr> 
    <tr >
        <td colspan="2">
          <asp:Button ID="EBtnModify" Text="修改"  CssClass="button" runat="server"  onclick="EBtnModify_Click"/>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input name="Cancel" type="button" class="button" id="Cancel" value="取消" onclick="javascript:window.location.href='Addlinkhttp.aspx'"/>
            <asp:HiddenField ID="a" runat="server"/>
            <asp:HiddenField ID="b" runat="server"/>
        </td>
       </tr>
  </table>
</div>
</form>
</body>
</html>
