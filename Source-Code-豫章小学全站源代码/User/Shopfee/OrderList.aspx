<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.User.Shopfee.OrderList, App_Web_xj23mn1f" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>订单列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../../JS/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script language="javascript" type="text/javascript" src="../../JS/SelectCheckBox.js"></script>
<script type="text/javascript" language="javascript">
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
    function getinfo(id) {
        location.href = 'Orderlistinfo.aspx?id=' + id;
    }
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
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <a href="OrderList.aspx">订单管理</a> &gt;&gt; <span><a href="OrderList.aspx">代购订单</a></span>
    </div>
    <div class="clearbox"></div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tabs">
            <tr class="tdbg">
                <td style="width: 34%; height: 24px" align="center" class="title">
                    快速查找：
                    <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True">
                        <asp:ListItem Selected="True">请选择查找方式</asp:ListItem>
                        <asp:ListItem Value="1">我负责跟踪的订单</asp:ListItem>
                        <asp:ListItem Value="2">今天的新订单</asp:ListItem>
                        <asp:ListItem Value="3">所有订单</asp:ListItem>
                        <asp:ListItem Value="4">最近10天内的新订单</asp:ListItem>
                        <asp:ListItem Value="5">最近一个月内的新订单</asp:ListItem>
                        <asp:ListItem Value="6">未确认的订单</asp:ListItem>
                        <asp:ListItem Value="7">未付款的订单</asp:ListItem>
                        <asp:ListItem Value="8">未付清的订单</asp:ListItem>
                        <asp:ListItem Value="9">未送货的订单</asp:ListItem>
                        <asp:ListItem Value="10">未签收的订单</asp:ListItem>
                        <asp:ListItem Value="11">未结清的订单</asp:ListItem>
                        <asp:ListItem Value="13">已经作废的订单</asp:ListItem>
                        <asp:ListItem Value="14">暂停处理的订单</asp:ListItem>
                        <asp:ListItem Value="15">已发货的订单</asp:ListItem>
                        <asp:ListItem Value="16">已签收的订单</asp:ListItem>
                        <asp:ListItem Value="17">已结清的订单</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 66%;" align="center" class="title">
                    高级查询：
                    <asp:DropDownList ID="souchtable" runat="server">
                        <asp:ListItem Selected="True" Value="1">订单编号</asp:ListItem>
                        <asp:ListItem Value="2">客户名称</asp:ListItem>
                        <asp:ListItem Value="3">用户名</asp:ListItem>
                        <asp:ListItem Value="4">收货人</asp:ListItem>
                        <asp:ListItem Value="5">联系地址</asp:ListItem>
                        <asp:ListItem Value="6">联系电话</asp:ListItem>
                        <asp:ListItem Value="7">下单时间</asp:ListItem>
                        <asp:ListItem Value="8">备注/留言</asp:ListItem>
                        <asp:ListItem Value="9">商品名称</asp:ListItem>
                        <asp:ListItem Value="10">收货人邮箱</asp:ListItem>
                        <asp:ListItem Value="12">内部记录</asp:ListItem>
                        <asp:ListItem Value="13">跟单员</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="souchkey" runat="server" CssClass="l_input" />
                    <asp:Button ID="souchok" runat="server" CssClass="C_input" Text="搜索" OnClick="souchok_Click" />
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td style="width: 2px; height: 24px" align="center" class="title">
                    <input type="checkbox" id="Checkall" onclick="javascript:CheckAll(this);" />
                </td>
                <td style="width: 145px" align="center" class="title">
                    <span class="tdbgleft">订单编号</span>
                </td>
                <td style="width: 75px" align="center" class="title">
                    <span class="tdbgleft">客户名称</span>
                </td>
                <td style="width: 65px" align="center" class="title">
                    <span class="tdbgleft">用户名</span>
                </td>
                <td style="width: 160px" align="center" class="title">
                    <span class="tdbgleft">下单时间</span>
                </td>
                <td align="center" class="title" style="width: 68px">
                    <span class="tdbgleft">购物金额</span>
                </td>
                <td style="width: 65px" align="center" class="title">
                    <span class="tdbgleft">付款总额</span>
                </td>
                <td style="width: 75px" align="center" class="title">
                    <span class="tdbgleft">订单状态</span>
                </td>
                <td style="width: 75px" align="center" class="title">
                    <span class="tdbgleft">付款状态</span>
                </td>
                <td style="width: 75px" align="center" class="title">
                    <span class="tdbgleft">物流状态</span>
                </td>
                <td style="width: 75px" align="center" class="title">
                    <span class="tdbgleft">其他费用</span>
                </td>
            </tr>
            <asp:Repeater ID="Orderlisttable" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" id="<%#Eval("id") %>" onmouseover="this.className='tdbgmouseover'" ondblclick="getinfo(this.id)" onmouseout="this.className='tdbg'">
                        <td style="height: 24px" align="center">
                            <%#Getclickbotton(DataBinder.Eval(Container,"DataItem.id","{0}"))%>
                        </td>
                        <td style="height: 24px" align="center">
                            <%#getorderno(Eval("id","{0}"))%>
                        </td>
                        <td style="height: 24px" align="center">
                            <%#GetUser(DataBinder.Eval(Container, "DataItem.Reuser", "{0}"))%>
                        </td>
                        <td style="height: 24px" align="center">
                            <a onclick="opentitle('../../manage/User/Userinfo.aspx?id=<%#Eval("userId") %>','查看会员')" href="#" title="查看会员">
                                <%#GetUsers(DataBinder.Eval(Container, "DataItem.userId", "{0}"))%></a>
                        </td>
                        <td style="height: 24px" align="center">
                            <%#Eval("AddTime") %>
                        </td>
                        <td style="height: 24px" align="right">
                            <%#getOrdersamount(DataBinder.Eval(Container, "DataItem.Ordersamount", "{0}"))%>
                        </td>
                        <td style="height: 24px" align="right">
                            <%#formatcs(DataBinder.Eval(Container,"DataItem.Receivablesamount","{0:N2}"))%><%#getMoney_sign(Eval("Money_code").ToString())%>
                        </td>
                        <td style="height: 24px" align="center">
                            <%#formatzt(DataBinder.Eval(Container, "DataItem.OrderStatus", "{0}"),"0")%>
                        </td>
                        <td style="height: 24px" align="center">
                            <%#formatzt(DataBinder.Eval(Container, "DataItem.Paymentstatus", "{0}"),"1")%>
                        </td>
                        <td style="height: 24px" align="center">
                            <%#formatzt(DataBinder.Eval(Container, "DataItem.StateLogistics", "{0}"),"2")%>
                        </td>
                        <td style="height: 24px" align="center">
                            <a href="#" onclick='javascript:window.open("/manage/Common/Extra.aspx?OrderID=<%#Eval("id")%>","","width=600,height=450,resizable=0,scrollbars=yes");'>
                                其他费用</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td style="height: 24px" colspan="6" align="right">
                    本次查询合计：<br />
                    总计金额：
                </td>
                <td style="height: 24px; width: 68px" align="right">
                    <asp:Label ID="thisall" runat="server"></asp:Label><br />
                    <asp:Label ID="allall" runat="server"></asp:Label>
                </td>
                <td style="height: 24px; width: 88px" align="center">
                    &nbsp;
                </td>
                <td style="height: 24px" colspan="3" align="center">
                    &nbsp;
                </td>
            </tr>
            <tr class="tdbg">
                <td style="height: 24px" colspan="11" align="center" class="tdbgleft">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条记录
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />
                    条记录/页 转到第
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>
                    页
                </td>
            </tr>
            <tr>
                <td style="height: 24px" colspan="11">
                    说明：“已结清”与“已付款”的订单不允许删除,当订单号码成“灰色”代表此订单已“作废”
                </td>
            </tr>
            <tr>
                <td style="height: 24px" colspan="11">
                    <asp:Button ID="Button1" CssClass="C_input" Style="width: 110px;" Text="删除选中的订单" runat="server" OnClick="Button1_Click1" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" />
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>