<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_AgioCommodityShow, App_Web_5abfvvyw" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>选择商品</title>
<base target="_self" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <table width="100%" border="0" cellpadding="2" cellspacing="0" class="border" id="TABLE1">
            <tr id="tr1" runat="server">
                <td valign="top">
                    <table width="100%" border="0" cellspacing="1" cellpadding="1">
                        <tr class="title">
                            <td align="left" colspan="4">
                                <b>商品列表：</b></td>
                        </tr>
                        <tr class="tdbgleft">
                            <td width="5%" height="24" align="center">
                                <strong>ID</strong></td>
                            <td width="10%" height="24" align="center">
                                <strong>商品图片</strong></td>
                            <td width="40%" height="24" align="center">
                                <strong>商品名称</strong></td>
                            <td width="35%" height="24" align="center">
                                <strong>商品零售价</strong></td>
                        </tr>
                        <asp:Repeater ID="Pagetable" runat="server">
                            <ItemTemplate>
                                <tr class="tdbg">
                                    <td height="24" align="center">
                                        <%#Eval("ID") %>
                                    </td>
                                    <td height="24" align="center">
                                        <%#getproimg(DataBinder.Eval(Container,"DataItem.Thumbnails","{0}"))%>
                                    </td>
                                    <td height="24" align="center">
                                        <%#Eval("Proname") %>
                                        <input type="hidden" id="Pronames<%#Eval("ID") %>" value="<%#Eval("Proname") %>" />
                                    </td>
                                    <td height="24" align="center">
                                        <%#Eval("LinPrice","{0:c}")%>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <tr class="tdbg">
                            <td class="tdbgleft" colspan="6" align="center">
                                共
                                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                                条信息
                                <asp:Label ID="Toppage" runat="server" Text="" />
                                <asp:Label ID="Nextpage" runat="server" Text="" />
                                <asp:Label ID="Downpage" runat="server" Text="" />
                                <asp:Label ID="Endpage" runat="server" Text="" />
                                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                                    Text="" />页
                                <asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1"
                                    runat="server" AutoPostBack="True">
                                </asp:DropDownList>页
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="tdnode" class="tdbgleft" runat ="server">
               </td>
            </tr>
        </table>
    </form>
</body>
</html>