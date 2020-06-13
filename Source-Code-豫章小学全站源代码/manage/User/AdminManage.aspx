<%@ page language="C#" autoeventwireup="true" inherits="ZoomLaManage.WebSite.Manage.User.AdminManage, App_Web_own0w3ym" title="管理员管理" tracemode="SortByCategory" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>管理员管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 用户管理 &gt;&gt; <a href="AdminManage.aspx">管理员管理</a><asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;<a href="AddManage.aspx<%=Getroleid() %>">[添加管理员]</a></div>
  <asp:GridView ID="Egv" runat="server" AllowPaging="True"   AutoGenerateColumns="False" CssClass="border" DataKeyNames="AdminID"  OnRowEditing="Egv_RowEditing" OnPageIndexChanging="Egv_PageIndexChanging" 
        OnRowCommand="Lnk_Click" OnRowDataBound="Egv_RowDataBound" Width="100%">
    <Columns>
    <asp:TemplateField HeaderText="选择">
      <ItemTemplate>
        <asp:CheckBox ID="chkSel" runat="server" />
      </ItemTemplate>
      <ItemStyle  HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:BoundField DataField="AdminId" HeaderText="ID">
      <ItemStyle  HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:TemplateField HeaderText="管理员状态" ItemStyle-HorizontalAlign="Center">
      <ItemTemplate> <%# ZoomLa.Common.DataConverter.CBool(DataBinder.Eval(Container, "DataItem.IsLock", "{0}")) ? "<span stytle='color:red;'>锁定</span>" : "正常"%> </ItemTemplate>
      <ItemStyle  HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:BoundField HeaderText="管理员名"　DataField="AdminName" ItemStyle-HorizontalAlign="Center">
      <ItemStyle  HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:BoundField DataField="AdminTrueName" HeaderText="管理员真实姓名"  ItemStyle-HorizontalAlign="Center"/>
    <asp:TemplateField HeaderText="多人登录" ItemStyle-HorizontalAlign="Center">
      <ItemTemplate> <%# ZoomLa.Common.DataConverter.CBool(DataBinder.Eval(Container, "DataItem.EnableMultiLogin", "{0}")) ? "<span stytle='color:red;'>允许</span>" : "不允许"%> </ItemTemplate>
      <ItemStyle  HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:BoundField HeaderText="最后登录IP" DataField="LastLoginIP" ItemStyle-HorizontalAlign="Center">
      <ItemStyle  HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:BoundField HeaderText="上次修改密码时间"　DataField="LastModifyPwdTime" ItemStyle-HorizontalAlign="Center">
      <ItemStyle  HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:BoundField HeaderText="登录次数" DataField="LoginTimes" ItemStyle-HorizontalAlign="Center">
      <ItemStyle  HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" >
      <ItemTemplate>
        <asp:LinkButton ID="LnkModify" CommandName="ModifyAdmin" CommandArgument='<%# Eval("AdminId")%>' runat="server">修改</asp:LinkButton>
        <asp:LinkButton ID="LnkDelete"  runat="server" CommandName="DeleteAdmin" OnClientClick="if(!this.disabled) return confirm('确实要删除此管理员吗？');" CommandArgument='<%# Eval("AdminId")%>'>删除</asp:LinkButton>
        <%--<asp:LinkButton ID="LnkCancel" CommandName="CancelAdmin" CommandArgument='<%# Eval("AdminId")%>' runat="server" OnClick="LnkCancel_Click">取消</asp:LinkButton>    --%>
      </ItemTemplate>
      <ItemStyle  HorizontalAlign="Center" />
    </asp:TemplateField>
    </Columns>
    <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
    <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
    <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
  </asp:GridView>
  <span style="text-align: center"> 共
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
  <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" ontextchanged="DropDownList1_TextChanged"></asp:DropDownList>
  页
  <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
  </span>
  <div class="clearbox"></div>
  <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
  <asp:Button ID="Button1" class="C_input" runat="server" Font-Size="9pt" Text="取消" OnClick="Button1_Click" />
  <asp:Button ID="Button2" class="C_input" runat="server" Font-Size="9pt" Text="批量删除" OnClick="Button2_Click"  OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定删除？')}" />
</form>
</body>
</html>