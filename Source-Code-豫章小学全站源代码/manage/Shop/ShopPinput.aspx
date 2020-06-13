<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_ShopPinput, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
<title>邮址列表</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" language="javascript" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt;
            <span>商城导入数据</span>
        </div>
        <div class="clearbox">
        </div>
        <div>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
                <tr class="tdbg">
                    <td align="center" class="spacingtitle">
                        商城导入数据</td>
                </tr>
            <tr class="tdbg" style="height:24px">
                    <td >
                        来源：<asp:DropDownList ID="SubscribeToType" runat="server">
                        </asp:DropDownList></td>
                </tr>
                <tr class="tdbg">
                <td>
                    导入商城地址：<asp:FileUpload ID="FileUpload1" runat="server" Height="20px" 
                        Width="287px" />
                    <asp:Button ID="Button2" 
                    runat="server" Text="导 入" onclick="Button2_Click" />&nbsp;支持换行的.txt与.csv格式，点击<a href="/UploadFiles/2009-2-12_Output.csv">【这里】</a> 商城地址文件模板
                   </td>
                </tr>
                <tr class="tdbg">
                    <td align="center">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

