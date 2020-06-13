<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_ProjectsAddType, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加项目类型</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
            <span>后台管理</span> &gt;&gt; <span>CRM应用</span> &gt;&gt; <a href="Projects.aspx"></a> &gt;&gt; <span>新建项目类别</span>
        </div>
    <div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tbody id="Tabs0">
            <tr class="spacingtitle" style="height:"30px;">
			    <td align="center" colspan="2" ><asp:Label ID="lblText" runat="server">添加项目类型</asp:Label></td>
            </tr>  
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td style="width: 288px" class="tdbgleft"><strong>项目类别名：</strong></td>
                <td>
                    <asp:TextBox ID="TxtProjectName" class="l_input" runat="server" />
                    <asp:Label ID="LblMessage" runat="server" Text=""></asp:Label>
                </td>
            </tr>   
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td style="width: 288px" class="tdbgleft">
                    <strong>项目类别名称简介：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtTypeInfo" class="l_input" runat="server" Height="135px" TextMode="MultiLine" Width="281px" />
                </td>        
            </tr>            
        </table>
        <div class="clearbox"></div>
        <div style=" text-align:center; width:800px"><asp:Button ID="BtnCommit" runat="server" Text="提交"  class="C_input" onclick="Button1_Click"/>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Btn" runat="server" Text="返回" class="C_input" onclick="Button2_Click" />
        </div>
    </form>
</body>
</html>
