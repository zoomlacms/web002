<%@ page language="C#" autoeventwireup="true" inherits="User_BidList, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>中标</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link  rel="stylesheet" type="text/css" href="../App_Themes/UserThem/bidding.css" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../JS/Drag.js"></script>
<script type="text/javascript" src="../JS/Dialog.js"></script>
</head>
<body>
<form id="form1" runat="server">  
<div class="us_topinfo">  
 您现在的位置：<a title="网站首页" href="/" target="_blank"> <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt; <a title="网站首页" href="/" target="_blank"> <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; <asp:Label ID="lbl" runat="server" Text=""></asp:Label></a>
</div>

  <div class="us_seta" style="margin-top:5px;">
    <h1 align="center">
      <asp:Label ID="LblTitle" runat="server" Text=""></asp:Label>
    </h1>
    <div><span lang="zh-cn">&nbsp;&nbsp; </span>
      <div style=" float:left">
        <asp:DropDownList ID="DDList" runat="server" AutoPostBack="True">
          <asp:ListItem Value="0">所有</asp:ListItem>
          <asp:ListItem Value="1">我的中标</asp:ListItem>
          <asp:ListItem Value="2">我的达标</asp:ListItem>
        </asp:DropDownList>
      </div>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" AllowPaging="True">
        <Columns>
        <asp:TemplateField HeaderText="选择" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="center"> 　
          <ItemTemplate>
            <asp:CheckBox ID="cheCk" runat="server" />
          </ItemTemplate>
          <HeaderStyle Width="5%"></HeaderStyle>
          <ItemStyle HorizontalAlign="Center"></ItemStyle>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="主题">
          <ItemTemplate>
            <asp:HyperLink ID="Title" ToolTip='<%# Eval("PubContentid")%>' NavigateUrl='<%#GetUrl(Eval("PubContentid","{0}"),Eval("pubupid","{0}"))%>' runat="server" ><%#GetTitle(Eval("PubContentid","{0}"))%></asp:HyperLink>
          </ItemTemplate>
          <ItemStyle  Width="40%" HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="参与人数">
          <ItemTemplate> <%#GetPeoCount(Eval("pubupid","{0}"))%> </ItemTemplate>
          <HeaderStyle Width="10%" />
          <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:BoundField DataField="PubAddTime" HeaderText="日期" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="center" >
          <HeaderStyle Width="15%"></HeaderStyle>
          <ItemStyle HorizontalAlign="Center"></ItemStyle>
        </asp:BoundField>
        <asp:TemplateField HeaderText="状态">
          <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# GetBid(Eval("Optimal","{0}")) %>'></asp:Label>
          </ItemTemplate>
          <EditItemTemplate>
            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Optimal") %>'></asp:TextBox>
          </EditItemTemplate>
          <HeaderStyle Width="10%" />
          <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="" LastPageText="" Mode="NextPrevious" 
        NextPageText="" PreviousPageText="" Visible="False" />
      </asp:GridView>
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
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox>
        条数据/页 转到第
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
        页
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </span> </div>
      <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" Text="全选" oncheckedchanged="CheckBox2_CheckedChanged" />
      <asp:Button ID="Button1" runat="server" class="i_bottom" Font-Size="9pt" Text="取消" OnClick="Button1_Click" />
    </div>
  </div>
</form>
</body>
</html>