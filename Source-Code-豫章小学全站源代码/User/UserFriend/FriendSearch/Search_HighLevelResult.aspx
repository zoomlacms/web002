<%@ page language="C#" autoeventwireup="true" inherits="User_UserFriend_FriendSearch_Search_HighLevelResult, App_Web_jebimlzp" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>高级搜索结果</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<asp:Panel ID="quickresultPanel" runat="server" Width="100%">
	<ul class="lieb" style="width: 100%;">
		<asp:DataList ID="DataList1" runat="server" Width="100%" RepeatColumns="4" RepeatDirection="Horizontal">
			<ItemTemplate>
				<li class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
					style="float: left; width: 120px;">
					<div class="ssggLi" style="width: 120px; text-align: center;">
						<asp:Image ID="Image2" runat="server" Height="120px" Width="100px" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"userface") %>' />
						<br />
						<%# Eval("honeyname" )%>
						<br />
						<%#GetWorkProvince(Eval("workprovince").ToString()) %>
						<%#GetWorkCity(Eval("workcity").ToString()) %>
						<br />
						<a href="../../../Zone/ShowList.aspx?id=<%#Eval("UserID") %>">详细了解</a>
					</div>
				</li>
			</ItemTemplate>
		</asp:DataList>
		总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage" runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
		<asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;<asp:Label ID="FirstPage"
			runat="server"></asp:Label>
		<asp:Label ID="RePage" runat="server"></asp:Label>
		<asp:Label ID="NextPage" runat="server"></asp:Label>
		<asp:Label ID="EndPage" runat="server"></asp:Label>
	</ul>
</asp:Panel>
</div>
</body>
</html>
