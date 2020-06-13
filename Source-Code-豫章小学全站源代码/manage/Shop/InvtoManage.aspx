<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_InvtoManage, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>发票类型</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
    function getinfo(id) {
        location.href = "AddInvoType.aspx?menu=edit&id=" + id + "";
    }
    
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 商城管理 &gt;&gt; <a href="DeliverType.aspx">商城设置</a> &gt;&gt; <a href="InvtoManage.aspx" target="_self">发票类型管理</a><span class="red"> [<a href="AddInvoType.aspx">添加发票类型</a>]</span></div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tr class="tdbg">
        <td width="10%" height="24" align="center" class="title">ID</td>
        <td width="20%" align="center" class="title">发票类型名称</td>
        <td width="20%" align="center" class="title">发票类型说明</td>
        <td width="20%" align="center" class="title">税率</td>
        <td width="20%" align="center" class="title">操作</td>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                id="<%#Eval("id") %>" ondblclick="getinfo(this.id )">
                <td height="24" align="center">
                    <%#Eval("id") %>
                </td>
                <td height="24" align="center">
                    <%#Eval("InvtoType")%>
                </td>
                <td height="24" align="center">
                    <%#Eval("Remark")%>
                </td>
                <td height="24" align="center">
                   <%#Eval("Invto")%> %
                </td>
                <td height="24" align="center">
                    <a href="AddInvoType.aspx?id=<%#Eval("id") %>">修改</a>
                     <a href="?menu=del&id=<%#Eval("id") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
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
                <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                </span>
        </td>
    </tr>
    <tr>
        <td height="24" colspan="7">说明：“禁用”某送货方式后，前台订购时将不再显示此送货方式，但已有订单中仍然显示。
        </td>
    </tr>
</table>
</form>
</body>
</html>