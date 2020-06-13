<%@ page language="C#" autoeventwireup="true" inherits="User_Info_CashInfo, App_Web_ozaqwyfa" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>注册信息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="us_topinfo">
	<div class="us_showinfo">
		您现在的位置：<span
				id="YourPosition"><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName"
					runat="server" Text="Label"></asp:Label></a> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a>
				&gt;&gt; <a href="UserInfo.aspx">账户管理</a> &gt;&gt; </span>VIP信息 
	</div>
    </div>
    <div class="us_seta" style="margin-top: 10px;" id="manageinfos" runat="server">
        <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    </div>
     <div class="us_seta" style="margin-top: 10px;" id="Div1" runat="server">
        <asp:Label ID="Label2" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label3" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label4" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label5" runat="server" ></asp:Label>
    </div>
         
    <div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
        <h1 style="text-align: center">
            VIP信息</h1>
        <div style=" text-align:center; vertical-align:middle;">
        
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="10%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="10%" class="title">ID</td>
        <td width="10%" class="title">银行</td>
        <td width="30%" class="title">帐号</td>
       <td width="10%" class="title">申请金额</td>
         <td width="10%" class="title">状态</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("Y_ID")%>'/></td>
        <td height="22" align="center"><%# Eval("Y_ID")%></td>
         <td height="22" align="center"><%# Eval("Bank")%></td>
       <td height="22" align="center"><%# Eval("Account")%></td>
         <td height="22" align="center"><%#showMoney(Eval("money").ToString())%></td>
        <td height="22" align="center"><%#shoyState(Eval("yState").ToString())%></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="6" align="center" class="tdbgleft">
        共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
            Text="" />页
        <asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1"
            runat="server" AutoPostBack="True">
        </asp:DropDownList>
        页
              </td>
      </tr>
    </table>
        </div>
    </div>
</body>
</html>