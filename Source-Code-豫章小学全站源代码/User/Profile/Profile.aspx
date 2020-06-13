<%@ page language="C#" autoeventwireup="true" inherits="User_Profile_Profile, App_Web_ktmoec40" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>返利详情</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="../../Common/Common.js" type="text/javascript"></script>
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a>&gt;&gt;<a href="Default.aspx">我的返利</a>
</div>
    <div class="us_seta"  style="margin-top:5px;"><h1 align="center">返利详情</h1></div>
    <div align="center">
       <table width="100%">
           <tr>
               <td align="center" width="20%">订单编号</td>
               <td align="center" width="20%">订单金额</td>
               <td align="center" width="20%">购物商城</td>
               <td align="center" width="20%">返利金额</td>
               <td align="center" width="20%">确认返利</td>
           </tr>  
       </table>
             <asp:Repeater ID="repf" runat="server"  onitemdatabound="repf_ItemDataBound">
             <ItemTemplate>
               <table width="100%">
               <tr>
                   <td align="center" width="20%">
                   <asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("id") %>' />
                   <asp:Label ID="lblOrderNo" runat="server" Text='<%#Eval("orderNo") %>'></asp:Label></td>
                   <td align="center" width="20%"><asp:Label ID="lblOrderMoney" runat="server" 
                   Text='<%#DataBinder.Eval(Container, "DataItem.OrderMoney", "{0:N2}") %>'></asp:Label></td>
                   <td align="center" width="20%"><asp:Label ID="lblShop" runat="server"> </asp:Label></td>
                   <td align="center" width="20%"><asp:Label ID="lblFM" runat="server" 
                   Text='<%#DataBinder.Eval(Container, "DataItem.ProfileMoney", "{0:N2}")%>'></asp:Label></td>
                   <td align="center" width="20%"><asp:Label ID="lblProSate" runat="server"></asp:Label></td>
               </tr>  
       </table>
             </ItemTemplate>
             </asp:Repeater>
             <table> <tr class="tdbg">
            <td height="24" colspan="7" align="center" class="tdbgleft">
                共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  
                <span style="text-align: center">
                 <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input"
                 Width="16px" Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox>
                 </span>条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>页
            </td>
        </tr></table>
</div>
</form>
</body>
</html>