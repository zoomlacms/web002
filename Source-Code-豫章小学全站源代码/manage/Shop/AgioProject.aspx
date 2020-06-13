<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_AgioProject, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>促销方案管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script language="javascript" type="text/javascript">
function SelectProducer(num,type)
{
   window.open('AgioCommodityShow.aspx?KeyWord='+num+'&KeyType='+type,'','width=600,height=450,resizable=0,scrollbars=yes');
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; 促销管理 &gt;&gt; <span>打折方案管理</span>    &nbsp; <a href="AddAgioProject.aspx">【添加打折方案】</a>
	</div>
    <div class="clearbox"></div>  
    <table width="100%" cellpadding="0" cellspacing="0" border="0" class="border" >
    <tr class="tdbg">
    <td><asp:GridView ID="GridView1" runat="server" DataKeyNames="ID" Width="100%" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="编号" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                    <HeaderStyle Width="50px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="打折类型" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="center" HeaderStyle-Width="100px" >
                    <ItemTemplate>
                    <%#Gettype(DataBinder.Eval(Container.DataItem,"SType").ToString()) %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="方案名称" HeaderStyle-HorizontalAlign="Center" >
                    <ItemTemplate>
                    <a href="AddAgioProject.aspx?ID=<%#DataBinder.Eval(Container.DataItem,"ID") %>"><%#DataBinder.Eval(Container.DataItem, "SName")%></a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="有效期"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" ><ItemStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <%#GetDate(DataBinder.Eval(Container.DataItem,"SStartTime").ToString(),DataBinder.Eval(Container.DataItem,"SEndTime").ToString())%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="商品列表" HeaderStyle-HorizontalAlign="Center" >
                    <ItemTemplate>
                    <a href="#" onclick='SelectProducer(<%#DataBinder.Eval(Container.DataItem,"ID")%>,<%#DataBinder.Eval(Container.DataItem,"SType")%>)'>详细商品列表</a>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                    <HeaderStyle Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="方案打折列表" HeaderStyle-HorizontalAlign="Center" >
                    <ItemTemplate>
                    <a href='AgioList.aspx?ID=<%#DataBinder.Eval(Container.DataItem,"ID")%>'>方案打折详细列表</a>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                    <HeaderStyle Width="150px" />
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True"  >
                    <HeaderStyle Width="50px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
        </asp:GridView></td>
    </tr>
    <tr class="tdbg">
    <td align="center">
    共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页
    </td>
    </tr>
    </table>
    </form>
</body>
</html>
