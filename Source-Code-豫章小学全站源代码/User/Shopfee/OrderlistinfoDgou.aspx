<%@ page language="C#" autoeventwireup="true" inherits="User_Shopfee_OrderlistinfoDgou, App_Web_xj23mn1f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>订单信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
    @media print
    {
    }
    .Noprn{display:none;}</style>

<script type="text/javascript"> 
    function preview()
    {
     window.open('OrderlistinfoDgou.aspx?id=5&menu=print','打印预览','','');
    }
    
    function pageload()
    {
    <%
     if(Request.QueryString["menu"]=="print") 
     {
     %>
     bdhtml=window.document.body.innerHTML;
     sprnstr="<!--startprint-->";
     eprnstr="<!--endprint-->";
     prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17);
     prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));
     window.document.body.innerHTML=prnhtml;
     window.print();
     <%
     } 
     %>
    }
</script>
</head>
<body onload="pageload()">
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <a href="CartManage.aspx">购物车</a>
        &gt;&gt; <span>购物车信息</span>
    </div>
    <div class="clearbox"></div>
    <br />
    <!--startprint-->
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td colspan="4" align="center" class="title">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;
                </td>
            </tr>
            <tr class="tdbg">
                <td align="left" style="width: 13%; height: 23px">
                    客户名称：<asp:Label ID="Reuser" runat="server" Text=""></asp:Label>
                </td>
                <td align="left" style="width: 14%; height: 23px">
                    用 户 名：<asp:Label ID="Rename" runat="server" Text=""></asp:Label>
                </td>
                <td align="left" style="width: 13%; height: 23px">
                    购买日期：<asp:Label ID="adddate" runat="server"></asp:Label>
                </td>
                <td width="20%" align="left" style="height: 23px">
                    下单日期：<asp:Label ID="addtime" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg">
                <td align="left" style="width: 13%; height: 12px">
                    需开发票：<asp:Label ID="Invoiceneeds" runat="server"></asp:Label>
                </td>
                <td align="left" style="width: 14%; height: 12px">
                    已开发票：<asp:Label ID="Developedvotes" runat="server"></asp:Label>
                </td>
                <td align="left" style="width: 13%; height: 12px">
                    付款状态：<asp:Label ID="Paymentstatus" runat="server"></asp:Label>
                </td>
                <td width="20%" align="left" style="height: 12px">
                    物流状态：<asp:Label ID="StateLogistics" runat="server"></asp:Label>
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody2">
            <tr class="tdbg">
<%--                <td width="10%" align="center" class="title">
                    图片
                </td>--%>
                <td width="27%" align="center" class="title">
                    商品名称
                </td>
                <td width="15%" align="center" class="title">
                     来源
                </td>
                <td width="10%" align="center" class="title">
                     单价
                </td>
                <td width="10%" align="center" class="title">
                    数量
                </td>
                <td width="15%" align="center" class="title">
                    备注
                </td>
                <td align="center" class="title" >
                    操作
                </td>
            </tr>
            <asp:Repeater ID="procart" runat="server" 
                OnItemDataBound="cartinfo_ItemDataBound" onitemcommand="procart_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                        <%#(Eval("Bindpro","{0}")=="")?"":"style=background-color:#E6E6E6"%>>
<%--                        <td height="24" align="center" width="10%">
                            <%#getproimg(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                        </td>--%>
                        <td width="27%" align="center">
                           <a href='http://<%#Eval("Procontent") %>' target='_blank'> <%#Getprotype(Eval("ProID","{0}"))%>
                            <%#Eval("proname")%>
                            </a>
                        </td>
                        <td width="15%" align="center">
                            <%#Eval("ProSeller") %>
                        </td>
                        <td width="10%" align="center">
                           <%#Eval("shijia") %>
                        </td>
                        <td width="10%" align="center">
                            <%#Eval("pronum") %> 
                        </td>
                        <td width="15%" align="center">
                           <%#Eval("Proinfo")%>
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Del" CommandArgument='<%#Eval("ID") %>' OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" >删除</asp:LinkButton>
                        </td>
                    </tr>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                                style="background-color: #F6F6F6;">
                                <td height="24" align="center">
                                    <%#getproimg(Eval("id","{0}"))%>
                                </td>
                                <td align="center">
                                    <%#Getprotype(DataBinder.Eval(Container, "DataItem.id", "{0}"))%><%#Eval("proname")%>
                                </td>
                                <td width="6%" align="center">
                                    <%#getProUnit(DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                                </td>
                                <td width="6%" align="center">
                                    1
                                </td>
                                <td width="6%" align="center">
                                    <%#getjiage("1", DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                                </td>
                                <td width="6%" align="center">
                                    <%#getjiage("2", DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                                </td>
                                <td align="center">
                                    -
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
<%--                <td height="24">
                    &nbsp;
                </td>--%>
                <td height="24">
                    &nbsp;
                </td>
                <td height="24">
                    &nbsp;
                </td>
                <td height="24">
                    &nbsp;
                </td>
                <td height="24">
                    &nbsp;
                </td>
                <td height="24" align="center">
                    合计：
                </td>
                <td height="24" align="left">
                    &nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr class="tdbg">
                <td colspan="6" style="height: 24px">
                    &nbsp;运费：<asp:Label ID="Label32" runat="server" Text=""></asp:Label>元
                </td>
            </tr>
            <tr class="tdbg">
                <td height="24" colspan="6">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="50%" align="left" style="height: 19px">
                                &nbsp;实际金额：
                                <asp:Label ID="Label29" runat="server" Text=""></asp:Label>
                                +
                                <asp:Label ID="Label30" runat="server" Text=""></asp:Label>＝<asp:Label ID="Label31"
                                    runat="server" Text=""></asp:Label>元
                            </td>
                            <td width="50%" align="center" style="height: 19px">
                                &nbsp;已付款：<asp:Label ID="Label28" runat="server" Text=""></asp:Label>元
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="tdbg">
                <td height="24" colspan="6">
                    <font color="red">
                        <asp:Label ID="Label33" runat="server" Text=""></asp:Label></font>
                </td>
            </tr>
        </tbody>
    </table>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;"> <asp:Literal ID="ModelHtml" runat="server"></asp:Literal></table>
    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody3">
            <tr class="tdbg">
                <td width="50%" height="24" align="center">
                    <table width="100%" border="0" cellspacing="1" cellpadding="0">
                        <tr>
                            <td width="28%" height="24" align="right" class="tdbgleft">
                                收货人姓名：
                            </td>
                            <td width="72%" height="24" align="left">
                                &nbsp;<asp:Label ID="Reusers" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" align="right" class="tdbgleft">
                                收货人地址：
                            </td>
                            <td height="24" align="left">
                                &nbsp;<asp:Label ID="Jiedao" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" align="right" class="tdbgleft">
                                收货人邮箱：
                            </td>
                            <td height="24" align="left">
                                &nbsp;<asp:Label ID="Email" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="tdbgleft" style="height: 24px">
                                付款方式：
                            </td>
                            <td align="left" style="height: 24px">
                                &nbsp;<asp:Label ID="Payment" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" align="right" class="tdbgleft">
                                发票信息：
                            </td>
                            <td height="24" align="left">
                                &nbsp;<asp:Label ID="Invoice" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" align="right" class="tdbgleft">
                                缺货处理：
                            </td>
                            <td height="24" align="left">
                                &nbsp;<asp:Label ID="Outstock" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" align="right" class="tdbgleft">
                                订单类型：
                            </td>
                            <td height="24" align="left">
                                &nbsp;<asp:Label ID="Ordertype" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="tdbgleft" style="height: 24px">
                                要求送货时间：
                            </td>
                            <td align="left" style="height: 24px">
                                &nbsp;<asp:Label ID="Deliverytime" runat="server" Text=""></asp:Label>
                                <span style="float:right">
                    <asp:Button ID="Button10" runat="server" CssClass="C_input" Text="服务记录" 
                                    onclick="Button10_Click" /></span>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="50%" align="center">
                    <table width="100%" border="0" cellspacing="1" cellpadding="0">
                        <tr>
                            <td width="28%" height="24" align="right" class="tdbgleft">
                                联系电话：
                            </td>
                            <td width="72%" height="24" align="left">
                                &nbsp;<asp:Label ID="Phone" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="tdbgleft" style="height: 24px">
                                邮政编码：
                            </td>
                            <td align="left" style="height: 24px">
                                &nbsp;<asp:Label ID="ZipCode" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" align="right" class="tdbgleft">
                                收货人手机：
                            </td>
                            <td height="24" align="left">
                                &nbsp;<asp:Label ID="Mobile" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" align="right" class="tdbgleft">
                                送货方式：
                            </td>
                            <td height="24" align="left">
                                &nbsp;<asp:Label ID="Delivery" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" align="right" class="tdbgleft">
                                跟单员：
                            </td>
                            <td height="24" align="left">
                                &nbsp;<asp:Label ID="AddUser" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" align="right" class="tdbgleft">
                                内部记录：
                            </td>
                            <td height="24" align="left">
                                &nbsp;<asp:Label ID="Internalrecords" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" align="right" class="tdbgleft">
                                备注/留言：
                            </td>
                            <td height="24" align="left">
                                &nbsp;<asp:Label ID="Ordermessage" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" align="right" class="tdbgleft">
                                订单状态：&nbsp;
                            </td>
                            <td height="24" align="left">
                                &nbsp;<asp:Label ID="OrderStatus" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
     <br />
        <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tr class="tdbg">
                <td colspan="5" align="center" class="title">其他费用</td>
        </tr>
        <tr><td>
            合计：<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </td>
            <td>
            其他费用：<asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            </td>
            <td>
            代购服务费：<asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            </td>
            <td>
         付款状态：<asp:Label ID="Label6" runat="server" Text=""></asp:Label><asp:Button ID="Button1"
                runat="server" Text="成功付款" Enabled="false" OnClientClick="return confirm('确定要修改付款状态吗？');" 
                    onclick="Button1_Click" class="C_input" />
            </td>
        </tr>
    </table>
    <br />
    <!--endprint-->
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;"
        id="TABLE1">
        <tbody id="Tbody4">
            <asp:Repeater ID="procart2" runat="server">
                <ItemTemplate>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td width="25%">
                    <asp:Button ID="Button4" runat="server" Text="确认订单" Width="100px" OnClick="Button4_Click" class="C_input" /><br />
                    <asp:Button ID="Button5" runat="server" Text="取消确认" Width="100px" OnClick="Button5_Click"  class="C_input" /><br />
                    <asp:Button ID="Button3" runat="server" Text="发货" Width="100px" OnClick="Button3_Click" class="C_input" />
                </td>
                <td width="25%">
                    <asp:Button ID="Button2" runat="server" Text="已经支付" Width="100px" OnClick="Button2_Click" class="C_input" /><br />
                    <asp:Button ID="Button7" runat="server" Text="客户已签收" Width="100px" OnClick="Button7_Click" class="C_input" /><br />
                    <asp:Button ID="Button6" runat="server" Text="订单作废" Width="100px" OnClick="Button6_Click" class="C_input" />
                </td>
                <td width="25%">
                    <asp:Button ID="Button13" runat="server" Text="暂停处理" Width="100px" OnClick="Button13_Click"  class="C_input"/><br />
                    <asp:Button ID="Button14" runat="server" Text="恢复正常" Width="100px" OnClick="Button14_Click" class="C_input" /><br />
                    <asp:Button ID="Button12" runat="server" Text="删除订单" Width="100px" OnClick="Button12_Click" class="C_input" />
                </td>
                <td width="25%" valign="top">
                    <asp:Button ID="Button9" runat="server" Text="结清订单" Width="100px" OnClick="Button9_Click" class="C_input" /><br />
                    <asp:Button ID="Button15" runat="server" Text="打印订单" Width="100px" OnClientClick="preview();return false;"  class="C_input"/><br />
                    <asp:Button ID="Button8" runat="server" Text="修改金额" Width="100px" 
                        class="C_input" onclick="Button8_Click" CausesValidation="false" />
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="l_input" Height="18px" 
                        Width="91px"></asp:TextBox>
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    </form>
</body>
</html>
