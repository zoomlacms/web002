<%@ page language="C#" autoeventwireup="true" debug="true" inherits="User_Usertalk_ImgUpdateLoad, App_Web_s5c5gzpd" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的相册</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function geturl(id) {
        var u = id.src;
        window.opener.showSrc(u);
        window.close();
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<%--<div class="us_topinfo" style="width: 98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent" >会员中心</a>&gt;&gt; 我的相册
</div>
<div>
	<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
</div>
<br />--%>
<div class="us_topinfo" style="overflow: hidden; width: 98%" id="us_topinfo" runat="server">
	<table width="760" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td>
				<h2>
					我的相册</h2>
			</td>
		</tr>
		<tr>
			<td style="height: 50px">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td style="width: 561px">
							可以有自己的相册来存放照片了，你可以从<a href="../UserZone/Pic/AddPicCateg.aspx">创建一个相册</a>开始
						</td>
						<td>
							<a href="../UserZone/Pic/AddPicCateg.aspx">
								<asp:Image ID="Image2" runat="server" ImageUrl="~/Images/FoundCateg.jpg" /></a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<%=content%>
				<asp:DataList ID="dltCategList" runat="server" RepeatColumns="4" OnItemCommand="Item_Command" >
					<ItemTemplate>
						<table>
							<tr>
								<td align="center">
									<a href="javascript:void(0);">
										<asp:ImageButton ID="Image1" runat="server"  Width="139px" Height="106px" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "TitlePIcUrl")%>' CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>'  />
								   </a>
								</td>
							</tr>
							<tr>
								<td align="center">
								   <%-- <a href='ImgUpdateLoad.aspx?CategID=<%#DataBinder.Eval(Container.DataItem,"ID")%>'>--%>
									 <a href="javascript:void(0);">
										<%-- <asp:TextBox ID="TextBox1" runat="server"  Text='<%#DataBinder.Eval(Container.DataItem,"ID")%>' Visible="false"></asp:TextBox>--%>
										<%#DataBinder.Eval(Container.DataItem, "PicCategTitle")%>
									</a>
								</td>
							</tr>
						</table>
					</ItemTemplate>
				</asp:DataList>
			</td>
		</tr>
		<tr>
			<td align="center">
				<li style="height: 30px; text-align: center">共<asp:Label ID="Allnum" runat="server"
					Text=""></asp:Label>&nbsp;
					<asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
					<asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
					<asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
					<asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
					页次：<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize"
						runat="server" Text=""></asp:Label>页
					<asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页 转到第<asp:DropDownList
						ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
					</asp:DropDownList>
					页</li>
			</td>
		</tr>
	</table>
	</div> 
	 
<div class="s_bright" style="display:none" id="s_bright" runat="server"> 
	<table style="width: 760px" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>
					<h2> <%=UserName %>
					的相册<%=CategName %></h2>
				</td>
			</tr>
			<tr>
				<td align="right">
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<%=type %>
							</td>
							<td style="width: 130px;">
							&gt; <a href='ImgUpdateLoad.aspx?intervieweeID=<%=UserID%>'>返回<%=UserName %>的相册首页</a></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<asp:DataList ID="dltPicList" Width="760px" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" >
						<ItemTemplate>
							<table>
								<tr>
									<td align="center">
										<a href="javascript:void(0);" style="cursor:pointer">
											<img id="Image1" src='<%# DataBinder.Eval(Container.DataItem,"PicUrl")%>' runat="server" style="Height:100px;Width:100px;" onclick="geturl(this)" />
										</a>
									 </td>
								</tr>
								<tr>
									<td align="center">
										<a href='TalkIndex.aspx?picID=<%#DataBinder.Eval(Container.DataItem,"ID") %>&where=2'>
											<%# DataBinder.Eval(Container.DataItem,"PicName")%>
										</a>
									</td>
								</tr>
							</table>
						</ItemTemplate>
					</asp:DataList>
				 </td>
			</tr>
		   <tr>
				<td align="center">
					<li style="height: 30px; text-align: center">共<asp:Label ID="Allnum1" runat="server"
						Text=""></asp:Label>&nbsp;
						<asp:Label ID="Toppage1" runat="server" Text=""></asp:Label>
						<asp:Label ID="Nextpage1" runat="server" Text=""></asp:Label>
						<asp:Label ID="Downpage1" runat="server" Text=""></asp:Label>
						<asp:Label ID="Endpage1" runat="server" Text=""></asp:Label>
						页次：<asp:Label ID="Nowpage1" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize1" runat="server" Text=""></asp:Label>页
						<asp:Label ID="pagess1" runat="server" Text=""></asp:Label>个/页 转到第<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
						</asp:DropDownList>页</li>
				</td>
			</tr>
		</table>
</div>
</form>
</body>
</html>