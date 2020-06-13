<%@ page language="C#" autoeventwireup="true" enableeventvalidation="false" inherits="ZoomLa.WebSite.Manage.CreateHtmlContent, App_Web_knhg2ld3" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>发布管理</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<style type="text/css">
    /* Button 样式 */
     .btn
    {
        border: 1px solid #999999;
        padding: 1px;
        font-size: 12px;
            background: url(/App_Themes/AdminDefaultTheme/Images/btnbg.gif);
        }
    .spanfixdiv1{
    	background-color: #F8FCF8;
        color:Red;
        font-weight: bold;
        text-align: center;
        padding-left:5px;
        padding-right:5px;
        margin-left:10px;
        margin-right:10px;
        overflow:hidden;
        cursor: hand;
    }    

</style>
<script src="/JS/calendar.js" type="text/javascript"></script>
<script type="text/javascript" src="/JS/RiQi.js"></script>

<script language="javascript" type="text/javascript">

    function myfun() {
        if (document.form1.ColumnList.value == "") {
            alert("请选择栏目");
            return false;
        }
    }

    function lbColumnCheck() {
        if (document.form1.lbColumn.value == "") {
            alert("请选择栏目");
            return false;
        }
    }

    function lbSingleCheck() {
        if (document.form1.lbSingle.value == "") {
            alert("请选择单页");
            return false;
        }
    }
    function lbSpeacilCheck() {
        if (document.form1.lbSpeacil.value == "") {
            alert("请选择专题");
            return false;
        }
    }	
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 &gt;&gt;生成发布
    </div>
    <%--<table width="100%" border="0" cellpadding="2" cellspacing="1"  align="center">
        <tr class="title">
            <td colspan="3" align="left">
                &nbsp;定时发布
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right" style="width:20%">
                &nbsp;定时发布：
            </td>
            <td align="left"  style="width:8%">
            <asp:RadioButtonList ID="rblTime" runat="server" AutoPostBack="true" 
                    RepeatDirection="Horizontal" 
                    onselectedindexchanged="rblTime_SelectedIndexChanged">
            <asp:ListItem Value="1">是</asp:ListItem>
            <asp:ListItem Value="2" Selected="True">否</asp:ListItem>
            </asp:RadioButtonList>
            </td>
            <td align="left" ><asp:TextBox ID="txtDate" Visible="false" runat="server"  onclick="calendar()"></asp:TextBox></td>
        </tr>
    </table>--%>
    <div class="clearbox">
    </div>
    <!--发布全站主页-->
    <table width="100%" border="0" cellpadding="2" cellspacing="1"  align="center" id="crt1" runat="server">
        <tr class="title">
            <td colspan="2" align="left">
                &nbsp;发布频道首页
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right" style="width:20%">
                &nbsp;发布频道首页：
            </td>
            <td align="left" >
                <asp:Button ID="btnCreate" runat="server" Text="开始发布" CssClass="btn" OnClick="btnCreate_Click" />
            </td>
        </tr>
    </table>
    <!--end发布全站主页-->
    <div class="clearbox">
    </div>
    <!--top生成内容页-->
    <table width="100%" border="0" cellpadding="0" cellspacing="1"  align="center" id="crt2" runat="server">
        <tr class="title">
            <td colspan="2" align="left">
                &nbsp;发布内容
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right" style="height: 24px">
                &nbsp;发布所有：
            </td>
            <td align="left"  style="height: 24px">
                <asp:Button ID="btnNewsContent" runat="server" Text="开始发布" CssClass="btn" OnClick="btnNewsContent_Click" />
            </td>
        </tr>        
        <tr class="tdbg">
            <td align="right" valign="middle">
                按照栏目发布：
            </td>
            <td  valign="middle" style="padding: 0px;">
                <div style="float: left;">
                    <asp:ListBox ID="ColumnList" runat="server" Width="200" Height="220" SelectionMode="Multiple"></asp:ListBox>
                </div>
                <div style="margin-top: 100px; float: left;">
                    &nbsp;<asp:Button ID="btnColumnCreate" runat="server" Text="开始发布" CssClass="btn" OnClick="btnColumnCreate_Click" OnClientClick="return myfun()" /></div>
            </td>
        </tr>
        <tr class="tdbg">
            <td align="left" colspan="2" valign="middle">
                <span style="color: Blue"><strong>注意：</strong></span>如果选择了栏目，则只生成选择栏目下的内容；如果不选择直接生成的，则生成全站的内容。
            </td>
        </tr>
    </table>
    <!--end生成内容页-->
    <!--start发布栏目-->
    <table width="100%" border="0" cellpadding="2" cellspacing="1"  align="center" id="crt3" visible="false"  runat="server">
        <tr class="title">
            <td colspan="2" align="left" style="height: 23px">
                &nbsp;发布栏目
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right">
                选择栏目：
            </td>
            <td align="left" >
                <asp:Button ID="btnCreateColumnAll" runat="server" Text="发布所有栏目" CssClass="btn" OnClick="btnCreateColumnAll_Click" />
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right" valign="middle">
                选择栏目：
            </td>
            <td  valign="middle" style="padding: 0px;">
                <div style="float: left;">
                    <asp:ListBox ID="lbColumn" runat="server" Width="200" Height="220" SelectionMode="Multiple"></asp:ListBox>
                </div>
                <div style="margin-top: 100px; float: left;">
                    &nbsp;<asp:Button ID="btnCreateColumn" runat="server" Text="开始发布" CssClass="btn" OnClientClick="return lbColumnCheck()" OnClick="btnCreateColumn_Click" /></div>
            </td>
        </tr>
    </table>
    <!--end发布栏目-->
    <!--start发布单页-->
    <table width="100%" border="0" cellpadding="2" cellspacing="1"  align="center" id="crt4"  visible="false"  runat="server">
        <tr class="title">
            <td colspan="2" align="left">
                &nbsp;发布单页
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right">
                发布所有单页：
            </td>
             <td align="left" >
                <asp:Button ID="Button1" runat="server" Text="发布所有单页" CssClass="btn" OnClick="btnCreateSingleAll_Click" />
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right" valign="middle">
                选择单页：
            </td>
            <td  valign="middle" style="padding: 0px;">
                <div style="float: left;">
                    <asp:ListBox ID="lbSingle" runat="server" Width="200" Height="220" SelectionMode="Multiple"></asp:ListBox>
                </div>
                <div style="margin-top: 100px; float: left;">
                    &nbsp;<asp:Button ID="Button3" runat="server" Text="开始发布" CssClass="btn" OnClientClick="return lbSingleCheck()" OnClick="btnCreateSingle_Click" /></div>
            </td>
        </tr>
    </table>
    <!--end发布单页-->
    <div class="clearbox">
    </div>
    <!--start发布主题-->
    <table width="100%" border="0" cellpadding="2" cellspacing="1"  align="center" id="crt5"  visible="false"  runat="server">
        <tr class="title">
            <td colspan="2" align="left">
                &nbsp;发布专题
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right" valign="middle">
                选择专题：
            </td>
            <td  valign="middle" style="padding: 0px;">
                <div style="float: left;">
                    <asp:ListBox ID="lbSpeacil" runat="server" Width="200" Height="220" SelectionMode="Multiple"></asp:ListBox>
                </div>
                <div style="margin-top: 100px; float: left;">
                    &nbsp;<asp:Button ID="btnCreateSpeacil" runat="server" Text="开始发布" CssClass="btn" OnClientClick="return lbSpeacilCheck()" OnClick="btnCreateSpeacil_Click" /></div>
            </td>
        </tr>
    </table>
    <!--end发布主题-->
    <asp:Literal ID="litMessage" runat="server"></asp:Literal>
    </div>
    </form>
</body>
</html>
