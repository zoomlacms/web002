<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_DownServer, App_Web_lz1ef1my" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>下载服务器</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
    .style1
    {
        
/*line-height: 120%;*/    padding: 2px;
        width: 27%;
    }
    .style2
    {
       
/*line-height: 120%;*/    padding: 2px;
        height: 49px;
        width: 27%;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>附件管理</span> &gt;&gt; <span>文件管理</span> &gt;&gt; <span><a href="DownServerManage.aspx">下载服务器管理</a></span>
        &gt;&gt; <span> 
            <asp:Label ID="Label1" runat="server" Text="添加下载服务器"></asp:Label></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <strong>
                    <asp:Label ID="LblTitle" runat="server" Text="添加服务器" Font-Bold="True"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                <strong>服务器名称：</strong><br />
                在此输入在前台显示的镜像服务器名，如广东下载、上海下载等。
            </td>
            <td class="tdbg" style="text-align: left; width: 60%;">
                <asp:TextBox ID="TxtServerName" class="l_input" runat="server" Width="290px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ValrServerName" runat="server" ErrorMessage="下载服务器名称不能为空"
                    ControlToValidate="TxtServerName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                <strong>服务器LOGO：</strong><br />
                输入服务器LOGO的绝对地址，如http://www.zoomla.cn/Images/ServerLogo.gif
            </td>
            <td class="tdbg" style="text-align: left; width: 60%;">
                <asp:TextBox ID="TxtServerLogo" class="l_input" runat="server" Width="290px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style2" align="left">
                <strong>服务器地址：</strong><br />
                请认真输入正确的服务器地址。<br />
                如http://www.zoomla.cn/这样的地址
            </td>
            <td class="tdbg" style="text-align: left; width: 60%; height: 49px;">
                <asp:TextBox ID="TxtServerUrl" class="l_input" runat="server" Width="290px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ValrServerUrl" runat="server" ErrorMessage="下载服务器地址不能为空"
                    ControlToValidate="TxtServerUrl"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg">
            <td class="style1" align="left">
                <strong>链接地址加密方式：</strong>
            </td>
            <td class="tdbg" style="text-align: left; width: 60%;">
                <asp:DropDownList ID="Encrypttype" runat="server" AutoPostBack="true" 
                    onselectedindexchanged="Encrypttype_SelectedIndexChanged">
                    <asp:ListItem Value="0">不加密</asp:ListItem>
                    <asp:ListItem Value="1">Base64加密</asp:ListItem>
                    <asp:ListItem Value="2">DES加密</asp:ListItem>
                    <asp:ListItem Value="3">RSA加密</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        
        <tr class="tdbg" id="Encrypt" runat="server" visible="false" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                <strong>链接地址加密密钥：</strong>
            </td>
            <td class="tdbg" style="text-align: left; width: 60%;">
                <asp:TextBox ID="EncryptKey" class="l_input" runat="server" Height="58px" TextMode="MultiLine" 
                    Width="407px"></asp:TextBox>
            </td>
        </tr>
        
        <tr class="tdbg" id="Tr1" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                <strong>附加时间戳加密：</strong>
            </td>
            <td class="tdbg" style="text-align: left; width: 60%;">
                <asp:CheckBox ID="TimeEncrypt" runat="server" Text="使用" AutoPostBack="true" />　<font color=red>说明:此时间戳是经过了MD5+SHA1加密,在设定时间内更新一次</font>
            </td>
        </tr>
        <tr class="tdbg" id="Tr2" runat="server">
            <td class="style1" align="left">
                <strong>更新时间戳间隔时间：</strong><br />单位：分钟, 0 为不更新</td>
            <td class="tdbg" style="text-align: left; width: 60%;">
                <asp:TextBox ID="UpTimeuti" runat="server">0</asp:TextBox>
                <asp:DropDownList ID="UpTimeutiList" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="1">每分钟</asp:ListItem>
                    <asp:ListItem Value="10">每十分钟</asp:ListItem>
                    <asp:ListItem Value="30">每三十分钟</asp:ListItem>
                    <asp:ListItem Value="60">每小时</asp:ListItem>
                    <asp:ListItem Value="360">每六小时</asp:ListItem>
                    <asp:ListItem Value="720">每十二小时</asp:ListItem>
                    <asp:ListItem Value="1440">每天</asp:ListItem>
                    <asp:ListItem Value="2880">每二天</asp:ListItem>
                    <asp:ListItem Value="7200">每五天</asp:ListItem>
                    <asp:ListItem Value="10080">每七天</asp:ListItem>
                    <asp:ListItem Value="44640">每月</asp:ListItem>
                    <asp:ListItem Value="133920">每季度</asp:ListItem>
                    <asp:ListItem Value="535680">每年</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg">
            <td class="style1" align="left">
                <strong>显示方式：</strong>
            </td>
            <td class="tdbg" style="text-align: left; width: 60%;">
                <asp:DropDownList ID="DropShowType" runat="server">
                    <asp:ListItem Value="0">显示名称</asp:ListItem>
                    <asp:ListItem Value="1">显示LOGO</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
         <tr class="tdbg">
            <td class="style1" align="left">
                <strong>允许访问用户组(权限设置)：</strong>
            </td>
            <td class="tdbg" style="text-align: left; width: 60%;">
                <asp:CheckBoxList ID="ReadRoot" runat="server">
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr class="tdbg">
            <td style="text-align: center" colspan="2">
                <br />
                <asp:Button ID="EBtnModify" class="C_input" Text="修改" OnClick="EBtnModify_Click" runat="server" Visible="false" />
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />&nbsp;&nbsp;
                <input name="BtnCancel" type="button" class="C_input" onclick="javascript:window.location.href='DownServerManage.aspx'"
                    value=" 取消 " />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
