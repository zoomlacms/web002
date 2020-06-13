<%@ page language="C#" autoeventwireup="true" inherits="User_ManagePub, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我的互动</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="us_pynews" style="height: 24px; line-height: 24px;">
        您现在的位置： <a title="网站首页" href="/"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; 我的互动
    </div>
    <ul>
        <li style="width: 260px; float: left; line-height: 30px; text-align: right">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </li>
        <li> 
        <table width="100%">
        <tr>
        <td width="200" valign="top">
          <table width="200" align="right" cellpadding="2" cellspacing="1">
                <tr>
                        <td><b>分类名称</b></td>
                  </tr>
                  <tr>
                        <td><a href="managepub.aspx">全部</a></td>
                  </tr>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
                  <tr>
                        <td><a href="?pubID=<%#Eval("pubID","{0}")%>"><%#Eval("PubName","{0}")%></a></td>
                  </tr>
              </ItemTemplate>
              </asp:Repeater>
            
          </table></td>
        <td valign="top">
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="center">
            <td width="2%" class="title">
                <b>ID</b>
            </td>
            <td width="15%"><b>
                所属分类</b>
            </td>
            <td class="style10" width="50%">
                <b>互动标题</b>
            </td>
            <td align="center" width="25%">
                <b>发表时间</b>
            </td>
            <td width="8%" class="title">
                <b>操作</b>
            </td>
        </tr>
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                    id="<%#Eval("ID") %>" ondblclick="ShowTabs(this.id)">
                    <td height="22" align="center">
                        <%#Eval("ID")%>
                    </td>
                    <td height="22" align="center">
                        <%#GetPubInfo(Eval("Pubupid","{0}"))%>
                    </td>
                    <td height="22" align="left">
                        <%#ZoomLa.Common.BaseClass.Left(Eval("PubTitle","{0}"),45)%>
                    </td>
                    <td align="center">
                     <%#Eval("PubAddTime")%>
                    </td>
                    <td height="22" align="center">
                        <a href="?menu=del&id=<%#Eval("ID") %>&pubid=<%#Eval("Pubupid","{0}")%>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td height="22" colspan="7" align="center" class="tdbg">
                共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                个信息
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                    Text="" />页
                <asp:Label ID="pagess" runat="server" Text="" />条信息/页
            </td>
        </tr>
    </table>
        </td>
        </tr>
        </table>
        </li>
    </ul>
    </form>
</body>
</html>
