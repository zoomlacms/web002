<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_File_SelectPigeonhole, App_Web_zscwa44e" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>归档信息查询</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/RiQi.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
  <div class="column">
    <div class="columntitle">当前位置：功能导航 >><a href="SelectPigeonhole.aspx">归档信息查询</a></div>
    <table>
      <tr>
        <td><b>时间：</b></td>
        <td>从
          <asp:TextBox ID="txtStateTime" runat="server"  onclick="setday(this)"></asp:TextBox>
          &nbsp;到
          <asp:TextBox ID="txtEndTime" runat="server"  onclick="setday(this)"></asp:TextBox>
          &nbsp; </td>
        <td>目标：
          <asp:DropDownList ID="txtbyfilde" runat="server" > </asp:DropDownList></td>
        <td>&nbsp;关键字：
          <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox></td>
        <td><asp:Button ID="Button4" CssClass="button" runat="server" Text="查 找"  Width="48px" onclick="Button4_Click" />&nbsp; </td>
      </tr>
    </table>
  </div>
  <div class="column">
    <div class="columntitle"> 当前位置：功能导航 >> 内容列表</div>
    <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="GeneralID" HeaderStyle-BackColor="#F0F6FC" FooterStyle-BorderColor="White" PageSize="20" Width="100%" BorderStyle="None">
      <Columns>
      <asp:TemplateField HeaderText="选择" ItemStyle-BackColor="White">
        <ItemTemplate>
          <asp:CheckBox ID="chkSel" runat="server" />
        </ItemTemplate>
        <HeaderStyle Width="5%" />
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:BoundField HeaderText="ID" DataField="GeneralID" ItemStyle-BackColor="White">
        <HeaderStyle Width="5%" />
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:BoundField>
      <asp:TemplateField HeaderText="标题" ItemStyle-BackColor="White" ItemStyle-HorizontalAlign="Left">
        <ItemTemplate> <%# GetPic(Eval("ModelID", "{0}"))%> <%# GetTitle(Eval("GeneralID", "{0}"), Eval("NodeID", "{0}"), Eval("Title", "{0}"), Eval("ModelID", "{0}"))%> </ItemTemplate>
        <HeaderStyle Width="35%" />
        <ItemStyle CssClass="tdbg" />
      </asp:TemplateField>
      <asp:BoundField HeaderText="点击数" DataField="Hits" ItemStyle-BackColor="White">
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
        <HeaderStyle Width="8%" />
      </asp:BoundField>
      <asp:TemplateField HeaderText="推荐" ItemStyle-BackColor="White">
        <ItemTemplate> <%# GetElite(Eval("EliteLevel", "{0}")) %> </ItemTemplate>
        <HeaderStyle Width="10%" />
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="状态" ItemStyle-BackColor="White">
        <ItemTemplate> <%# GetStatus(Eval("Status", "{0}")) %> </ItemTemplate>
        <HeaderStyle Width="10%" />
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="已生成" ItemStyle-BackColor="White">
        <ItemTemplate> <%# GetCteate(Eval("IsCreate", "{0}"))%> </ItemTemplate>
        <HeaderStyle Width="6%" />
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:TemplateField>
      </Columns>
      <PagerSettings Visible="False" />
      <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
      <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
      <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
      <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" BorderColor="White" />
    </asp:GridView>
    <br />
    共
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
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true"  ontextchanged="txtPage_TextChanged" Width="30px"></asp:TextBox>
    条数据/页 转到第
    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True"  onselectedindexchanged="DropDownList3_SelectedIndexChanged"> </asp:DropDownList>
    页
    <asp:RangeValidator ID="RangeValidator1" runat="server"  ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer"  MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
    <br />
  </div>
</form>
</body>
</html>