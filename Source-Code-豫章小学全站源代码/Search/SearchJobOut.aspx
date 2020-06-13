<%@ page language="C#" autoeventwireup="true" inherits="Search_SearchJobOut, App_Web_4hcrvkm5" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<title>职位搜索</title>
</head>
<body>
<form id="form1" runat="server">
<div id="nodata" runat="server" style="border:1px solid #b7b7b7; height:80px; text-align:center; margin-top:5px; line-height:60px;">
    没有指定搜索条件，或没有搜索到符合条件的数据
</div>
<asp:HiddenField ID="HdnModel" runat="server" />
<div class="us_seta" id="datashow" runat="server" style="display:none;">               
    <h1 style="text-align: center">
            搜索结果</h1> 
    <asp:GridView ID="Egv" runat="server" AllowPaging="True"  AutoGenerateColumns="False" DataKeyNames="ID"  Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" EmptyDataText="暂无数据" OnPageIndexChanging="Egv_PageIndexChanging" OnRowDataBound="Egv_RowDataBound">
        <EmptyDataRowStyle BackColor="White" Font-Bold="True" ForeColor="Black" Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <FooterStyle BackColor="#DBF9D9" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EBFCEA" Height="25px" />
        <EditRowStyle BackColor="#2461BF" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#DBF9D9" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView> 
</div>
</form>
</body>
</html>
