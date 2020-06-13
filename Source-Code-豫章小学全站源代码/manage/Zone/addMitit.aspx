<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_addMitit, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
 <script src="/JS/Common.js" type="text/javascript"></script>
   <script src="/JS/calendar.js"></script> 
<style type="text/css">
    .style1
    {
        line-height: 22px;
        color: #1e860b;
        font-weight: bold;
        letter-spacing: 8px;
        height: 9px;
        background: #dbf9d9 url('../../App_Themes/AdminDefaultTheme/Images/title.gif') repeat-x 50% top;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; 插件管理
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
            <tr align="center">
                <td colspan="2" class="style1">
                 添加连接
                </td>
            </tr>
            <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    名称：</td>
                <td>
                 &nbsp;   <asp:TextBox ID="tx_typename" class="l_input" runat="server"></asp:TextBox>
                </td>
            </tr>
           
             <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    地址：
                </td>
                <td>
                    &nbsp;   <asp:TextBox ID="tx_add" class="l_input" runat="server" Width="400"></asp:TextBox>
                 </td>
            </tr>
            
           
             <tr class="WebPart">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    <strong></strong>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server"  class="C_input" Text="提交" onclick="Button1_Click" />
                    <asp:HiddenField ID="HiddenMenu" runat="server" />
                    <asp:HiddenField ID="id" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

