<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_PromotionBalance, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>商品推广结算</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span style="float: right; background: url(../../../Images/ModelIcon/edit.gif) no-repeat left;
            padding-left: 20px;"></span><span>后台管理</span> &gt;&gt; <span><a href="ProductManage.aspx">
                商城管理</a></span> &gt;&gt; 商品推广结算
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tr class="title">
            <td width="10%" height="28" align="center">推广人</td>
            <td width="10%" height="28" align="center">时间</td>
            <td width="5%" height="28" align="center">商品ID</td>
            <td width="10%" height="28" align="center">商品名称</td>
            <td width="8%" height="28" align="center">商品价格</td>
            <td width="10%" height="28" align="center">购买数量</td>            
            <%--<td width="5%" height="28" align="center">订单数量</td>--%>
          <%--  <td width="12%" height="28" align="center">未结算订单（有/无)</td>--%>
            <td width="10%" height="28" align="center">商品总价</td>
            <td width="10%" height="28" align="center">查看</td>
        </tr>
        <asp:Repeater ID="repArticlePromotion" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="center">                    
                        <a style="color:blue;" href='OrderBlanace.aspx?id=<%#Eval("PromotionUserId") %>&balance=0 ' title="查看此用户推广信息"><%#getUserNameById(ZoomLa.Common.DataConverter.CLng(Eval("PromotionUserId").ToString()))%></a>
                     </td>
                    <td align="center"><%#Eval("AddTime")%></td>
                    <td align="center"><%#Eval("CartProId")%></td>
                    <td align="center"><%#GetShopName(Eval("CartProId", "{0}"))%></td>
                    <td align="center"><%#GetPrice(Eval("CartProId", "{0}"))%></td>
                    <td align="center"><%#Getprope(Eval("CartProId", "{0}"))%></td>                    
                <%--    <td align="center"><%#Eval("id").ToString()%></td>--%>
                    <%--<td align="center"><%#getOrderBalance(ZoomLa.Common.DataConverter.CLng( Eval("PromotionUserId").ToString()))%></td>--%>
                    <td align="center"><%#GetCount(Eval("CartProId", "{0}"))%></td>    
                    <td align="center"><a href='MtrlsMrktng.aspx?id=<%#Eval("PromotionUserId") %>' style="color:Blue;" title="查看返利信息">返利信息</a></td>                
                </tr>
            </ItemTemplate>
        </asp:Repeater>
     <td height="22" colspan="8" align="center" class="tdbg">
          共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                            Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                        条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </td>
    </table>
    </form>
</body>
</html>
