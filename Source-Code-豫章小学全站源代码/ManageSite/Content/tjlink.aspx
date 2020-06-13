<%@ page language="C#" autoeventwireup="true" inherits="manage_File_tjlink, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>

<head id="Head1" runat="server">
    <title>添加站内链接</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script language="javascript" type="text/javascript">
</script>
    <style type="text/css">
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="column">
        <div class="columntitle">当前位置：功能导航 >><a href="tjlink.aspx">添加站内链接</a></div> 
	<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tr align="center" style="background-color:#F0F6FC">
            <td colspan="2" class="spacingtitle">
                <asp:Label ID="LblTitle" runat="server" Text="添加站内链接" Font-Bold="True"></asp:Label></td></tr>
        <tr class="tdbg">
            <td class="tdbgleft" align="right" style="width: 105px">
                <strong>关键字：&nbsp;</strong></td>
            <td class="style4" align="left">
                <asp:TextBox ID="Txtlinkname" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>   
            <tr class="tdbg">
                <td class="tdbgleft" align="right" style="width: 105px" >
                    <strong>目标框架：&nbsp;</strong>
                </td>
                <td width="66%" align="left" >
                    <asp:DropDownList ID="TxtLwindows" runat="server" >  
                      <asp:ListItem Value="_self">_self</asp:ListItem>
                    <asp:ListItem Value="_blank">_blank</asp:ListItem>
                    <asp:ListItem Value="_top">_top</asp:ListItem>
                    <asp:ListItem Value="_parent">_parent</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
         <tr class="tdbg">
            <td class="tdbgleft" align="right" style="width: 105px">
                <strong>链接网址：&nbsp;</strong></td>
            <td class="style1" align="left">
                <asp:TextBox ID="TxtKeywordText" runat="server" Width="175px" 
                    ontextchanged="TxtKeywordText_TextChanged">http://</asp:TextBox>
            </td>
        </tr>
       <tr class="tdbg">
                <td class="tdbgleft" align="right" style="width: 105px">
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
             <asp:Button ID="EBtnSubmit" Text="添加"  runat="server" CssClass="button"
                    onclick="EBtnSubmit_Click1" />&nbsp;&nbsp;
              <asp:Button ID="EBtnModify" Text="修改" runat="server" Visible="false" CssClass="button"/>
                <asp:Button ID="Button1" runat="server" Text="取消"  CssClass="button" />
                <asp:HiddenField ID="id1" runat="server" />
                <asp:HiddenField ID="id2" runat="server" />
            </td>
        </tr>
    </table> 
    </div>
    </form>
</body>
</html>
