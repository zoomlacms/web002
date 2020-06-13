<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_AddFInfo, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
        .style2
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            width: 24%;
            height: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt;<asp:Label ID="Label2" runat="server" Text="添加"></asp:Label>方案信息</div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
            <tr align="center">
                <td colspan="2" class="spacingtitle">
                  <asp:Label ID="Label1" runat="server" Text="添加"></asp:Label>方案信息
                </td>
            </tr>
            <tr class="WebPart">
                <td class="style2"  align="center" colspan="2">
                    信息ID：
                 &nbsp;   <asp:TextBox ID="tx_gids" runat="server" Width="442px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr class="WebPart">
                <td height="22" class="style1"  align="center" colspan="2">
                 请把要接收此信息的方案提交给左边选择框
               
                 
                </td>
            </tr>
            <tr class="WebPart">
                <td height="22"   align="center" width="50%">
               <span style="color:Red">系统方案</span></td>
               <td width="50%" align="center"><span style="color:Red">选中方案</span>
               
                 
                </td>
            </tr>
             <tr class="WebPart">
                <td height="22" align="center" colspan="2">
                    <asp:ListBox ID="ListBox1" runat="server" Height="136px" Width="286px" 
                        SelectionMode="Multiple"></asp:ListBox>
                    &nbsp;<asp:Button ID="Button3" runat="server"  Text="<==" onclick="Button3_Click" 
                          /> &nbsp;<asp:Button ID="Button2" runat="server"  Text="==>" 
                        onclick="Button2_Click"  />
                 
                    &nbsp;<asp:ListBox ID="ListBox2" runat="server" Height="136px" Width="286px" 
                        SelectionMode="Multiple">
                    </asp:ListBox>
                    </td>
            </tr>
             
             <tr class="WebPart">
                <td height="22" class="style1" align="center" colspan="2">
                
                    <asp:Button ID="Button1" runat="server" class="C_input" Text="提交" onclick="Button1_Click" />
                 
                    <asp:HiddenField ID="FID" runat="server" />  <asp:HiddenField ID="Hiddennodeid" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
