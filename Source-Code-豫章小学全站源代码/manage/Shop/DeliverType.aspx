<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.DeliverType, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>送货方式设置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
function getinfo(id) {
    location.href = "AddDeliverType.aspx?menu=edit&id=" + id + "";
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <a href="DeliverType.aspx">商城设置</a>
    &gt;&gt; <span><a href="DeliverType.aspx" target="_self">送货方式管理</a> [</span><span><a
        href="AddDeliverType.aspx">添加送货方式</a>] [</span><a href="DeliverCity.aspx">确认默认地区</a>]</div>
<div class="clearbox">
</div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tr class="tdbg">
        <td width="5%" height="24" align="center" class="title">
            ID
        </td>
        <td width="15%" align="center" class="title">
            送货方式名称
        </td>
        <td width="40%" align="center" class="title">
            送货方式简介
        </td>
        <td width="10%" align="center" class="title">
            运费
        </td>
        <td width="10%" align="center" class="title">
            是否默认
        </td>
        <td width="5%" align="center" class="title">
            已启用
        </td>
        <td width="15%" align="center" class="title">
            操作
        </td>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                id="<%#Eval("id") %>" ondblclick="getinfo(this.id )">
                <td height="24" align="center">
                    <%#Eval("id") %>
                </td>
                <td height="24" align="center">
                    <%#Eval("deliname")%>
                </td>
                <td height="24" align="center">
                    <%#Eval("deliinfo")%>
                </td>
                <td height="24" align="center">
                    <%#getmoney(DataBinder.Eval(Container,"DataItem.delitype","{0}"))%>
                </td>
                <td height="24" align="center">
                    <%#getinfo(DataBinder.Eval(Container,"DataItem.selectto","{0}"))%>
                </td>
                <td height="24" align="center">
                    <%#getinfo(DataBinder.Eval(Container,"DataItem.isuse","{0}"))%>
                </td>
                <td height="24" align="center">
                    <%#showselect(DataBinder.Eval(Container,"DataItem.id","{0}")) %>
                    <%#showuse(DataBinder.Eval(Container,"DataItem.id","{0}")) %>
                    <a href="AddDeliverType.aspx?menu=edit&id=<%#Eval("id") %>">修改</a> <a href="?menu=del&id=<%#Eval("id") %>"
                        onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
        <td height="24" colspan="7" align="center" class="tdbgleft">
            <span style="text-align: center">
            共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />页次：
                <asp:Label ID="Nowpage" runat="server" Text="" />/
                <asp:Label ID="PageSize" runat="server" Text="" />页
                <asp:Label ID="pagess" runat="server" Text="" />
                <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                    Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                    ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                </span>
        </td>
    </tr>
    <tr>
        <td height="24" colspan="7">
            说明：“禁用”某送货方式后，前台订购时将不再显示此送货方式，但已有订单中仍然显示。
        </td>
    </tr>
</table>

</form>
</body>
</html>
