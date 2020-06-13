<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_SelecShopUserid, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>店铺用户ID</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tbody id="Tabss">
        <tr class="tdbg">
            <td width="5%" align="center" class="title">
                <span class="tdbgleft">ID</span>
            </td>
            <td width="12%" align="center" class="title">
                <span class="tdbgleft">申请人用户名</span>
            </td>
            <td width="20%" align="center" class="title">
                <span class="tdbgleft">店铺名称</span>
            </td>
            <td width="20%" align="center" class="title">
                <span class="tdbgleft">申请时间</span>
            </td>
            <td width="7%" align="center" class="title">
                <span class="tdbgleft">店铺状态</span>
            </td>
            <td width="8%" align="center" class="title">
                <span class="tdbgleft">操作</span>
            </td>
        </tr>
        <asp:Repeater ID="Productlist" runat="server" 
            onitemcommand="Productlist_ItemCommand">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td height="24" align="center">
                        <%#DataBinder.Eval(Container.DataItem, "GeneralID")%>
                    </td>
                    <td height="24" align="center">
                        <%#GetUsername(DataBinder.Eval(Container.DataItem, "GeneralID").ToString())%>
                    </td>
                    <td height="24" align="center">
                        <a href="../../Store/Storeindex.aspx?id=<%# Eval("GeneralID")%>" target="_blank"
                            title="点击进入店铺"><%#GetStorename(DataBinder.Eval(Container.DataItem, "GeneralID").ToString())%></a>
                    </td>
                    <td height="24" align="center">
                        <%#GetAddtime(DataBinder.Eval(Container.DataItem, "GeneralID").ToString())%>
                    </td>
                    <td height="24" align="center">
                        <%#GetState(DataBinder.Eval(Container.DataItem, "GeneralID").ToString())%>
                    </td>
                    <td height="24" align="center">
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName='sel' CommandArgument='<%#Eval("GeneralID")%>' >选择</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td height="24" colspan="7" align="center" class="tdbgleft">
                共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                    Text="" />页
                <asp:Label ID="pagess" runat="server" Text="" />个/页 转到第<asp:DropDownList ID="DropDownList1" runat="server"
                        AutoPostBack="True">
                    </asp:DropDownList>
                页
                <asp:HiddenField ID="hfOrderID" runat="server" />
            </td>
        </tr>
    </tbody>
</table>
</form>
</body>
</html>
