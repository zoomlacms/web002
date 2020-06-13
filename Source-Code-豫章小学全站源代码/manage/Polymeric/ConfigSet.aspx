<%@ page language="C#" autoeventwireup="true" inherits="manage_Polymeric_ConfigSet, App_Web_s0s1fxgj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>参数设置</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>用户管理</span>  &gt;&gt; <span>聚合参数设置</span>
        </div>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="center">
            <td width="100%" class="title" colspan="2">
                模板设置
            </td>
        </tr>
        <tr align="center">
            <td width="30%" class="tdbgleft" align="right">
                聚合名称：
            </td>
            <td width="70%" class="tdbg" align="left">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="l_input" Width="132px"></asp:TextBox>
                &nbsp;举例：如：店铺 或 主页 等等
            </td>
        </tr>
        <tr align="center">
            <td width="30%" class="tdbgleft" align="right">
                首页模板：
            </td>
            <td width="70%" class="tdbg" align="left">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="l_input" Width="332px"></asp:TextBox>
                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox1')+'&FilesDir=',650,480)"
                    class="C_input" />
            </td>
        </tr>
        <tr align="center">
            <td width="30%" class="tdbgleft" align="right">
                列表页模板：
            </td>
            <td width="70%" class="tdbg" align="left">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="l_input" Width="332px"></asp:TextBox>
                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox2')+'&FilesDir=',650,480)"
                    class="C_input" />
            </td>
        </tr>
        <tr align="center">
            <td width="30%" class="tdbgleft" align="right">
                内容页模板：
            </td>
            <td width="70%" class="tdbg" align="left">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="l_input" Width="332px"></asp:TextBox>
                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox3')+'&FilesDir=',650,480)"
                    class="C_input" />
            </td>
        </tr>
        <tr align="center">
            <td width="30%" class="tdbg" align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" Text=" 更 新 " CssClass="C_input" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
