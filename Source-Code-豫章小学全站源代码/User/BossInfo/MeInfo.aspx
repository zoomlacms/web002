<%@ page language="C#" autoeventwireup="true" inherits="User_BossInfo_MeInfo, App_Web_znyb5330" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>上级代理商信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
 <style type="text/css">
.style1 { background: #e0f7e5; line-height: 120%; width: 21%; }
.style2 { background: #e0f7e5; line-height: 120%; height: 24px; width: 21%; }
</style>
</head>
<body>
   
    <div>
    <table width="100%" border="0" cellspacing="1" cellpadding="0" class="r_navigation">
            <tr>
            <td height="24" align="center" class="style1" colspan="2"> 你的上级代理商信息  </td>
        </tr>
        <tr>
            <td height="24" align="right" class="style1">代理商名称:</td>
            <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="Label7" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td height="24" align="right" class="style1">联系电话：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="Label8" runat="server" Text=""></asp:Label></td>
        </tr>
    <tr>
            <td height="24" align="center" class="style1" colspan="2"> 代理商基本信息  </td>
                 
        </tr>
        <tr>
            <td height="24" align="right" class="style1">地区:</td>
            <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="tx_cname" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td height="24" align="right" class="style1">代理商级别:</td>
            <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">代理商名称:</td>
            <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">代理商地址:</td>
            <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="Label6" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">法定代理人:</td>
            <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="Label9" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">营业执照:</td>
            <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="Label10" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">代理商电话:</td>
            <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="Label11" runat="server" Text=""></asp:Label></td>
        </tr>
                
            <tr>
            <td height="24" align="right" class="style1">公司介绍:</td>
            <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="Label12" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td height="24" align="center" class="style1" colspan="2">银行帐号信息  ：</td>
        </tr>
        <tr>
            <td align="right" class="style1">合同协议号：</td>
            <td align="left">&nbsp;<asp:Label ID="tx_money" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td height="24" align="right" class="style1">开户人：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="tx_zong" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td height="24" align="right" class="style1">开户银行1：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="tx_num" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">银行账号1：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="Label13" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">开户人2：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="Label14" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">开户银行2：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="Label15" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">银行账号2：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="Label16" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td align="center" class="style1" colspan="2">联系人信息 ：</td>
        </tr>
        <tr>
            <td align="right" class="style2">联系人姓名：</td>
            <td align="left" style="height: 24px">&nbsp;<asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td height="24" align="right" class="style1">性别：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td height="24" align="right" class="style1">联系人职务：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">联系电话：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="Label17" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">传真：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="Label18" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">邮编：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="Label19" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">Email：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="Label20" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">证件类型：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="Label21" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr>
            <td height="24" align="right" class="style1">证件号：</td>
            <td height="24" align="left">&nbsp;<asp:Label ID="Label22" runat="server" Text=""></asp:Label></td> 
        </tr>
              </table>
    </div>
</body>
</html>
