<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Template.LabelImport, App_Web_balgrtw4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>标签导入</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />    
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;系统设置 &gt;&gt;<a href="LabelManage.aspx">标签管理</a>&gt;&gt;<span>标签导入</div> 
<div style="text-align:center">
    <div style="width:500px;border:1px solid gray;text-align:left">
        <asp:Image ID="tp" ImageUrl="/App_Themes/AdminDefaultTheme/Images/loading.gif" Height="22" Width="0" runat="server" />                       
    </div>
    <table width="500px" style="text-align:center">
        <tr>
            <td align="center" style="width:250px">
                <asp:Label ID="tn" runat="server" Text="0%"></asp:Label>
            </td>
            <td align="center" style="width:250px">
                <asp:Label ID="finallytd" runat="server" Text=""></asp:Label>
            </td>
            <td align="center" style="width:250px">
                <asp:Label ID="tc" runat="server" Text="0"></asp:Label>
            </td>
        </tr>
    </table>        
    <br />  
    <asp:Button ID="Button1" runat="server"  class="C_input" Text="开始导入" OnClick="Button1_Click" />
</div>    
</form>
</body>
</html>