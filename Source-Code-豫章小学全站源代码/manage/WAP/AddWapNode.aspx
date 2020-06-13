<%@ page language="C#" autoeventwireup="true" inherits="manage_WAP_AddWapNode, App_Web_emowutw1" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            width: 24%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>WAP管理</span> &gt;&gt; 添加节点
        <asp:HiddenField ID="HiddenNodeid" runat="server" />
        <asp:HiddenField ID="HiddenMenu" runat="server" />
        <asp:HiddenField ID="HiddenPNodeid" runat="server" />
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
            <tr align="center">
                <td colspan="2" class="spacingtitle">
                    添加节点    
                </td>
            </tr>
            <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    节点名称：</td>
                <td>
                 &nbsp;   <asp:TextBox ID="tx_nodename" runat="server" Width="338px" class="l_input"></asp:TextBox>
                </td>
            </tr>
           
             <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    节点介绍：
                </td>
                <td>
                    &nbsp;   <asp:TextBox ID="tx_info" runat="server" Height="114px" 
                        TextMode="MultiLine" Width="342px" class="l_input"></asp:TextBox>
                 </td>
            </tr>
                <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style1" align="right">
                    查看权限：
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="3">
                        <asp:ListItem Value="1">游客</asp:ListItem>
                          <asp:ListItem Value="2">会员</asp:ListItem>
                        <asp:ListItem Value="3">vip</asp:ListItem>
                    </asp:RadioButtonList> 
                    查看金币<asp:TextBox ID="tx_Points" runat="server" Width="33px"  class="l_input"></asp:TextBox></td>
            </tr>
           
             <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    <strong></strong>
                </td>
                <td>
                    <asp:Button ID="Button1" class="C_input" runat="server"  Text="提交" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

