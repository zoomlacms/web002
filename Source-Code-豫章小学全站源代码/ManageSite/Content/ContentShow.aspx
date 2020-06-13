<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_ContentShow, App_Web_t3qayxfc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
 <script src="/JS/Common.js" type="text/javascript"></script>
   <script src="/JS/calendar.js"></script> 
</head>
<body>
    <form id="form1" runat="server">
    
     <div class="column">
        <div class="columntitle">当前位置：功能导航 >>
           <a href="ContentShow.aspx"> <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></a></div>
        <table width="80%" cellpadding="
            2" cellspacing="1" border="0" class="border" align="center">
            <tr align="center">
                <td colspan="2" class="spacingtitle">
              <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr class="WebPart">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    所属栏目：</td>
                <td>
                    <asp:Label ID="NodeName" runat="server" Text=""></asp:Label>
                 &nbsp;   
                </td>
            </tr>
           
             <tr class="WebPart">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    标题：
                </td>
                <td>
                    <asp:Label ID="title" runat="server" Text=""></asp:Label>
                 </td>
            </tr>
               <tr class="WebPart">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                   状态：
                </td>
                <td>
                    <asp:Label ID="statess" runat="server" Text=""></asp:Label>
                 </td>
            </tr>
           
             <tr class="WebPart">
                <td height="22"  align="center"  colspan=2 style="line-height:25px;">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                  <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                   <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            
                </td>
              
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
