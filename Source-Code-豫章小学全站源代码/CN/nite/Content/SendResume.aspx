<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Content_SendResume, App_Web_bcc1hubn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>投简历</title>
<link href="../CSS/main.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/menu.js"></script>
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
                        &gt;&gt; </span><span>找工作</span></span>
            </h1>
        </div>
        <div class="cleardiv">
        </div>
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="center">
            <td width="20%" class="title">
                单位名称
            </td>
            <td width="20%" class="title">
                职位名称
            </td>
            <td width="40%" class="title">
                职位描述
            </td>
            <td width="20%" class="title">
                操作
            </td>
        </tr>
        <asp:Repeater ID="gvCard" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td height="22" align="center">
                        <%#Eval("JSclass")%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("JName")%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("Jinfo")%>
                    </td>
                    <td height="22" align="center">
                        <a href="JobInfo.aspx?ID=<%#Eval("Jid") %>">查看详细</a> | 
                        <%#GetVote(Eval("Jid").ToString())%>
                       
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td height="22" colspan="6" align="center" class="tdbgleft">
                共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                个信息
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                    Text="" />页
                <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
                    runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                页
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
