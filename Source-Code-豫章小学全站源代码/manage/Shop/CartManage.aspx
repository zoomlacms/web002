<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.CartManage, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>商品列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript">
function getinfo(id)
{
location.href='cartinfo.aspx?id='+id;
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	<span>后台管理</span> &gt;&gt; <span><a href="ProductManage.aspx">商城管理</a></span> &gt;&gt; <a href="CartManage.aspx">购物车</a> &gt;&gt; <span>购物车记录</span>	</div>
<div class="clearbox"></div>    
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tbody id="Tabs" >
    <tr class="tdbg">
        <td width="50%" height="24" align="center" class="title">快速查找：
    <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True">
            <asp:ListItem Value="1">所有购物车记录</asp:ListItem>
            <asp:ListItem Value="2">会员的购物车记录</asp:ListItem>
            <asp:ListItem Value="3">今天的购物车记录</asp:ListItem>
            <asp:ListItem Value="4">本周的购物车记录</asp:ListItem>
            <asp:ListItem Value="5">本月的购物车记录</asp:ListItem>
        </asp:DropDownList></td>
    <td width="50%" align="center" class="title">
            删除记录：
    <asp:DropDownList ID="souchtable" runat="server">
            <asp:ListItem Value="1">一天前</asp:ListItem>
            <asp:ListItem Value="7">一个星期前</asp:ListItem>
            <asp:ListItem Value="31">一个月前</asp:ListItem>
            <asp:ListItem Selected="True" Value="90">三个月前</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="souchok" runat="server" class="C_input" Text="删除记录"  style="width:100px"  OnClick="souchok_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" /></td>
    </tr>
    </tbody>
</table>
<br />
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tbody id="Tbody1">
    <tr class="tdbg">
        <td width="21%"  align="center" class="title">
            <span class="tdbgleft">购物车ID</span></td>
        <td width="142" align="center" class="title"><span class="tdbgleft">商品名称</span></td>
        <td width="142" align="center" class="title"><span class="tdbgleft">用户名</span></td>
        <td width="160" align="center" class="title"><span class="tdbgleft">时间</span></td>
        <td width="73" align="center" class="title"><span class="tdbgleft">数量</span><span class="tdbgleft"></span></td>
        <td width="167" align="center" class="title"><span style="background-color: #e0f7e5">预计金额</span></td>
        <td align="center" class="title" colspan="1">操作</td>
    </tr>
    <asp:Repeater ID="Carttable" runat="server" 
            onitemdatabound="Carttable_ItemDataBound">
    <ItemTemplate>
    <tr class="tdbg" id="<%#Eval("ID")%>" ondblclick="getinfo(this.id)" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="24" align="center"><a href="cartinfo.aspx?id=<%#Eval("ID")%>"><%#Eval("Cartid")%></a></td>
        <td height="24" align="center">
        <asp:HiddenField  runat="server" ID="hfCartId" Value='<%#Eval("ID")%>'/>
        <asp:Label ID="lblProduct" runat="server" Text=""></asp:Label></td>
        <td height="24" align="center"><%#Eval("Username")%></td>
        <td height="24" align="center"><%#Eval("Addtime")%></td>
        <td height="24" align="center"><%#Eval("Pronum")%></td>
        <td height="24" align="center"><%#formatcc(DataBinder.Eval(Container,"DataItem.AllMoney","{0}"))%></td>
        <td  align="center">
        <A href="?menu=del&id=<%#Eval("ID") %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</A>
        </td>
    </tr>
    </ItemTemplate>
    </asp:Repeater>
        
    <tr class="tdbg">
        <td colspan="8" align="center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />/
            <asp:Label ID="PageSize" runat="server" Text="" />页
          <%--  <asp:Label ID="pagess" runat="server" Text="" />--%>
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged"    ></asp:DropDownList>
            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </td>
    </tr>
    </tbody>
</table>
</form>
</body>
</html>