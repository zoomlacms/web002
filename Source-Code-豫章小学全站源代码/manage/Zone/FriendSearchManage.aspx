<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_FriendSearchManage, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
<title>无标题页</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>会员空间管理</span> &gt;&gt; <span>搜索好友管理</span> 
        </div> 
        <div>
            <table width="100%"  border="0" cellpadding="2" cellspacing="1" class="border">
                <tr class="tdbg">
                    <td colspan="2" align="center" class="spacingtitle" >
                        搜索好友管理</td>
                </tr>
                <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td width="24%" align="center" class="tdbgleft">
                        是否开启婚姻搜索条件：</td>
                    <td width="76%">
                       <asp:RadioButton ID="rbSearchFriendMarryTrue" runat="server" GroupName="SearchFriendMarryKey" TabIndex="1" />是
                    <asp:RadioButton ID="rbSearchFriendMarryFalse" runat="server" GroupName="SearchFriendMarryKey" TabIndex="2" />否</td>
                </tr>
                <tr class="tdbg">
                    <td align="center">
                        &nbsp;</td>
                    <td>
                        &nbsp;<asp:Button ID="btnSubmit" class="C_input"  runat="server" Text="保  存" OnClick="btnSubmit_Click" /></td>
                </tr>
            </table>
        </div>
</form>
</body>
</html>