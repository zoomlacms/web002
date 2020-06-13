<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_Mtit, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
 <script src="/JS/Common.js" type="text/javascript"></script>
   <script src="/JS/calendar.js"></script> 
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>   显 示 配 置</span>--- <a href="MtitManage.aspx">[ 管理配置 ]</a>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
            <tr align="center">
                <td colspan="2" class="spacingtitle">
                   卡类型
                </td>
            </tr>
            <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                   种类 ：</td>
                <td>
                    
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2" 
                        AutoPostBack="True" 
                        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem Selected="True">学生</asp:ListItem>
                        <asp:ListItem>老师</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
           
             <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    显示页面：
                </td>
                <td>
                    <asp:CheckBoxList ID="RadioButtonList2" runat="server">
                    </asp:CheckBoxList>
                   
                 </td>
            </tr>
            
           
             <tr class="WebPart">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    <strong></strong>
                </td>
                <td>
                    <asp:Button ID="Button1" class="C_input" runat="server"  Text="提交" onclick="Button1_Click"  />
               
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
