<%@ page language="C#" autoeventwireup="true" inherits="InputIp, App_Web_2kq0iiy1" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>添加IP信息</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 6px;
            width: 15%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span>&gt;&gt;<span>扩展功能</span> &gt;&gt;<span><a href="InputIp.aspx"></a></span><span>添加IP信息</span> </div> 
		<div class="clearbox"></div>  

    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <asp:Label ID="LblTitle" runat="server" Text="添加IP信息" Font-Bold="True"></asp:Label></td></tr>
        <tr class="tdbg">
            <td class="style1" align="center">
                <strong> <asp:Label ID="Label5" runat="server" Text="Label" Width="60%">分类名称：</asp:Label></strong></td>
            <td class="tdbg" align="left">
            
        <asp:DropDownList ID="class_ID" runat="server"  Width="155px" DataTextField="class_name" DataValueField="class_ID">
        </asp:DropDownList>
            </td>
        </tr>   
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style1" align="center" >
                <strong><asp:Label ID="Label1" runat="server" Text="起始ＩＰ："></asp:Label></strong> 
                </td>
                <td width="66%" align="left" > 
       <asp:TextBox ID="startIP" class="l_input"  runat="server" Width="150px"></asp:TextBox>
                    * 如 255.255.255.255<asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="startIP" 
                        ErrorMessage="请输入正确格式的IP" 
                        ValidationExpression="\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="startIP" ErrorMessage="请输入起始IP"></asp:RequiredFieldValidator>
                </td>
            </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="center">
                <strong> <asp:Label ID="Label2" runat="server" Text="终止ＩＰ："></asp:Label></strong></td>
            <td class="tdbg" align="left">
        <asp:TextBox ID="endIp" class="l_input" runat="server" Width="150px"></asp:TextBox>
                * 如 255.255.255.255<asp:RegularExpressionValidator 
                    ID="RegularExpressionValidator2" runat="server" ControlToValidate="endIp" 
                    ErrorMessage="请输入正确格式的IP" 
                    ValidationExpression="\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="endIp" ErrorMessage="请输入终止IP"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="center">
                <strong> <asp:Label ID="Label3" runat="server">省级名称：</asp:Label></strong></td>
            <td class="tdbg" align="left">
                <asp:TextBox ID="pro_name" class="l_input" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="center">
                <strong> <asp:Label ID="Label4" runat="server" Text="Label">市级名称：</asp:Label></strong></td>
            <td class="tdbg" align="left">
                <asp:TextBox ID="city_name" class="l_input" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="5">
        <asp:Button ID="submit" class="C_input"   runat="server" Text="提交" OnClick="submit_Click" 
            style="height: 22px" Height="16px" />
                &nbsp;&nbsp;
            </td>
        </tr>
    </table> 
    </form>
</body>
</html>
