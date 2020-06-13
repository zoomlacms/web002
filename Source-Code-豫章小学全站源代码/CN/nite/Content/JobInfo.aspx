<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Content_JobInfo, App_Web_bcc1hubn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
<link href="../CSS/main.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="us_topinfo">
        <div class="us_showinfo">
            <h1>
                <span class="us_showinfo1">您好<asp:Label ID="LblUserName" runat="server" Text="" />！</span>
                您现在的位置：<span id="Span1"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                    ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                    </span><span><a title="会员中心" href="/User/Default.aspx" target="_blank">会员中心</a></span><span>
                        &gt;&gt; </span><span><a href="SendResume.aspx">找工作</a></span> &gt;&gt; <span>职位详细</span></span>
            </h1>
        </div>
        <div class="cleardiv">
        </div>
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <span>
                    <asp:Label ID="txtTitle" runat="server" Text="职位详细"></asp:Label></span>
            </td>
        </tr>
        <tr class="WebPart">
            <td height="22" align="right" valign="top">
                <strong>职位名称：</strong>
            </td>
            <td height="22" valign="middle">
                <%=jname %>
            </td>
        </tr>
        <tr class="WebPart">
            <td height="22" style="width:200px" align="right" valign="top">
                <strong>职位所需人数：</strong>
            </td>
            <td valign="middle">
               <%=jnum %>
            </td>
        </tr>
        <tr class="WebPart">
            <td height="22" align="right" valign="top">
                <strong>工作地点：</strong>
            </td>
            <td height="22" valign="middle">
               <%=jadd %>
            </td>
        </tr>
        <tr class="WebPart">
            <td align="right">
                <strong>职位描述：</strong>
            </td>
            <td valign="middle">
                <%=jinfo %>
            </td>
        </tr>
        <tr class="WebPart" runat="server" id="Tr1">
            <td height="22" align="right" valign="top">
                <strong>职位截止时间：</strong>
            </td>
            <td valign="middle">
                <%=jendtime %>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
