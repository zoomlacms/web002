<%@ page language="C#" autoeventwireup="true" inherits="User.UserManage, App_Web_tskucmgh" title="会员管理" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员管理</title>
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/main.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/index.css" />
<script src="../../JS/calendar.js" type="text/javascript"></script>
<script type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script type="text/javascript" src="/JS/Popmenu.js"></script>
<script type="text/javascript" src="../../JS/Drag.js"></script>
<script type="text/javascript" src="../../JS/Dialog.js"></script>
<script type="text/javascript" src="../../JS/jquery.js"></script>
<script type="text/javascript">
    function open_title() {
        var diag = new Dialog();
        diag.Width = 800;
        diag.Height = 600;
        diag.Title = "添加会员[ESC键退出当前操作]";
        diag.URL = "AddUser.aspx";
        diag.show();
    }

    function inputuserinfo() {
        var diag = new Dialog();
        diag.Width = 800;
        diag.Height = 600;
        diag.Title = "导入会员[ESC键退出当前操作]";
        diag.URL = "InputUser.aspx";
        diag.show();
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation"> 后台管理 &gt;&gt; <a href="AdminManage.aspx">用户管理</a> &gt;&gt;<a href="UserManage.aspx">会员管理</a><asp:Label ID="LblGroup" runat="server" Text="Label"></asp:Label><span class="red">[<asp:Label ID="lblAddUser" runat="server" Text=""></asp:Label>]</span> </div>
  <div class="border">
    <ul>
      <li class="tdbg">
        <div style="display:none"> 选择等级：
          <asp:DropDownList ID="SelectGroup" runat="server" CssClass="x_input"> </asp:DropDownList>
          <asp:Button ID="Rank" runat="server" Text="设置等级" CssClass="C_input"  onclick="Rank_Click" />
        </div>
      </li>
    </ul>
  </div>
  <div class="clearbox"></div>
  <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;" width="100%">
    <tr>
      <td class="spacingtitle" align="center">会员管理</td>
    </tr>
    <tr class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"  CssClass="text">
          <asp:ListItem Value="1" Selected="True">按会员组查找</asp:ListItem>
          <asp:ListItem Value="2">按登陆日期查找</asp:ListItem>
        </asp:DropDownList>
        <strong id="strtime" runat="server" visible="false">
        <asp:TextBox ID="txtSteatTime" runat="server" Width="102px" onclick="calendar()" class="l_input"></asp:TextBox>
        到
        <asp:TextBox ID="txtEndTime" runat="server" Width="102px" onclick="calendar()" class="l_input"></asp:TextBox>
        </strong> <strong id="strgroup" runat="server" visible="true">
        <asp:DropDownList ID="ddlGroup" runat="server" DataTextField="GroupName" DataValueField="GroupID" CssClass="x_input"> </asp:DropDownList>
        </strong>
        <asp:Button ID="Button1" runat="server" Text="查  找" OnClick="Button1_Click1"  Width="62px" class="C_input" />
        &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="x_input">
          <asp:ListItem Selected="True" Value="4">会员名</asp:ListItem>
          <asp:ListItem Value="3">ID</asp:ListItem>
          <asp:ListItem Value="5">Email</asp:ListItem>
        </asp:DropDownList>
        <strong id="IdUser" runat="server" visible="true">
        <asp:TextBox ID="IDName" runat="server" Width="70px" EnableTheming="true" class="l_input"></asp:TextBox>
        </strong>
        <asp:Button ID="Button2" runat="server" Text="搜  索" class="C_input"  OnClick="Button2_Click" Width="63px" />
         
        <%--<asp:Button ID="Advanced" runat="server" Text="搜索高级" CssClass="C_input" onclick="Advanced_Click" />--%>
        <asp:HiddenField ID="HiddenField1" runat="server"  onvaluechanged="HiddenField1_ValueChanged" />
        选择过期：
        <asp:TextBox ID="txtdate" runat="server" Text="" onclick="calendar();" Width="20%" class="l_input"> </asp:TextBox>
        <asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif" ToolTip="鼠标点击左边输入框出现时间选择框" />
        <asp:Button ID="Expired" runat="server" Text="设置服务过期" CssClass="C_input" OnClientClick="if(!IsSelectedId()){alert('未选中任何内容');return false;}" onclick="Expired_Click" />
        &nbsp;<asp:DropDownList ID="Province" runat="server"  CssClass="x_input" 
              onselectedindexchanged="Province_SelectedIndexChanged" AutoPostBack="true"> </asp:DropDownList></td>
    </tr>
  </table>
  <div class="clearbox"></div>
  <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" CssClass="border"
        DataKeyNames="UserID" OnRowCommand="Lnk_Click" Width="100%" AllowSorting="true"
        OnSorting="Egv_Sorting" OnRowDataBound="Egv_RowDataBound" GridLines="None" 
        RowStyle-CssClass="tdbg" CellPadding="2" CellSpacing="1" 
        onselectedindexchanged="Egv_SelectedIndexChanged">
    <Columns>
    <asp:TemplateField>
      <ItemTemplate>
        <asp:CheckBox ID="chkSel" runat="server" />
      </ItemTemplate>
      <HeaderStyle Width="3%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:BoundField DataField="UserID" HeaderText="ID" SortExpression="UserID">
      <ItemStyle HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:TemplateField HeaderText="会员名">
      <ItemTemplate> <a href="UserInfo.aspx?id=<%# Eval("UserID") %>">
        <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
        </a> </ItemTemplate>
      <HeaderStyle Width="8%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="会员组">
      <ItemTemplate> <a href="UserManage.aspx?GroupID=<%#Eval("GroupID","{0}") %>"><%# GetGroupName(Eval("GroupID","{0}")) %></a> </ItemTemplate>
      <HeaderStyle Width="8%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:BoundField DataField="Purse" HeaderText="资金余额" DataFormatString="{0:F2}">
      <HeaderStyle Width="8%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:BoundField DataField="RegTime" HeaderText="注册时间" SortExpression="RegTime" DataFormatString="{0:yyyy-MM-dd}">
      <HeaderStyle Width="10%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:BoundField DataField="UserExp" HeaderText="积分">
      <HeaderStyle Width="5%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:BoundField DataField="LoginTimes" HeaderText="登录次数" SortExpression="LoginTimes">
      <HeaderStyle Width="7%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:BoundField DataField="LastLockTime" HeaderText="最后登录时间" SortExpression="LastLockTime">
      <HeaderStyle Width="12%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:TemplateField HeaderText="状态">
      <ItemTemplate> <%# GetStatus(Eval("Status","{0}")) %> </ItemTemplate>
      <HeaderStyle Width="7%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="聚合认证">
      <ItemTemplate>
        <asp:Label ID="lblState" runat="server" Visible="false" Text ='<%# GetState(Eval("State", "{0}"))%>'></asp:Label>
        <%# GetState(Eval("State", "{0}"))%> </ItemTemplate>
      <HeaderStyle Width="8%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="操作">
      <ItemTemplate> <a href='UserSitePermission.aspx?uid=<%# Eval("UserID")%>'>权限</a><a href='UserConfirm.aspx?uid=<%#Eval("UserID") %>&IsConfirm=<%#Eval("IsConfirm") %>'><%# GetConfirm(Eval("GroupID").ToString())%></a>|<a href="javascript:void(0)" onclick="javascript:window.open('../../Space/Default.aspx?id=<%# Eval("UserID")%>')"><%=Getspacename() %></a>|<a href='CertificateAuditInfo.aspx?UserID=<%# Eval("UserID")%>'>证书审核</a> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    </Columns>
    <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
    <HeaderStyle CssClass="title" Font-Bold="True" BorderStyle="None" Height="30px" Font-Overline="False" />
  </asp:GridView>
  
  <span id="Fy" style="text-align: center" runat="server">共
  <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
  条数据
      <asp:LinkButton ID="Toppage" runat="server" onclick="Toppage_Click">首页</asp:LinkButton>&nbsp;
      <asp:LinkButton ID="Nextpage" runat="server" onclick="Nextpage_Click">上一页</asp:LinkButton>&nbsp;
      <asp:LinkButton ID="Downpage" runat="server" onclick="Downpage_Click">下一页</asp:LinkButton>&nbsp;
      <asp:LinkButton ID="Endpage" runat="server" onclick="Endpage_Click">尾页</asp:LinkButton>&nbsp;
  &nbsp;页次：
  <asp:Label ID="Nowpage" runat="server" Text="" />
  /
  <asp:Label ID="PageSize" runat="server" Text="" />
  页
  <asp:Label ID="pagess" runat="server" Text="" />
  <asp:TextBox ID="txtPage" name="page" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px"  OnTextChanged="txtPage_TextChanged">10</asp:TextBox>
  条数据/页 转到第
  <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
    onselectedindexchanged="DropDownList3_SelectedIndexChanged"> </asp:DropDownList>
  页
  <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
  </span> <br />
  <asp:CheckBox ID="cbAll" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="cbAll_CheckedChanged" Text="全选" />
  <asp:DropDownList ID="UserGroup" runat="server"> </asp:DropDownList>
  <asp:Button ID="GroupMove" runat="server" Text="批量移动" OnClick="GroupMove_Click" OnClientClick="if(!IsSelectedId()){alert('未选中任何内容');return false;}"  class="C_input" />
  <asp:Button ID="Enable" runat="server" Text="启用" OnClientClick="if(!IsSelectedId()){alert('未选中任何内容');return false;}"  CssClass="C_input" onclick="btnCan_Click" />
  <asp:Button ID="Disable" runat="server" Text="禁用" OnClientClick="if(!IsSelectedId()){alert('未选中任何内容');return false;}"  CssClass="C_input"  onclick="btnLock_Click" />
  <asp:Button ID="RenoVate" runat="server" Text="刷新用户" CssClass="C_input" OnClientClick="if(!IsSelectedId()){alert('未选中任何内容');return false;}" onclick="RenoVate_Click" />
  <asp:Button ID="Approve" runat="server" Text="认证用户" OnClientClick="if(!IsSelectedId()){alert('未选中任何内容');return false;}"  CssClass="C_input" onclick="Approve_Click" />
  <asp:Button ID="ApproveFailure" runat="server" Text="取消认证" OnClientClick="if(!IsSelectedId()){alert('未选中任何内容');return false;}"  CssClass="C_input" onclick="ApproveFailure_Click" />
  <asp:Button ID="btnLock" runat="server" Text="批量锁定" OnClick="btnLock_Click" OnClientClick="if(!IsSelectedId()){alert('未选中任何内容');return false;}"  class="C_input" />
  <asp:Button ID="btnDel" runat="server" Text="批量删除" OnClick="btnDel_Click" OnClientClick="if(!IsSelectedId()){alert('未选中任何内容');return false;}else{return confirm('你确定要删除选中内容吗？')}" class="C_input" />
  <asp:Button ID="btnNormal" runat="server" Text="批量解锁" OnClick="btnNormal_Click" OnClientClick="if(!IsSelectedId()){alert('未选中任何内容');return false;}"  class="C_input" />
  <asp:Button ID="Export" runat="server" Text="导出到EXCEL" CssClass="C_input"  onclick="Export_Click" />
  <input class="C_input" type="button" onclick="inputuserinfo()" value="EXCEL导入" />
  <input class="C_input" type="button" onclick="javascript:kingdee()" value="导入K3" />
  <asp:HiddenField ID="HdnGroupID" runat="server" />
</form>
</body>
</html>
<script type="text/javascript">
    function kingdee() {
        $.ajax({
            url: "/AddUser.aspx",
            data: "t=" + new Date(),
            success: function (msg) {
                alert(msg);
            },
            error: function (msg) {
                alert("导入失败");
            }
        });
    }
</script>