<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_APIConfig, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>主站API接口配置</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>站群管理 </span> &gt;&gt; <span>主站配置管理 </span>&gt;&gt; <span>主站API接口配置</span>
    </div>
    <div class="clearbox">
    </div>
       <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="left">
        <td width="10%" class="tdbg">欢迎使用<asp:Label ID="Label1" runat="server" Text=""></asp:Label>[站群管理]系统,通过本模块您可以快速的构建起高品质、真正物理隔离的大型门户网站群。
        <li>您首先要确定是否于系统配置-网站参数配置处开启了子站功能，未开启则不能正常使用。
</li><li>主站与子站间数据采用API的形式加密传递，因而您必须进行初始化安全配置才能进行正常的信息投递与管理。
</li><li>本系统为<asp:Label ID="Label2" runat="server" Text=""></asp:Label>高级应用模块，仅接受用户订制使用，免费版功能尽管有相应限制但可正常用于建站和部署，请放心使用。</li>
        </td>
      </tr>
      </table>
 <div class="clearbox">
    </div>

    <div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
            <tr>
                <td align="center" colspan="2" class="spacingtitle">
                    <b>主站API接口配置</b>
                </td>
            </tr>
            <tr class="tdbg">
                <td width="20%" align="right" class="tdbgleft">
                    <strong>地址：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtAddUrl" Width="200px" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg">
                <td width="20%" align="right" class="tdbgleft">
                    <strong>加密方式：</strong>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem Value="0">不加密</asp:ListItem>
                    <asp:ListItem Value="1">Base64加密</asp:ListItem>
                    <asp:ListItem Value="2">DES加密</asp:ListItem>
                    <asp:ListItem Value="3">RSA加密</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg">
                <td width="20%" align="right" class="tdbgleft">
                    <strong>是否防止恶意攻击：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="0">是</asp:ListItem>
                        <asp:ListItem Value="1">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg">
                <td width="20%" align="right" class="tdbgleft">
                    <strong>接口状态：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList2"  runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="0">开启</asp:ListItem>
                        <asp:ListItem Value="1">关闭</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg">
                <td colspan="2" align="center" class="tdbgleft">
                    <asp:Button ID="Button1" runat="server" class="C_input" Text="提 交" />
                </td>
            </tr>
        </table>
    </div>
    <div>
    </div>
    </form>
</body>
</html>
