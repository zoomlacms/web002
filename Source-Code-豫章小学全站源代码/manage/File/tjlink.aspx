<%@ page language="C#" autoeventwireup="true" inherits="manage_File_tjlink, App_Web_lz1ef1my" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加站内链接</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">	后台管理&gt;&gt;扩展功能 &gt;&gt;<a href="tjlink.aspx">站内链接</a> </div>  
<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
    <tr align="center">
        <td colspan="2" class="spacingtitle">
            <asp:Label ID="LblTitle" runat="server" Text="添加站内链接" Font-Bold="True"></asp:Label></td></tr>
    <tr class="tdbg">
        <td class="tdbgleft" align="right" style="width:40%" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <strong>关键字：&nbsp;</strong></td>
        <td class="style4" align="left">
            <asp:TextBox ID="Txtlinkname" class="l_input" runat="server" Width="175px"></asp:TextBox>
        </td>
    </tr>   
        <tr class="tdbg">
            <td class="tdbgleft" align="right">
                <strong>目标框架：&nbsp;</strong>
            </td>
            <td lign="left" >
                <asp:DropDownList ID="TxtLwindows" runat="server" >  
                    <asp:ListItem Value="_self">_self</asp:ListItem>
                <asp:ListItem Value="_blank">_blank</asp:ListItem>
                <asp:ListItem Value="_top">_top</asp:ListItem>
                <asp:ListItem Value="_parent">_parent</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right">
            <strong>链接网址：&nbsp;</strong></td>
        <td class="style1" align="left">
            <asp:TextBox ID="TxtKeywordText" class="l_input" runat="server" Width="175px"  ontextchanged="TxtKeywordText_TextChanged">http://</asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg">
            <td class="tdbgleft" align="right">
                <strong> 链接状态：&nbsp;</strong></td>
            <td valign="middle">
                <asp:RadioButtonList ID="Txtstate"  runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0" Selected="True">开启</asp:ListItem>                    
                    <asp:ListItem Value="1">关闭</asp:ListItem>                        
                </asp:RadioButtonList>  
            </td>
        </tr> 
    <tr class="tdbgbottom">
        <td colspan="2">
            <asp:Button ID="EBtnSubmit" class="C_input" Text="添加"  runat="server"   onclick="EBtnSubmit_Click1" />&nbsp;&nbsp;
            <asp:Button ID="EBtnModify" class="C_input" Text="修改" runat="server" Visible="false"/>
            <asp:Button ID="Button1" class="C_input" runat="server" Text="取消"  />
            <asp:HiddenField ID="id1" runat="server" />
            <asp:HiddenField ID="id2" runat="server" />
        </td>
    </tr>
</table> 
</form>
</body>
</html>
