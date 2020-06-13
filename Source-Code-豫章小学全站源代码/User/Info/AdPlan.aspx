<%@ page language="C#" autoeventwireup="true" inherits="User_Info_AdPlan, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC>
<html>
<head id="Head1" runat="server">
<title>广告计划</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a> &gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="广告计划" href="AdPlan.aspx">广告计划</a>&nbsp;<a href="AdPlanAdd.aspx">[申请广告]</a> </div>
  <div id="nocontent" runat="server" style="margin-top:10PX;">暂无版位信息</div>
  <div class="adplan">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ZoneID" Width="100%" AllowPaging="True" OnRowCommand="Lnk_Click" CssClass="border" OnRowDataBound="GridView1_RowDataBound" EnableModelValidation="True">
      <Columns>
      <asp:BoundField HeaderText="ID" DataField="ID">
        <ItemStyle Width="3%" HorizontalAlign="Center" Wrap="False" />
      </asp:BoundField>
      <asp:TemplateField HeaderText="版位名称">
        <HeaderStyle Width="8%" />
        <ItemTemplate> <%# SetZoomName(Eval("ADID", "{0}"))%> </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" Wrap="False" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="投放时间">
        <ItemTemplate>
          <asp:HyperLink ID="LnkTime" ToolTip='<%# SetTime(Eval("Ptime", "{0}"))%>' runat="server"><%# SetTime(Eval("Ptime", "{0}"))%></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle Width="8%" HorizontalAlign="Center" Wrap="True" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="计划费用">
        <HeaderStyle Width="10%" />
        <ItemTemplate> <%#priceType(Eval("Price", "{0}"))%> </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" Wrap="False" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="广告附件">
        <HeaderStyle Width="10%" />
        <ItemTemplate> <%#LnkFiles(Eval("Files", "{0}"))%> </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" Wrap="True" />
      </asp:TemplateField>
      <asp:BoundField HeaderText="申请时间" DataField="Time" DataFormatString="{0:d}">
        <ItemStyle Width="7%" HorizontalAlign="Center" Wrap="True" />
      </asp:BoundField>
      <asp:TemplateField HeaderText="操作">
        <HeaderStyle />
        <ItemTemplate> <a href='AdPlanAdd.aspx?id=<%# Eval("ID") %>'>修改</a>
        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("ID") %>'>取消申请</asp:LinkButton>
        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="AddAdv" CommandArgument='<%# Eval("ID") %>'>支付费用</asp:LinkButton>
        </ItemTemplate>
        <ItemStyle Width="10%" HorizontalAlign="Center" Wrap="True" />
      </asp:TemplateField>
      </Columns>
      <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
      <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
      <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
      <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
      <PagerSettings FirstPageText="" LastPageText="" Mode="NextPrevious" NextPageText="" PreviousPageText="" Visible="False" />
    </asp:GridView>
  </div>
  <div style="text-align: center" class="tdbg"> <span style="text-align: center">共
    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
    条数据
    <asp:Label ID="Toppage" runat="server" Text="" />
    <asp:Label ID="Nextpage" runat="server" Text="" />
    <asp:Label ID="Downpage" runat="server" Text="" />
    <asp:Label ID="Endpage" runat="server" Text="" />
    页次：
    <asp:Label ID="Nowpage" runat="server" Text="" />
    /
    <asp:Label ID="PageSize" runat="server" Text="" />
    页
    <asp:Label ID="pagess" runat="server" Text="" />
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
    条数据/页 转到第
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
    页
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
    </span></div>
</form>
</body>
</html>
<script language="javascript" type="text/javascript">
    function show() {
        window.open(id, "tupian", false, true);
    }
</script>
<script src="../../JS/pacalendar.js"></script>