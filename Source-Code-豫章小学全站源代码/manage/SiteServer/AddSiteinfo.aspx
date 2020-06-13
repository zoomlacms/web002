<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_AddSiteinfo, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=stype%>子站信息</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script src="/JS/Common.js" type="text/javascript"></script>

<script src="/JS/RiQi.js" type="text/javascript"></script>

<script src="/JS/calendar.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>站群管理  </span>&gt;&gt; <span><a href="AddSiteinfo.aspx">
            子站管理</a></span> &gt;&gt; <span><%=stype%>子站信息</span></div>
    <div class="clearbox">
    </div>
    <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;"
        width="100%">
        <tr class="tdbg">
            <td align="center" class="title" colspan="2" height="24" width="100%">
             <%=stype%>子站信息
            </td>
        </tr>
        <tr class="tdbg" runat="server" id="PubIPOneOrMores">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>账号：</strong>
            </td>
            <td align="left" height="24" width="80%">
                <asp:TextBox ID="txtSiteNum" runat="server" Width="101px" />&nbsp;<font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSiteNum"
                    ErrorMessage="账号不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" runat="server" id="DivPuberrmsg">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>密码：</strong>
            </td>
            <td align="left" height="24" width="80%">
                <span style="width: auto; float: left">
                    <asp:TextBox ID="txtPwd1" runat="server" Width="145px" TextMode="Password"></asp:TextBox>&nbsp;<font
                        color="red">*</font> </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPwd1"
                    ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" runat="server" >
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>确认密码：</strong>
            </td>
            <td align="left" height="24" width="80%">
                <span style="width: auto; float: left">
                    <asp:TextBox ID="txtPwd2" runat="server" Width="145px" TextMode="Password"></asp:TextBox>&nbsp;<font
                        color="red">*</font>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd1"
                        ControlToValidate="txtPwd2" ErrorMessage="确认密码与密码不符"></asp:CompareValidator>
                </span>
            </td>
        </tr>
        <tr class="tdbg" runat="server" id="PubNames">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>子站名称：</strong>
            </td>
            <td align="left" height="24" width="80%">
                <asp:TextBox ID="txtSiteName" runat="server" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" runat="server" >
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>域名地址：</strong>
            </td>
            <td align="left" height="24" width="80%">
                http://<asp:TextBox ID="txtIP" runat="server" Width="205px" ></asp:TextBox>
               <font color="red">*</font>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtIP" ErrorMessage="域名地址不能为空"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr class="tdbg" runat="server" id="PubClasss">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>站长姓名：</strong>
            </td>
            <td align="left" height="24" width="80%">
                <asp:TextBox ID="txtName" runat="server" Width="123px" />
            </td>
        </tr>
        <tr class="tdbg" id="PubTypes" runat="server">
            <td align="left" style="height: 24px" width="20%" class="tdbgleft">
                <strong>联系电话：</strong>
            </td>
            <td align="left" style="height: 24px" width="80%">
                <asp:TextBox ID="txtTel" runat="server" Width="166px" />&nbsp;</td>
        </tr>
        <tr class="tdbg" runat="server">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>联系地址：</strong>
            </td>
            <td align="left" height="24" width="80%">
                <asp:TextBox ID="txtAdd" runat="server" Width="405px" />&nbsp;</td>
        </tr>
        <tr class="tdbg">
            <td  class="tdbgleft" align="left">
                <strong>密钥加密方式：</strong>
            </td>
            <td class="tdbg" style="text-align: left; width: 70%;">
                <asp:DropDownList ID="Encrypttype" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Encrypttype_SelectedIndexChanged">
                    <asp:ListItem Value="1">Base64加密</asp:ListItem>
                    <asp:ListItem Value="2">DES加密</asp:ListItem>
                    <asp:ListItem Value="3">RSA加密</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label2" runat="server" ForeColor="#CC3300"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" id="Encrypt" runat="server" visible="false">
            <td  class="tdbgleft" align="left">
                <strong>密钥加密密钥：</strong>
            </td>
            <td class="tdbg" style="text-align: left; width: 60%;">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="CheckBoxList1_SelectedIndexChanged" 
                    RepeatDirection="Horizontal" >
                <asp:ListItem Value ="1">时间密钥</asp:ListItem>
                <asp:ListItem Value ="2">随机数密钥</asp:ListItem>
                </asp:CheckBoxList>
                <asp:TextBox ID="EncryptKey" runat="server" Height="30px"  TextMode="MultiLine" Width="407px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" runat="server">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>有效期时间：</strong>
            </td>
            <td align="left" height="24" width="80%">
                <asp:TextBox ID="txtEndTime" runat="server" Width="140px" 
                    onclick="calendar()" /><font color="red">*</font>&nbsp;<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="有效期不能为空" ControlToValidate="txtEndTime"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr id="Tr1" class="tdbg" runat="server">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>子站链接状态：</strong>
            </td>
            <td align="left" height="24" width="80%">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1" Selected="True">开启</asp:ListItem>
                <asp:ListItem Value="2">关闭</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg">
            <td align="center" colspan="2" style="height: 24px" width="100%">
                <asp:Button ID="Button1" runat="server" Text="提　交" OnClick="Button1_Click" class="C_input" />&nbsp&nbsp&nbsp&nbsp<input  id="Button2" type="button" value="返回" class="C_input" onclick="javascript:history.back()" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                <asp:HiddenField ID="HiddenID" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
