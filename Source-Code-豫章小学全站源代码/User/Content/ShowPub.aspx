<%@ page language="C#" autoeventwireup="true" inherits="User_Content_ShowPub, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>内容预览</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="/js/SelectCheckBox.js"></script>
<script language="javascript" src="/JS/Popmenu.js" type="text/JavaScript"></script>
<script>
function gotourl(Optimal, pubid, gid, id) {
location.href = 'ShowPub.aspx?menu=setinfo&Optimal=' + Optimal + '&pid=' + pubid + '&ID=' + gid + '&GID=' + id;
}

function setdb(Optimal, pubid, gid, id) {
location.href = 'ShowPub.aspx?menu=setdb&Optimal=' + Optimal + '&pid=' + pubid + '&ID=' + gid + '&GID=' + id;
}

function setnodb(Optimal, pubid, gid, id) {
location.href = 'ShowPub.aspx?menu=setnodb&Optimal=' + Optimal + '&pid=' + pubid + '&ID=' + gid + '&GID=' + id;
}

</script>
</head>
<body>
<div class="us_pynews" style="height: 24px; line-height: 24px;">
您的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_top"><asp:Label
ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span> <span>&gt;&gt;
</span><span><a title="会员中心" href="/User/Default.aspx" target="_top">会员中心</a></span><span>
	&gt;&gt; </span><span><a href="Pub.aspx?NodeID=<%=NodeID %>">我的互动</a></span></span><span>&gt;&gt;
	</span><span><a href='ShowPubList.aspx?ID=<%=Request.QueryString["ID"] %>'>信息预览</a>
	</span><span>&gt;&gt; </span><span>
		<asp:Label ID="lblNodeName" runat="server" Text="互动信息"></asp:Label></span>
</div>
<form id="form1" runat="server">
<div>
<ul class="us_seta" style="margin-top: 10px;">
<h1 style="text-align: center">
	<asp:Label ID="Label1" runat="server" Text="信息预览"></asp:Label></h1>
<asp:DetailsView ID="DetailsView1" runat="server" Width="100%" CellPadding="4" GridLines="None"
	Font-Size="12px" Style="margin-bottom: 3px; margin-top: 2px;" CssClass="r_navigation">
	<Fields>
	</Fields>
	<FooterStyle Font-Bold="True" BackColor="#FFFFFF" />
	<CommandRowStyle Font-Bold="True" CssClass="tdbgleft" />
	<RowStyle />
	<FieldHeaderStyle Font-Bold="True" />
	<PagerStyle HorizontalAlign="Center" />
	<HeaderStyle Font-Bold="True" />
	<EditRowStyle />
	<AlternatingRowStyle />
</asp:DetailsView>
</ul>
<asp:HiddenField ID="hfUsername" runat="server" />
<ul class="us_seta" style="margin-top: 10px;">
<h1 style="text-align: center">
	<asp:Label ID="Label2" runat="server" Text="互动信息"></asp:Label></h1>
<asp:DataList ID="Egv" runat="server" Width="100%" DataKeyField="ID">
	<ItemTemplate>
		<table width="100%" height="100px" border="1" cellspacing="0" cellpadding="0">
			<tr>
				<td rowspan="3" valign="top" width="20%">
					<%#GetImg(Eval("PubUserID","{0}"), Eval("PubUserName","{0}"))%>
				</td>
				<td colspan="2">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td align="left">
								<%#Eval("PubAddTime") %>
							</td>
							<td align="right">
							  <div id="info">
							 <%
								 if (GetisLoginUser())
								 {
								  %>
								<a href="javascript:void(0)" onmouseover="showmenu(event,'<div class=menuitems><a href=\'javascript:void(0)\' onclick=\'gotourl(<%# Eval("Optimal") %>,<%=PubID %>,<%=GID %>,<%#Eval("ID") %>)\'><%# Eval("Optimal") == null || Eval("Optimal","{0}") != "1" ? "设置最佳" : "取消最佳"%></a></div><div class=menuitems><a href=\'javascript:void(0);\' onclick=\'setdb(<%# Eval("Optimal") %>,<%=PubID %>,<%=GID %>,<%#Eval("ID") %>)\' target=main_right><%# Eval("Optimal") == null || Eval("Optimal","{0}") != "2" ? "设置达标" : "取消达标"%></a></div><div class=menuitems><a href=\'javascript:void(0);\' onclick=\'setnodb(<%# Eval("Optimal") %>,<%=PubID %>,<%=GID %>,<%#Eval("ID") %>)\' target=main_right><%# Eval("Optimal") == null || Eval("Optimal","{0}") != "-1" ? "设为不达标" : "取消不达标"%></a></div>')">
									信息设置</a> <a href='javascript:void(0);' onclick="javascript:window.open('Reply.aspx?ID=<%#Eval("ID") %>&pubid=<%=PubID %>','', 'width=600,height=300,resizable=0,scrollbars=yes');">
										回复</a>
							   
								<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
								<%} %>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2" valign="top">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>
					<%#GetIco(Eval("Optimal","{0}")) %><br />
					
					<%#Eval("PubTitle")%></strong>
					<br />
					<br />
					&nbsp;&nbsp;<%#Eval("PubContent")%><br />
					<br />
					<%#GetTable(Eval("ID","{0}"), Eval("PubContentid","{0}"))%>
				</td>
			</tr>
			<tr>
				<td>
					<%#GetTable(Eval("ID","{0}")) %>
				</td>
			</tr>
		</table>
	</ItemTemplate>
</asp:DataList>
<div style="text-align: center;">
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
	页</div>
</ul>
</div>
</form>
</body>
</html>
