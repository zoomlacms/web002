<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_BossSite, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>WAP参数</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script src="/JS/Common.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="r_navigation">
            
            <span>后台管理</span>&gt;&gt;提成<span>配置</span>
        </div>
        <div class="clearbox">
        </div>
        <table width="99%" cellspacing="1" cellpadding="0" class="border">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    vip卡提成比例：</td>
                <td>&nbsp;
                    <asp:TextBox ID="TextBox1" class="l_input" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                                        全市提成比列：</td>
                <td>&nbsp;
                     <asp:TextBox ID="TextBox4" class="l_input" runat="server"></asp:TextBox></td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                                        间接招商提成比例：</td>
                <td>&nbsp;
                     <asp:TextBox ID="TextBox2" class="l_input" runat="server"></asp:TextBox></td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    招商提成比例：</td>
                <td>&nbsp;
                   <asp:TextBox ID="TextBox3" class="l_input" runat="server"></asp:TextBox></td>
            </tr>
               <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    间接VIP卡提成：</td>
                <td>&nbsp;
                   <asp:TextBox ID="TextBox5" class="l_input" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1" class="C_input"  style="width:110px;"  runat="server" Text="保存设置" OnClick="Button1_Click" /><br />
    </form>

</body>
</html>
