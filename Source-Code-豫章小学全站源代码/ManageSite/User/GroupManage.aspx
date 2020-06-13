<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.User.GroupManage, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>会员组管理</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
 <div class="column">
        <div class="columntitle">
        当前位置：功能导航 >> 
            <a href="GroupManage.aspx">会员组管理</a>&nbsp&nbsp&nbsp&nbsp&nbsp【<a href="Group.aspx" style="color:Red">添加会员组</a>】</div>
<div id="nocontent" runat="server">暂无会员组</div>
<asp:GridView ID="Gdv" runat="server" DataKeyNames="GroupID" PageSize="20" OnRowDataBound="Egv_RowDataBound" OnPageIndexChanging="Gdv_PageIndexChanging" OnRowCommand="Lnk_Click" Width="100%" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField HeaderText="ID" DataField="GroupID" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
        <HeaderStyle Width="3%" />
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="会员组名"  HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
        <HeaderStyle Width="15%" />
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
        <ItemTemplate>
         <a href="Group.aspx?id=<%# Eval("GroupID","{0}")%>"><%# Eval("GroupName")%></a>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField HeaderText="会员组说明" DataField="Description" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
        <HeaderStyle Width="20%" />
        <ItemStyle CssClass="tdbg" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="注册可选" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
          <HeaderStyle Width="7%" />
          <ItemTemplate>
              <%# GetReg(Eval("RegSelect").ToString()) %>
          </ItemTemplate>
          <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="默认" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
          <HeaderStyle Width="5%" />
          <ItemTemplate>
              <%# GetDefault(Eval("IsDefault").ToString())%>
          </ItemTemplate>
          <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
        </asp:TemplateField> 
        <asp:TemplateField HeaderText="会员数" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
          <HeaderStyle Width="8%" />
          <ItemTemplate>
              
          </ItemTemplate>
          <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
        </asp:TemplateField>       
        <asp:TemplateField HeaderText="设置" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
            <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Default" CommandArgument='<%# Eval("GroupID") %>'>默认</asp:LinkButton> |
            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("GroupID") %>'>修改</asp:LinkButton> |
            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("GroupID") %>'>删除</asp:LinkButton> | 
            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Permission" CommandArgument='<%# Eval("GroupID") %>'>权限</asp:LinkButton> |           
            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Model" CommandArgument='<%# Eval("GroupID") %>'>模型</asp:LinkButton> |
            <asp:LinkButton ID="LinkButton6" runat="server" CommandName="View" CommandArgument='<%# Eval("GroupID") %>'>会员列表</asp:LinkButton> 
            </ItemTemplate>            
            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
        </asp:TemplateField>        
    </Columns>
    <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
    <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
    <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
</asp:GridView>
</div>
</form>
</body>
</html>
