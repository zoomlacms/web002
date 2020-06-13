<%@ page language="C#" autoeventwireup="true" inherits="Space_SpaceManage, App_Web_ah0qphei" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我的聚合页</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <div class="us_topinfo" style="width:97%">
    <div class="us_pynews">
      <span class="us_showinfo1"></span> 您现在的位置：<span id="Span1"><span><a title="网站首页" href="/" target="_blank">
        <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
        </a></span><span> &gt;&gt; </span><span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span> &gt;&gt; </span><span><a title="修改密码" href="SpaceManage.aspx">我的聚合</a></span></span>
    </div>
    <div class="cleardiv"> </div>
  </div>
  <div class="us_topinfo" style="width:97%">
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
      <tr class="tdbg">
        <td align="left" style="width: 8%"><a href="SpaceManage.aspx">所有内容</a></td>
        <td align="left" style="width: 80%"> 聚合分类：
          <asp:Label ID="lblLabel" runat="server" Text="Label"></asp:Label></td>
        <td style="width: 8%"><a href="" target="_blank" runat="server" id="a1">聚合首页</a></td>
      </tr>
    </table>
  </div>
  <div class="cleardiv"> </div>
  <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="GeneralID" PageSize="10" OnRowCommand="Lnk_Click" Width="97%" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="Egv_RowDataBound"  >
    <Columns>
    <asp:TemplateField HeaderText="选择">
      <ItemTemplate>
        <asp:CheckBox ID="chkSel" runat="server" />
      </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:BoundField DataField="GeneralID" HeaderText="ID">
      <HeaderStyle Width="6%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:TemplateField HeaderText="标题">
      <HeaderStyle Width="40%" />
      <ItemTemplate> <a href='/User/Content/ShowPubList.aspx?ID=<%# Eval("GeneralID") %>'> <%# Eval("Title")%></a> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="状态">
      <ItemTemplate> <%# GetStatus(Eval("Status", "{0}")) %> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="已生成">
      <ItemTemplate> <%# GetCteate(Eval("IsCreate", "{0}"))%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="操作">
      <ItemTemplate> <a href='/User/Content/ShowPubList.aspx?ID=<%# Eval("GeneralID") %>'>预览</a>&nbsp;&nbsp;<a href="<%# GetUrl(Eval("GeneralID", "{0}"))%>" target="_blank">访问</a>
        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("GeneralID") %>'>修改</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("GeneralID") %>' OnClientClick="return confirm('你确定将该数据删除到回收站吗？')"><%# GetIsDe(Eval("Status", "{0}")) %></asp:LinkButton>
      </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <RowStyle BackColor="#EFF3FB" Height="25px" />
    <EditRowStyle BackColor="#2461BF" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <AlternatingRowStyle BackColor="White" />
  </asp:GridView>
  <table width="100%">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbg" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="选中本页显示的所有项目" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        条信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：
        <asp:Label ID="Nowpage" runat="server" Text="" />
        /
        <asp:Label ID="PageSize" runat="server" Text="" />
        页
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged" Width="30px"></asp:TextBox>
        条信息/页 转到第
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"> </asp:DropDownList>
        页
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" Text="迁移分类" OnClientClick="if(!IsSelectedId()){alert('未选中任何内容');return false;}"  onclick="Button1_Click" />
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        <asp:HiddenField ID="HiddenField1" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</html>
