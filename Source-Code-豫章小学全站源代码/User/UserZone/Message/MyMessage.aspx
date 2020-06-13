<%@ page language="C#" autoeventwireup="true" inherits="FreeHome.User.MyMessage, App_Web_livfcz13" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的留言板</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript">
	function refpage(ret) {
		if (typeof (ret) != "undefined") {
			window.document.getElementById("<%=this.HiddenField1.ClientID %>").value = ret;
			document.form1.submit();
		}
	}
</script>
<script type="text/javascript" language="javascript" src="../Common/common.js"></script>
<script type="text/javascript" language="javascript" src="../Common/subModal.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent">会员中心</a>&gt;&gt; 我的留言板
</div>
<div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
</div>
<br />
<div class="us_topinfo">
<table width="100%" height="91" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td valign="top" style="width: 100%">
		<asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Horizontal"
			Width="100%" OnItemDataBound="DataList1_ItemDataBound" DataKeyField="ID">
			<ItemTemplate>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td align="center" rowspan="3">
							<asp:Image ID="Image1" runat="server" Height="96px" Width="96px" ImageUrl='<%# getuserpic(DataBinder.Eval(Container.DataItem, "SendID").ToString())%>' />
						</td>
						<td width="84%" style="height: 31px">
							<asp:LinkButton ID="lbDelete" runat="server" CausesValidation="False" OnClick="lbtsave_Click"
								Visible='<%# getDelV(DataBinder.Eval(Container.DataItem, "SendID").ToString())%>'
								OnClientClick="return  confirm('你确定要删除这个留言吗？')">[删除]</asp:LinkButton>&nbsp;<%#getusername(DataBinder.Eval(Container.DataItem, "SendID").ToString())%>留言道:
						</td>
					</tr>
					<tr>
						<td valign="top" style="white-space: normal">
							&nbsp;<%# DataBinder.Eval(Container.DataItem, "Mcontent")%>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;<a href="javascript:showPopWin('回复留言','MessageRestore.aspx?rID=<%# DataBinder.Eval(Container.DataItem, "ID")%>&Math.random()',400,200, refpage,true)">回复</a>
						</td>
					</tr>
					<tr>
						<td align="center" valign="top" style="width: 152px" class="trr">
							&nbsp;
						</td>
						<td class="trr">
							<asp:DataList ID="DataList2" runat="server" RepeatColumns="1" RepeatDirection="Horizontal"
								Width="100%" DataKeyField="ID">
								<ItemTemplate>
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td class="trr">
												&nbsp;
												<asp:LinkButton ID="lbDelete" runat="server" CausesValidation="False" OnClick="lbDelete_Click"
													OnClientClick="return  confirm('你确定要删除这个留言吗？')">[删除]</asp:LinkButton><%#getusername(DataBinder.Eval(Container.DataItem, "SendID").ToString())%>的回复<br />
												&nbsp;&nbsp;&nbsp;&nbsp;<%# DataBinder.Eval(Container.DataItem, "Mcontent")%>
											</td>
										</tr>
									</table>
								</ItemTemplate>
							</asp:DataList>
						</td>
					</tr>
				</table>
			</ItemTemplate>
		</asp:DataList>
	</td>
</tr>
<tr>
	<td align="center">
		共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
		<asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
		<asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
		<asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
		<asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
		页次：
		<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>
		/
		<asp:Label ID="PageSize" runat="server" Text=""></asp:Label>
		页
		<asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页 转到第<asp:DropDownList
			ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
		</asp:DropDownList>
		页
	</td>
</tr>
<tr>
	<td>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td align="center">
					内容:
				</td>
				<td>
					<textarea cols="50" rows="5" id="TEXTAREA1" runat="server"></textarea>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TEXTAREA1"
						ErrorMessage="不能为空"></asp:RequiredFieldValidator>
					<asp:HiddenField ID="HiddenField1" runat="server" OnValueChanged="HiddenField1_ValueChanged" />
				</td>
			</tr>
			<tr>
				<td align="center">
				</td>
				<td>
					<asp:Button ID="savebtn" runat="server" Height="28px" Text="留  言" Width="98px" OnClick="savebtn_Click" />
				</td>
			</tr>
		</table>
	</td>
</tr>
</table>
</div>
</form>
</body>
</html>