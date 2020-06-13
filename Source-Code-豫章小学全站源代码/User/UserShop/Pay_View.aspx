<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_Pay_View, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>浏览支付平台</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label">逐浪CMS</asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent"> 会员中心</a>&gt;&gt;浏览支付平台<a title="添加支付平台" href="Pay_Add.aspx">[添加支付平台]</a>
</div>
<asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PayPlatID" PageSize="20" OnRowDataBound="Egv_RowCreated" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" Width="100%">
    <Columns>
        <asp:BoundField HeaderText="ID"　DataField="PayPlatID" Visible="false" >
            <HeaderStyle Width="5%" />
            <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField HeaderText="名称"　DataField="PayPlatName" >
            <HeaderStyle Width="20%" />
            <ItemStyle  HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField HeaderText="商户ID"　DataField="AccountID" >
            <HeaderStyle Width="20%" />
            <ItemStyle  HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="手续费">
            <ItemTemplate>  
                <%# GetRate(Eval("Rate", "{0}")) %>       
            </ItemTemplate>
            <HeaderStyle Width="5%" />
            <ItemStyle  HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="默认">
            <ItemTemplate>  
                <%# GetDefault(Eval("IsDefault", "{0}")) %>       
            </ItemTemplate>
            <HeaderStyle Width="5%" />
            <ItemStyle  HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="启用">
            <ItemTemplate>  
                <%# GetDisabled(Eval("IsDisabled", "{0}")) %>       
            </ItemTemplate>
            <HeaderStyle Width="5%" />
            <ItemStyle  HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="操作" >
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("PayPlatID") %>'>修改</asp:LinkButton> | 
                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="SetDef" CommandArgument='<%# Eval("PayPlatID") %>'>默认</asp:LinkButton> |
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Disabled" CommandArgument='<%# Eval("PayPlatID") %>'>禁用</asp:LinkButton> |
                <asp:LinkButton ID="LinkButton4" runat="server" CommandName="MovePre" CommandArgument='<%# Eval("PayPlatID") %>'>前移</asp:LinkButton> | 
                <asp:LinkButton ID="LinkButton5" runat="server" CommandName="MoveNext" CommandArgument='<%# Eval("PayPlatID") %>'>后移</asp:LinkButton> |
                <asp:LinkButton ID="LinkButton6" runat="server" CommandName="Delete" CommandArgument='<%# Eval("PayPlatID") %>' OnClientClick="return confirm('您确定要将该数据删除吗？');">删除</asp:LinkButton>
              </ItemTemplate>                  
              <ItemStyle  HorizontalAlign="Center" />
        </asp:TemplateField>            
    </Columns>
    <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
     <SelectedRowStyle CssClass="tdbgmouseover" Font-Bold="True" ForeColor="White" />
     <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
     <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
     <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
</asp:GridView>
</form>
</body>
</html>