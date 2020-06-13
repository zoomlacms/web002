<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_School_UpFile, App_Web_2npzixkb" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的班级</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent">会员中心</a>&gt;&gt;<a href="mySchoolList.aspx">我的班级</a>gt;&gt;班级信息
</div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
<br />
<div class="us_showinfo">
<div>
&nbsp;&nbsp;&nbsp;<a href="ShowRoom.aspx?Roomid=<%=RoomID%>"><%=RoomName %></a>
&gt;&gt;
<%=FileType%>
上传<hr />
</div>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td align="center" colspan="2">
		<strong><%=FileType%>上传</strong></td>
</tr>
<tr>
	<td>
		<asp:GridView ID="GridView1" DataKeyNames="ID" ShowHeader="false" Width="100%" runat="server" AutoGenerateColumns="False">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<a href='download.aspx?f=<%#DataBinder.Eval(Container.DataItem,"UpFileUrl")%>&fn=<%#Eval("ID","{0}")%>'>
							<%#DataBinder.Eval(Container.DataItem, "FileName")%>
						</a>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:BoundField DataField="UpDateTime" >
					<ItemStyle Width="120px" />
				</asp:BoundField>
				<asp:TemplateField >
					<ItemTemplate>
						<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnClientClick="return  confirm('你确定要删除这个文件吗？')">[删除]</asp:LinkButton>
					</ItemTemplate>
					<ItemStyle Width="40px" />
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
	</td>
	<td style="width: 100px" rowspan="2" valign="top">
		<table>
		<tr>
		<td><a href="downloadFile.aspx?Roomid=<%=RoomID%>" >下载<%=Dow %></a></td>
		</tr>
			<tr>
				<td>
					请上传后缀名为txt或doc的文件
				</td>
			</tr>
			<tr>
				<td>
					<input id="File1" type="file" runat="server" /></td>
			</tr>
			<tr>
				<td align="center">
					重命名：<asp:TextBox ID="txtFileName" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td align="center">
					<asp:Button ID="Button1" runat="server" Text="上  传" OnClick="Button1_Click" /></td>
			</tr>
		</table>
	</td>
</tr>
<tr>
		<td align="center">
			共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
			<asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
			<asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
			<asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
			<asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
			页次：<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize"
				runat="server" Text=""></asp:Label>页
			<asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页 转到第<asp:DropDownList
				ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
			</asp:DropDownList>页
		</td>

	<td>
	</td>
</tr>
</table>
</div>
</form>
</body>
</html>