<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.PayPlatManage, App_Web_orznmsil" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>支付平台管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;系统管理 &gt;&gt;支付平台管理[<span>&nbsp;<a href="AddPayPlat.aspx">添加支付平台</a></span>]</div>
<asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PayPlatID" PageSize="20" OnRowDataBound="Egv_RowCreated" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" Width="100%">
    <Columns>
        <asp:BoundField HeaderText="ID"　DataField="PayPlatID" >
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
                <asp:LinkButton ID="LinkButton6" runat="server" CommandName="Delete" CommandArgument='<%# Eval("PayPlatID") %>' OnClientClick="return confirm('确定删除？')">删除</asp:LinkButton>
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