<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_LogSearch, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>子站信息</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script src="/JS/Common.js" type="text/javascript"></script>

<script src="/JS/RiQi.js" type="text/javascript"></script>

<script src="/JS/calendar.js" type="text/javascript"></script>

    <style type="text/css">
        .style2
        {
            height: 24px;
            width: 470px;
        }
        .style3
        {
            width: 470px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>站群管理  </span>&gt;&gt; <span><a href="AddSiteinfo.aspx">
            日志管理</a></span> &gt;&gt; <span>日志查询</span></div>
    <div class="clearbox">
    </div>
    <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;"
        width="100%">
        <tr class="tdbg">
            <td align="center" class="title" height="24" colspan="2">
             日 志 查 询
            </td>
        </tr>
        <tr class="tdbg" runat="server" >
            <td align="right" height="24" width="50%">
                <strong>查询关键字：</strong>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td  height="24" width="50%" class="tdbgleft">
                <strong>日志时间：</strong>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <strong>至</strong>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr  class="tdbg" runat="server">
            <td align="center" colspan="2"> 
                <asp:Button ID="search" class="C_input" runat="server" Text="查询" />
            </td>
        </tr>
        <tr class="tdbg">
            <td align="center" class="style2"colspan="2">
                                &nbsp&nbsp&nbsp&nbsp
                </td>
        </tr>
    </table>
    </form>
</body>
</html>
