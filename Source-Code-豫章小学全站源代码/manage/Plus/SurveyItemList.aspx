<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Plus.SurveyItemList, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>问卷投票问题列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;<a href="SurveyManage.aspx">问卷投票管理</a>&gt;&gt;问卷投票问题列表</div>
<table  class="TableWrap"  border="0" cellpadding="0" cellspacing="0" width="100%" id="Table1">
    <tr class="tdbg">
        <td style="height: 21px">                   
          问卷投票名：<asp:Label ID="Label1" runat="server" Text="Label" ForeColor="red"></asp:Label>&nbsp;&nbsp;&nbsp; <asp:Label ID="LablAdd" runat="server" Text="添加问题"></asp:Label>
            <asp:HiddenField ID="HdnSID" runat="server" />
        </td>
    </tr>                
</table>
<div class="clearbox"></div>  
<div class="gridtitle">
<asp:GridView ID="Gdv" RowStyle-HorizontalAlign="Center" DataKeyNames="QID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="10" Width="100%" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" EmptyDataText="无相关数据">
        <Columns>                
            <asp:BoundField DataField="QID" HeaderText="序号">
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
            <HeaderStyle Width="5%" />
            </asp:BoundField>                                               
            <asp:BoundField DataField="QTitle" HeaderText="问题标题">
                 <ItemStyle  CssClass="tdbg" HorizontalAlign="Left" />
                 <HeaderStyle Width="40%" />
            </asp:BoundField> 
            <asp:TemplateField HeaderText="类别">
                <ItemTemplate>                                
                   <%# GetQType(Eval("TypeID","{0}")) %>
                </ItemTemplate>
                 <ItemStyle  CssClass="tdbg" HorizontalAlign="Left" />
                 <HeaderStyle Width="10%" />
            </asp:TemplateField>                                                
            <asp:TemplateField HeaderText="操作">                
            <ItemTemplate>                    
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("QID") %>' OnClientClick="return confirm('确实要删除吗？');">删除</asp:LinkButton> | 
                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="MovePre" CommandArgument='<%# Eval("QID") %>'>上移</asp:LinkButton> |
                <asp:LinkButton ID="LinkButton4" runat="server" CommandName="MoveNext" CommandArgument='<%# Eval("QID") %>'>下移</asp:LinkButton>
            </ItemTemplate>
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
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