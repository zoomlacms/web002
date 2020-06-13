<%@ page language="C#" autoeventwireup="true" inherits="manage_SelectNum_addNum, App_Web_el2p3ip1" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
        
        <span>后台管理</span> &gt;&gt; <span><asp:Label ID="Label3" runat="server" Text="添加"></asp:Label>号码</span>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
            <tr align="center">
                <td colspan="2" class="spacingtitle">
                    <asp:Label ID="Label2" runat="server" Text="添加"></asp:Label>号码
                </td>
            </tr>
           
             <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    号码名称：
                </td>
                <td>
             
                   
                    <asp:Label ID="Label1" runat="server" Text="鲁E•"></asp:Label><asp:TextBox ID="tx_Num" class="l_input" runat="server"></asp:TextBox>
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="输入格式错误，都为英文或数字" 
                        ValidationExpression="[a-z0-9A-Z]{5}" ControlToValidate="tx_Num"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
        
             <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    号码状态 ：</td>
                <td>  <asp:RadioButtonList ID="IsOpen" runat="server" RepeatDirection="Horizontal" 
                      AutoPostBack="True" >
                  <asp:ListItem Value="0">停用</asp:ListItem>
                  <asp:ListItem Value="1" Selected="True">开启</asp:ListItem>
                
       </asp:RadioButtonList>
                </td>
            </tr>
              
             <tr class="WebPart">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    <strong></strong>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" class="C_input"  Text="提交" onclick="Button1_Click" />
                    <asp:HiddenField ID="HiddenSid" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

