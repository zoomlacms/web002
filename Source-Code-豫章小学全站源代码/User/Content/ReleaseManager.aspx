<%@ page language="C#" autoeventwireup="true" inherits="User_Content_ReleaseManager, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE>
<html>
<head>
<title>竞标管理</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../App_Themes/UserThem/bidding.css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
</head>
<body>
<div class="us_pynews">
<form id="form1" runat="server">
<div class="us_seta">
 <asp:GridView ID="Egv" runat="server" AllowPaging="False" AutoGenerateColumns="False"
		DataKeyNames="GeneralID" OnPageIndexChanging="Egv_PageIndexChanging"
		OnRowCommand="Lnk_Click" Width="100%" CellPadding="4" ForeColor="#333333" 
        GridLines="None" OnRowDataBound="Egv_RowDataBound" 
        EnableModelValidation="True"  >
		<Columns>
			<asp:BoundField DataField="GeneralID" HeaderText="ID">
				<HeaderStyle Width="6%" />
				<ItemStyle HorizontalAlign="Center" />
			</asp:BoundField>
			<asp:TemplateField HeaderText="标题">
				<HeaderStyle Width="50%" />
				<ItemTemplate>
						<%# ZoomLa.Common.BaseClass.Htmlcode(Eval("Title","{0}"))%> 
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="操作">
				<ItemTemplate>
					<a href="../../Comments/CommentFor.aspx?ID=<%#Eval("GeneralID","{0}") %>" target="_blank">访问</a>                                
				</ItemTemplate>
				<ItemStyle HorizontalAlign="Center" />
			</asp:TemplateField>
		    <asp:TemplateField HeaderText="竞标管理">
                <ItemTemplate>
                     <%# GetRelease(Eval("GeneralID","{0}"),Eval("Title","{0}")) %> 
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
		</Columns>
		<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
		<RowStyle BackColor="#f6fdf6" Height="25px" />
		<EditRowStyle BackColor="#2461BF" />
		<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
		<%--<PagerStyle HorizontalAlign="Center" />--%>
		<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
		<%--<AlternatingRowStyle BackColor="#f6fdf6" />--%>
	</asp:GridView> 
      <div class="tdbg">
<div align="center" class="tdbgleft">
共
<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
个信息
<asp:Label ID="Toppage" runat="server" Text="" />
<asp:Label ID="Nextpage" runat="server" Text="" />
<asp:Label ID="Downpage" runat="server" Text="" />
<asp:Label ID="Endpage" runat="server" Text="" />
页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
<asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
</asp:DropDownList>
页<asp:HiddenField ID="HdnItemID" runat="server" /><asp:HiddenField ID="HdnTitle" runat="server" />
</div>
	<asp:HiddenField ID="HiddenField1" runat="server" />
	<asp:HiddenField ID="HiddenField2" runat="server" />
    <asp:HiddenField ID="HiddenField3" runat="server" />
</div>
</div>
</form>
</div>
</body>
</html>
