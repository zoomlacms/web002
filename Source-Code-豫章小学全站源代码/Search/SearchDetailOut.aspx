<%@ page language="C#" autoeventwireup="true" inherits="Search_SearchDetailOut, App_Web_4hcrvkm5" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>搜索信息</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="../../Common/RiQi.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
 <div id="nodata" runat="server" style="border:1px solid #b7b7b7; height:80px; text-align:center; margin-top:5px; line-height:60px;">
    没有指定搜索条件，或没有搜索到符合条件的数据
</div>
<div class="us_seta" id="datashow" runat="server" style="display:none;">               
    <h1 style="text-align: center">
            搜索结果</h1> 
            <asp:HiddenField ID="HdnModel" runat="server" />
    <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="GeneralID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
        <Columns>                
            <asp:BoundField DataField="GeneralID" HeaderText="ID">
                <HeaderStyle Width="3%" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="标题">
                <HeaderStyle Width="50%" />
                <ItemTemplate>  
                    <a href="<%# GetUrl(Eval("GeneralID", "{0}"))%>" target="_blank"><%# Eval("Title")%></a>     
                </ItemTemplate>            
            </asp:TemplateField>
            <asp:TemplateField HeaderText="所属栏目">
                <HeaderStyle Width="20%" />
                <ItemTemplate>  
                    <%# GetNodeUrl(Eval("NodeID", "{0}")) %>     
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />            
            </asp:TemplateField>
            <asp:BoundField DataField="Inputer" HeaderText="录入人">
                <HeaderStyle Width="10%" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="CreateTime" HeaderText="录入时间">
                <HeaderStyle Width="17%" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>                
        </Columns>
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