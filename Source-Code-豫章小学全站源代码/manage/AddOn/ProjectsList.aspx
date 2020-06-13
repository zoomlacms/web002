<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_ProjectsList, App_Web_pq3hbfoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>项目列表</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
<span class="us_pynews">您现在的位置：<span	id="YourPosition"><span><a title="网站首页" href="/" target="_parent"> <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
  </a></span><span> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a></span>&gt;&gt; <span><span>查看项目</span> </span>
</div>
  <div class="us_seta" style="margin-top:5px;">
    <h1 align="center">
      <asp:Label ID="LblTitle" runat="server" Text="查看项目"></asp:Label>
    </h1>
  </div>
  <div style="width:100%">
    <div style="float:left">按照要求查看项目：
      <asp:DropDownList ID="DDListSearch" runat="server" AutoPostBack="True">
        <asp:ListItem Value="0">查看全部</asp:ListItem>
        <asp:ListItem Value="1">我的项目</asp:ListItem>
        <asp:ListItem Value="2">未审核的项目</asp:ListItem>
        <asp:ListItem Value="3">已经审核的项目</asp:ListItem>
      </asp:DropDownList>
    </div>
    <div style="float:left"> <a href="ProjectsList.aspx">列表显示</a> <a href="ProjectsView.aspx">标签显示</a> </div>
    <div style="float:right">根据项目名称查询项目：
      <asp:TextBox ID="TxtSearch" runat="server" class="l_input"></asp:TextBox>
      <asp:Button ID="BtnSearch" Text="搜索" class="C_input" runat="server" onclick="BtnSearch_Click"/>
    </div>
  </div>
  <table width="100%"  cellpadding="0" cellspacing="1" class="border" border="0">
    <tbody>
      <tr align="center" style="height:25px; font-weight:bold; color:Green; background-color:BlanchedAlmond">
        <td width="4%">ID</td>
        <td width="30%">项目名称</td>
        <td width="13%">项目类型</td>
        <td width="8%">审核状态</td>
        <td width="18%">申请时间</td>
        <td width="28%">操作</td>
      </tr>
      <asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand">
        <ItemTemplate>
          <tr height="30px" class="us_menu" align="center" style="background-color:#DEDFDE">
            <td><%# Eval("ID","{0}")%></td>
            <td><a href="UserAddUpdateProject.aspx?ID=<%# Eval("ID","{0}")%>"><%# Eval("Name")%></a></td>
            <td><%# GetProType(Eval("TypeID","{0}")) %></a></td>
            <td><%# GetAudit(Eval("AuditStatus","{0}"))%></td>
            <td><%# Eval("ApplicationTime")%></td>
            <td><asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("ID")%>' CommandName="manage">查看编辑</asp:LinkButton>
              &nbsp;|
              <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("ID")%>' CommandName="del" OnClientClick="if(!this.disabled) return confirm('确实要删除吗？');" Enabled=<%#GetDel(Eval("UserID","{0}")) %>>删除</asp:LinkButton>
              &nbsp;|
              <asp:LinkButton ID="LbtnComments" runat="server" CommandArgument='<%# Eval("ID")%>' CommandName="Comments" Enabled='<%#GetBool(Eval("ProStatus","{0}")) %>'>评论</asp:LinkButton></td>
          </tr>
        </ItemTemplate>
      </asp:Repeater>
    </tbody>
  </table>
</form>
</body>
</html>
