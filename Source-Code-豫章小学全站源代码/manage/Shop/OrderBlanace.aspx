<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_OrderBlanace, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>商品结算</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script language="javascript">
    function opentitle(url, title) {
        var diag = new Dialog();
        diag.Width = 600;
        diag.Height = 400;
        diag.Title = title;
        diag.URL = url;
        diag.show();
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="r_navigation">
            <span style="float: right; background: url(../../../Images/ModelIcon/edit.gif) no-repeat left;
                padding-left: 20px;"></span><span>后台管理</span> &gt;&gt; <span><a href="ProductManage.aspx">
                    商城管理</a></span> &gt;&gt; 商品推广结算
        </div>
        
        <div class="divline">&nbsp;&nbsp;
        <asp:Label ID="lblli" runat="server" Text="显示已结算"></asp:Label>
        <asp:Label ID="lblNO" runat="server" Text="显示未结算"></asp:Label>
        <%--<asp:Label ID="lblOK" runat="server" Text="历史订单"></asp:Label>--%>
        </div><asp:HiddenField ID="hfid" runat="server" />
        <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
            <tr class="title">
                <td width="3%" height="28" align="center">
                    <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
                </td>
                <td width="3%" height="28" align="center">推广人</td>
                <td width="5%" height="28" align="center">总计售出商品（件)</td>
                <td width="5%" height="28" align="center">总价</td>
                <td width="5%" height="28" align="center">操作</td>
            </tr>
            <asp:Repeater ID="repArticlePromotion" runat="server" >
                <ItemTemplate>
                    
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="24" align="center">
                            <%#getIsBalanceCheckBox(ZoomLa.Common.DataConverter.CBool(Eval("IsBalance").ToString()), ZoomLa.Common.DataConverter.CLng(Eval("cartproid").ToString()), ZoomLa.Common.DataConverter.CBool(Eval("isEnable").ToString()))%>
                        </td>
                        <td width="3%" align="center"><%#getUserNameById(ZoomLa.Common.DataConverter.CLng(Eval("PromotionUserId").ToString()))%></td>
                        <td width="3%" align="center"><%#Getprope(Eval("CartProId", "{0}"))%></td>
                        <td width="3%" align="center"><%#GetMoney(Eval("CartProId", "{0}"))%></td>
                        <td align="center">                        
                              <%#ZoomLa.Common.DataConverter.CBool(Eval("IsBalance").ToString()) ? "" : "<a style=\"color: blue;\" href='javascript:void(0)' onclick=\"opentitle('Balance.aspx?id=" + Eval("ID").ToString() + "','查看会员')\" >结算</a>  "%>
                              <%#ZoomLa.Common.DataConverter.CBool(Eval("IsBalance").ToString()) ? "<a style=\"color: #999999;\" >结算</a> " : ""%>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td height="22" colspan="5" style="position:relative;" align="center" class="tdbgleft">
               共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                条记录
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                    Text="" />页  <asp:TextBox ID="txtPage" runat="server"  AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
               条记录/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                页
                <div id="divBack" style="float:left;text-align:right;display:none;">
                    <input type="button" value="返回" style="right:5px;bottom:-2px;" class="C_input" onclick="history.go(-1)" />
                </div>
            </td>
            </tr>
        </table>
                <asp:Button ID="Button2"  runat="server"  Text="批量结算" title="结算所有未结算订单" 
            class="C_input" style=" width:100px;" onclick="Button2_Click" />
                <input type="button"   value="返回" title="返回上一页" 
            class="C_input" style=" width:100px;"  onclick="javascript:location.href='PromotionBalance.aspx';" />
    </div>
    </form>
</body>
</html>
