<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.PresentProject, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>促销方案管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script language="javascript" type="text/javascript">
        function getinfo(id) {
            location.href = "AddPresentProject.aspx?menu=edit&id=" + id + "";          
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; 促销管理 &gt;&gt; <span>促销方案管理</span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td width="35" height="24" align="center" class="title">
                    <span class="tdbgleft">ID</span>
                </td>
                <td width="140" align="center" class="title">
                    方案名称
                </td>
                <td width="139" align="center" class="title">
                    价格区间
                </td>
                <td width="194" align="center" class="title">
                    <span class="tdbgleft">有效期</span>
                </td>
                <td width="190" align="center" class="title">
                    <span class="tdbgleft">促销内容</span>
                </td>
                <td width="85" align="center" class="title">
                    <span class="tdbgleft">操作</span>
                </td>
            </tr>
            <asp:Repeater ID="Promotions" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id='<%#Eval("ID") %>' ondblclick="getinfo(this.id )">
                        <td height="24" align="center">
                            <%#Eval("ID") %>
                        </td>
                        <td height="24" align="center">
                            <%#Eval("Promoname")%>
                        </td>
                        <td height="24" align="center">
                            <%# remoney(DataBinder.Eval(Container, "DataItem.Pricetop", "{0}"), DataBinder.Eval(Container, "DataItem.Priceend", "{0}"))%>
                        </td>
                        <td height="24" align="center">
                            <%# ontimes(DataBinder.Eval(Container, "DataItem.Promostart", "{0}"), DataBinder.Eval(Container, "DataItem.Promoend", "{0}"))%>
                        </td>
                        <td height="24" align="center">
                            <%# rePresentmoney(DataBinder.Eval(Container, "DataItem.GetPresent", "{0}"), DataBinder.Eval(Container, "DataItem.Presentmoney", "{0}"))%>
                        </td>
                        <td height="24" align="center">
                            &nbsp;<a href="AddPresentProject.aspx?menu=edit&id=<%#Eval("id") %>">修改</a> <a href="?menu=del&id=<%#Eval("id") %>"
                                onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td height="24" colspan="6" align="center" class="tdbgleft">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条记录
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页 <asp:Label ID="pagess" runat="server" Text=""/>
                    条记录/页 转到第
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    页
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>
