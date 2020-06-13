<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.PaymentList, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>支付信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;系统管理&gt;&gt;支付信息管理</div>
<asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="PaymentID"  OnRowDataBound="Egv_RowDataBound" OnRowCommand="Lnk_Click" Width="100%">
    <Columns>            
        <asp:BoundField DataField="PaymentID" HeaderText="ID">
            <HeaderStyle Width="6%" />
            <ItemStyle  HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="UserName" HeaderText="会员">
            <HeaderStyle Width="6%" />
            <ItemStyle  HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="PaymentNum" HeaderText="支付序号">
            <HeaderStyle Width="10%" />
            <ItemStyle  HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="PayPlatName" HeaderText="支付平台">
            <HeaderStyle Width="10%" />
            <ItemStyle  HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="MoneyPay" HeaderText="金额">
            <HeaderStyle Width="6%" />
            <ItemStyle  HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="MoneyTrue" HeaderText="实际金额">
            <HeaderStyle Width="6%" />
            <ItemStyle  HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="交易状态">
            <HeaderStyle Width="6%" />
            <ItemTemplate>  
                <%# GetStatus(Eval("Status","{0}"))%>    
            </ItemTemplate>
            <ItemStyle  HorizontalAlign="Center" />         
        </asp:TemplateField>
        <asp:TemplateField HeaderText="处理结果">
            <HeaderStyle Width="6%" />
            <ItemTemplate>  
                <%# GetCStatus(Eval("CStatus","{0}"))%>    
            </ItemTemplate>
            <ItemStyle  HorizontalAlign="Center" />          
        </asp:TemplateField>            
        <asp:TemplateField HeaderText="完成时间">
            <HeaderStyle Width="14%" />
            <ItemTemplate>  
                <%# Eval("SuccessTime")%>    
            </ItemTemplate>
            <ItemStyle  HorizontalAlign="Center" />          
        </asp:TemplateField>
        <asp:TemplateField HeaderText="操作" >
            <ItemTemplate>                     
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Doit" CommandArgument='<%# Eval("PaymentID") %>'>增加短信量</asp:LinkButton>
              </ItemTemplate>
            <ItemStyle  HorizontalAlign="Center" />
            </asp:TemplateField>
    </Columns>
    <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
     <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
     <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
</asp:GridView>
 <span style="text-align: center">共
    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
    <asp:Label ID="Toppage" runat="server" Text="" />
    <asp:Label ID="Nextpage" runat="server" Text="" />
    <asp:Label ID="Downpage" runat="server" Text="" />
    <asp:Label ID="Endpage" runat="server" Text="" />页次：
    <asp:Label ID="Nowpage" runat="server" Text="" />/
    <asp:Label ID="PageSize" runat="server" Text="" />页
    <asp:Label ID="pagess" runat="server" Text="" />
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
    </asp:DropDownList>
    页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"  ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
</span>
</form>
</body>
</html>
