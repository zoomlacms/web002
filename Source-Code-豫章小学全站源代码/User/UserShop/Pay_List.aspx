<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_Pay_List, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>支付信息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label">逐浪CMS</asp:Label></a>&gt;&gt;</span><span><a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent"> 会员中心</a>&gt;&gt;支付记录浏览<a title="添加支付平台" href="Pay_Add.aspx">[添加支付平台]</a>
</div>
<asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="PaymentID"  OnRowDataBound="Egv_RowDataBound" OnRowCommand="Lnk_Click" Width="100%">
    <Columns>            
        <asp:BoundField DataField="PaymentID" HeaderText="接口">
            <HeaderStyle Width="6%" />
            <ItemStyle  HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="用户">
            <HeaderStyle Width="6%" />
            <ItemTemplate>  
                <%#(Eval("UserID"))%>    
            </ItemTemplate>
            <ItemStyle  HorizontalAlign="Center" />         
        </asp:TemplateField>
        <asp:BoundField DataField="PaymentNum" HeaderText="支付序号">
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
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"  Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
    </asp:DropDownList>
    页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
</span>
</form>
</body>
</html>