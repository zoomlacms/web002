<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.SearchUserModel, App_Web_zkrma30s" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>内容详细搜索</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="/Common/Common.js" type="text/javascript"></script>
<script src="/Common/RiQi.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_seta">   
    <h1 style="text-align: center">
            <asp:Label ID="LblModelName" runat="server" Text="Label"></asp:Label></h1>
    <table style="width: 100%; margin: 0 auto;" cellpadding="0" cellspacing="0" class="border">
        <asp:Literal ID="ModelSearchHtml" runat="server"></asp:Literal><tr class="tdbgbottom">
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click"/><asp:HiddenField ID="HdnModel" runat="server" />
            </td>
        </tr>
    </table>        
</div>    
<div class="us_seta" id="datashow" runat="server">               
    <h1 style="text-align: center">
            搜索结果</h1> 
    <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="false" DataKeyNames="ID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging" OnRowDataBound="Egv_RowDataBound" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" EmptyDataText="没有搜索到符合条件的数据">
        <Columns>
                        
        </Columns>
        <EmptyDataRowStyle BackColor="White" Font-Bold="True" ForeColor="#000000" Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" Height="25px" />
        <EditRowStyle BackColor="#2461BF" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
</div>
</form>
</body>
</html>
