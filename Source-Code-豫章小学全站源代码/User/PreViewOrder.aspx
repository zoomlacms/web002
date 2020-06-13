<%@ page language="C#" autoeventwireup="true" inherits="User_PreViewOrder, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>购物订单管理</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body{font-size: 12px;}
#flotop{width: 100%;}
#flotop{height: 30px;background: url(../images/top_bg.gif) repeat-x;z-index: 99;}
/*顶部高为30px导航样式**/
#msgDiv, #mgDiv{z-index: 10001;width: 550px;height: 350px;background: white;border: #CCC 1px solid;position: absolute;left: 50%;top: 20%;font-size: 12px;margin-left: -225px;display: none;}
#bDiv{display: none;position: absolute;top: 0px;left: 0px;right: 0px;background-color: #777;filter: progid:DXImageTransform.Microsoft.Alpha(style=3, opacity=25, finishOpacity=75)opacity: 0.6;}
/*弹出层*/
#msgShut, #mgShut{width: 30px;height: 20px;cursor: pointer;line-height: 20px;text-align: center;float: right;color: #F00;font-weight: bold;}
</style>
<script language="javascript" type="text/javascript">
    function openWin(obj) {
        window.showModelessDialog("Shopfee/PayWindow.aspx?sid=" + obj + "", "", "dialogHeight:450px;dialogWidth:600px;status:no;scroll:no");
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="us_topinfo">
        您现在的位置：
        <a title="网站首页" href="/" target="_blank">
        <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>
        &gt;&gt;
        <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>
        &gt;&gt;
        购物订单管理
    </div>
    <!-- str -->
    <div class="us_topinfo" style="margin-top: 10px;">
        <a href="PreViewOrder.aspx?menu=Cartinfo">购物车管理</a>
        <a href="PreViewOrder.aspx?menu=Orderinfo">订单管理</a>
        <a href="PreViewOrder.aspx?menu=Orderinfo&type=1">已确定的订单</a>
        <a href="PreViewOrder.aspx?menu=Orderinfo&type=2">已发货订单</a>
        <a href="PreViewOrder.aspx?menu=Orderinfo&type=3">正常订单</a>
        <a href="PreViewOrder.aspx?menu=Orderinfo&type=4">已成交订单</a>
        <a href="PreViewOrder.aspx?menu=Orderinfo&type=5">已作废订单</a>
        <a href="PreViewOrder.aspx?menu=Orderinfo&type=0">代购订单</a>
        <a href="PreViewOrder.aspx?menu=Orderinfo&type=1&panel=1">代购历史订单</a>
        <a href="Shopfee/MyAuctionList.aspx">竞拍记录</a>
        <a href="HotelOrder.aspx?menu=Cartinfo">酒店订单</a>
        <a href="FeightOrder.aspx?menu=Cartinfo">机票订单</a>
        <a href="TripOrder.aspx?menu=Cartinfo">旅游订单</a>
        <span style="float: right">
            <input id="Button11" runat="server" onclick="location.href='/user/iServer/FiServer.aspx?menu=OrderType'" type="button" value="服务记录" />
        </span>
    </div>
    <div class="us_seta" style="margin-top: 10px;">
        <h1 style="text-align: center">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </h1>
        <asp:Panel ID="Orderlist" runat="server" Width="100%" Visible="false">
            <ul style="background-color: Blue">
                <li style="width: 14%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    订单编号 </li>
                <li style="width: 8%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    客户名称 </li>
                <li style="width: 8%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    下单时间 </li>
                <li style="width: 6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    订单金额 </li>
                <li style="width: 8%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    实际金额 </li>
                <li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    需要发票 </li>
                <li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    已开发票 </li>
                <li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    订单状态 </li>
                <li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    付款状态 </li>
                <li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    物流状态 </li>
                <li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    其他金额 </li>
                <li style="width: 10%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    操作 </li>
            </ul>
            <asp:Repeater ID="Ordertable" runat="server">
                <ItemTemplate>
                    <ul>
                        <li style="width: 14%; float: left; line-height: 28px; text-align: left; white-space: nowrap;
                            overflow: hidden"><a href="?menu=ViewOrderlist&id=<%#Eval("id") %>">
                                <%#Eval("OrderNo")%></a> </li>
                        <li style="width: 8%; float: left; line-height: 28px; text-align: center;">
                            <%#Eval("Reuser") %></li>
                        <li style="width: 8%; float: left; line-height: 28px; text-align: center; white-space: nowrap;
                            overflow: hidden">
                            <%#Eval("AddTime") %>
                        </li>
                        <li style="width: 8%; float: left; line-height: 28px; text-align: center;">
                            <%#formatcc(Eval("ordertype","{0}"),DataBinder.Eval(Container, "DataItem.Ordersamount", "{0:N2}"))%>
                        </li>
                        <li style="width: 8%; float: left; line-height: 28px; text-align: center;">
                            <%#getshijiage(Eval("id", "{0}"))%></li>
                        <li style="width: 7%; float: left; line-height: 28px; text-align: center;">
                            <%#fapiao(DataBinder.Eval(Container, "DataItem.Invoiceneeds", "{0}"))%></li>
                        <li style="width: 7%; float: left; line-height: 28px; text-align: center;">
                            <%#fapiao(DataBinder.Eval(Container, "DataItem.Developedvotes","{0}")) %></li>
                        <li style="width: 7%; float: left; line-height: 28px; text-align: center;">
                            <%#formatzt(DataBinder.Eval(Container, "DataItem.OrderStatus", "{0}"),"0")%></li>
                        <li style="width: 7%; float: left; line-height: 28px; text-align: center;">
                            <%#formatzt(DataBinder.Eval(Container, "DataItem.Paymentstatus", "{0}"),"1")%></li>
                        <li style="width: 7%; float: left; line-height: 28px; text-align: center;">
                            <%#formatzt(DataBinder.Eval(Container, "DataItem.StateLogistics", "{0}"),"2")%></li>
                        <li style="width: 7%; float: left; line-height: 28px; text-align: center;">
                            <%#ChkExtra(Eval("OrderNo").ToString(), Eval("id").ToString())%></li>
                        <li style="width: 10%; float: left; line-height: 28px; text-align: center;">
                            <%#getbotton(Eval("id","{0}")) %></li>
                    </ul>
                </ItemTemplate>
            </asp:Repeater>
            <ul>
                <li style="width: 98.5%; float: left; line-height: 28px; text-align: left;">共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条记录
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：
                    <asp:Label ID="Nowpage" runat="server" Text="" />
                    /
                    <asp:Label ID="PageSize" runat="server" Text="" />
                    页
                    <asp:TextBox ID="txtPage" runat="server" Width="25px" AutoPostBack="True" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                    条记录/页 转到第
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    页 </li>
            </ul>
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" Width="100%" Visible="false">
            <ul style="background-color: Blue">
                <li id="Li1" style="width: 19.9%; float: left; line-height: 30px; text-align: center;
                    background-color: #FFF5EC">订单编号 </li>
                <li style="width: 10%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    客户名称 </li>
                <li style="width: 10%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    下单时间 </li>
                <li style="width: 10%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    订单金额 </li>
                <li style="width: 10%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    实际金额 </li>
                <li style="width: 10%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    订单状态 </li>
                <li style="width: 8%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    付款状态 </li>
                <li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    物流状态 </li>
                <li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    其他金额 </li>
                <li style="width: 6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    操作 </li>
            </ul>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <ul>
                        <li id="1" style="width: 19.9%; float: left; line-height: 28px; text-align: left;
                            white-space: nowrap; overflow: hidden"><a href="?menu=ViewOrderlist&tp=Pre&id=<%#Eval("id") %>&">
                                <%#Eval("OrderNo")%></a> </li>
                        <li style="width: 10%; float: left; line-height: 28px; text-align: center;">
                            <%#Eval("Reuser") %>
                        </li>
                        <li style="width: 10%; float: left; line-height: 28px; text-align: center; white-space: nowrap;
                            overflow: hidden">
                            <%#Eval("AddTime") %>
                        </li>
                        <li style="width: 10%; float: left; line-height: 28px; text-align: center;">
                            <%#formatcc(Eval("ordertype", "{0}"), DataBinder.Eval(Container, "DataItem.Ordersamount", "{0:N2}"))%>
                        </li>
                        <li style="width: 10%; float: left; line-height: 28px; text-align: center;">
                            <%#getshijiage(Eval("id", "{0}"))%>
                        </li>
                        <li style="width: 10%; float: left; line-height: 28px; text-align: center;">
                            <%#formatzt(DataBinder.Eval(Container, "DataItem.OrderStatus", "{0}"),"0")%>
                        </li>
                        <li style="width: 8%; float: left; line-height: 28px; text-align: center;">
                            <%#formatzt(DataBinder.Eval(Container, "DataItem.Paymentstatus", "{0}"),"1")%>
                        </li>
                        <li style="width: 7%; float: left; line-height: 28px; text-align: center;">
                            <%#formatzt(DataBinder.Eval(Container, "DataItem.StateLogistics", "{0}"),"2")%>
                        </li>
                        <li style="width: 7%; float: left; line-height: 28px; text-align: center;">
                            <%#ChkExtra(Eval("OrderNo").ToString(), Eval("id").ToString())%>
                        </li>
                        <li style="width: 6%; float: left; line-height: 28px; text-align: center;">
                            <%#getbotton(Eval("id","{0}")) %>
                        </li>
                    </ul>
                </ItemTemplate>
            </asp:Repeater>
            <ul>
                <li style="width: 98.5%; float: left; line-height: 28px; text-align: left;">共
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    条记录
                    <asp:Label ID="Label3" runat="server" Text="" />
                    <asp:Label ID="Label4" runat="server" Text="" />
                    <asp:Label ID="Label5" runat="server" Text="" />
                    <asp:Label ID="Label6" runat="server" Text="" />
                    页次：
                    <asp:Label ID="Label7" runat="server" Text="" />
                    /
                    <asp:Label ID="Label8" runat="server" Text="" />
                    页
                    <asp:TextBox ID="txtpages" runat="server" Width="25px" AutoPostBack="True" OnTextChanged="txtpages_TextChanged"></asp:TextBox>
                    条记录/页 转到第
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    页 </li>
            </ul>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Width="100%" Visible="false">
            <ul>
                <li style="width: 24.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    商品名称 </li>
                <li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    来源 </li>
                <li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    单价 </li>
                <li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    数量 </li>
                <li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    备注 </li>
                <li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    操作 </li>
            </ul>
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <ul>
                        <li style="width: 24.6%; float: left; line-height: 30px; text-align: center; white-space: nowrap;
                            overflow: hidden"><a href='../shop.aspx?ItemID=<%#Eval("ProID") %>' target='_blank'>
                                <%#Gettypes(Eval("ProID","{0}"))%><%#DataBinder.Eval(Container, "DataItem.proname", "{0}")%>
                            </a></li>
                        <li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
                            <%#Eval("ProSeller")%>
                        </li>
                        <li style="width: 16.6%; float: left; line-height: 30px; text-align: center">
                            <%#GetPrice(Eval("id","{0}"),Eval("Shijia","{0}"))%>
                        </li>
                        <li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
                            <%#Eval("Pronum")%>
                        </li>
                        <li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
                            <%#Eval("Proinfo")%>
                            <%-- <%#formatnewstype(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>--%>
                        </li>
                        <li style="width: 16.6%; float: left; line-height: 30px; text-align: center">
                            <%# getAction(Eval("id").ToString())%>
                            <%--  <a  href="?menu=delprecartpro&id=<%#Eval("id") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"><%#GetAction(Eval("id").ToString())%></a>--%>
                        </li>
                    </ul>
                </ItemTemplate>
            </asp:Repeater>
            <ul>
                <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                    合计：
                    <asp:Label ID="preojiage" runat="server" Text=""></asp:Label>
                    元 </li>
                <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                    运费：
                    <asp:Label ID="preoyunfei" runat="server" Text=""></asp:Label>
                    元 </li>
                <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                    实际金额：
                    <asp:Label ID="preojiages" runat="server" Text=""></asp:Label>
                    +
                    <asp:Label ID="precyunfei" runat="server" Text=""></asp:Label>
                    ＝
                    <asp:Label ID="preorderallpromoney" runat="server" Text=""></asp:Label>
                    元 </li>
                <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                    已付款：
                    <asp:Label ID="prelabelmoney" runat="server" Text=""></asp:Label>
                    元 </li>
                <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                    快递单号：
                    <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                </li>
            </ul>
            <ul>
                <li style="width: 98.5%; float: none; line-height: 24px; text-align: center;">
                    <asp:Button ID="Button3" OnClientClick="javascript:history.go(-1);return false;" runat="server" Text="返回" />
                    &nbsp;
                    <asp:Button ID="Button6" runat="server" Text="在线支付" OnClientClick="return confirm('确定支付?')" OnClick="Button6_Click" />
                    &nbsp;
                    <asp:Button ID="btnANewbuys" runat="server" Text="重新购买" Visible="false" OnClick="btnANewbuys_Click" />
                    <input id="Button5" onclick="window.open('PreViewOrder.aspx?menu=rebuys&id=<%=sid %>');" type="button" value="重新购买" />
                    &nbsp;
                    <input id="Button10" onclick="location.href='/user/iServer/FiServer.aspx?OrderID=<%=sid %>';" type="button" value="提交问题" />
                </li>
            </ul>
        </asp:Panel>
        <asp:Panel ID="Cartinfo" runat="server" Width="100%" Visible="false">
            <ul>
                <li style="width: 28%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    购物车ID </li>
                <li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    用户名 </li>
                <li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    时间 </li>
                <li style="width: 10%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    数量 </li>
                <li style="width: 11.8%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    预计金额 </li>
                <li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    相关操作 </li>
            </ul>
            <asp:Repeater ID="Carttable" runat="server">
                <ItemTemplate>
                    <ul>
                        <li style="width: 28%; float: left; line-height: 24px; text-align: center; white-space: nowrap; overflow: hidden">
                            <%#Eval("Cartid")%>
                        </li>
                        <li style="width: 16.6%; float: left; line-height: 24px; text-align: center">
                            <%#Eval("Username")%>
                        </li>
                        <li style="width: 16.6%; float: left; line-height: 24px; text-align: center">
                            <%#Eval("Addtime")%>
                        </li>
                        <li style="width: 10%; float: left; line-height: 24px; text-align: center">
                            <%#Eval("Pronum")%>
                        </li>
                        <li style="width: 11.8%; float: left; line-height: 24px; text-align: center">
                            <%#formatcc("0", DataBinder.Eval(Container, "DataItem.AllMoney", "{0}"))%>
                        </li>
                        <li style="width: 16.6%; float: left; line-height: 24px; text-align: center">
                            <a href="?menu=delcart&id=<%#Eval("id") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
                            <a href="?menu=ViewCart&id=<%#Eval("id") %>">查看</a>
                            <a href="?menu=actcart&id=<%#Eval("id") %>">提交订单</a>
                        </li>
                    </ul>
                </ItemTemplate>
            </asp:Repeater>
            <ul>
                <li style="width: 98.5%; float: left; line-height: 28px; text-align: left;">共
                    <asp:Label ID="Allnum1" runat="server" Text=""></asp:Label>
                    条记录
                    <asp:Label ID="Toppage1" runat="server" Text="" />
                    <asp:Label ID="Nextpage1" runat="server" Text="" />
                    <asp:Label ID="Downpage1" runat="server" Text="" />
                    <asp:Label ID="Endpage1" runat="server" Text="" />
                    页次：
                    <asp:Label ID="Nowpage1" runat="server" Text="" />
                    /
                    <asp:Label ID="PageSize1" runat="server" Text="" />
                    页
                    <asp:TextBox ID="txtpage2" runat="server" Width="25px" AutoPostBack="True" OnTextChanged="txtpage2_TextChanged"></asp:TextBox>
                    条记录/页 转到第
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                    页 </li>
            </ul>
        </asp:Panel>
        <asp:Panel ID="ViewCartpro" runat="server" Width="100%" Visible="false">
            <ul>
                <li style="width: 24.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    商品名称 </li>
                <li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    单位 </li>
                <li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    数量 </li>
                <li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    销售类型 </li>
                <li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    市场价 </li>
                <li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    相关操作 </li>
            </ul>
            <asp:Repeater ID="cartproinfo" runat="server">
                <ItemTemplate>
                    <ul>
                        <li style="width: 24.6%; float: left; line-height: 30px; text-align: center; white-space: nowrap; overflow: hidden">
                            <%#DataBinder.Eval(Container, "DataItem.proname", "{0}")%>
                        </li>
                        <li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
                            <%# Eval("Danwei").ToString() == "" ? "空" : Eval("Danwei")%>
                        </li>
                        <li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
                            <%#Eval("pronum") %>
                        </li>
                        <li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
                            <%#formatnewstype(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
                        </li>
                        <li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
                            <%#getjiage(Eval("proclass","{0}"),"1",DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
                        </li>
                        <li style="width: 16.6%; float: left; line-height: 24px; text-align: center">
                            <a href="?menu=delcartpro&id=<%#Eval("id") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
                        </li>
                    </ul>
                </ItemTemplate>
            </asp:Repeater>
            <ul>
                <li style="width: 98.5%; float: none; line-height: 24px; text-align: center;">
                    <asp:Button ID="Button2" OnClientClick="javascript:history.go(-1);return false;" runat="server" Text="返回" />
                </li>
            </ul>
        </asp:Panel>
        <%--以下为代购列表显示--%>
        <asp:Panel ID="OrderProlist" runat="server" Width="100%" Visible="false">
            <ul>
                <li style="width: 24.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    商品名称 </li>
                <li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    单位 </li>
                <li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    数量 </li>
                <li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    销售类型 </li>
                <li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    市场价 </li>
                <li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    金额 </li>
            </ul>
            <div runat="server" id="userorderproview" visible="false">
                <asp:Repeater ID="userrep" runat="server">
                    <ItemTemplate>
                        <ul>
                            <li style="width: 24.6%; float: left; line-height: 30px; text-align: center; white-space: nowrap; overflow: hidden">
                                <a href='../shop.aspx?ItemID=<%#Eval("ProID") %>' target='_blank'>
                                    <%#Gettypes(Eval("ProID","{0}"))%><%#DataBinder.Eval(Container, "DataItem.proname", "{0}")%>
                                </a></li>
                            <li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
                                <%#Eval("Danwei") == "" ? "空" : Eval("Danwei")%>
                            </li>
                            <li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
                                <%#Eval("pronum") %>
                            </li>
                            <li style="width: 16.6%; float: left; line-height: 30px; text-align: center">
                                <%#formatnewstype(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
                            </li>
                            <li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
                                <%#getjiage(Eval("proclass", "{0}"), "1", DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
                            </li>
                            <li style="width: 16.6%; float: left; line-height: 30px; text-align: center">
                                <%#getprojia(Eval("proclass", "{0}"), DataBinder.Eval(Container, "DataItem.ID", "{0}"))%>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
                <ul>
                    <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                        合计：
                        <asp:Label ID="ojiage01" runat="server" Text=""></asp:Label>
                    </li>
                    <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                        运费：
                        <asp:Label ID="oyunfei01" runat="server" Text=""></asp:Label>
                    </li>
                    <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                        包装费：
                        <asp:Label ID="lblpack" runat="server" Text=""></asp:Label>
                    </li>
                    <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                        实际金额：
                        <asp:Label ID="ojiages01" runat="server" Text=""></asp:Label>
                        +
                        <asp:Label ID="cyunfei01" runat="server" Text=""></asp:Label>
                        +
                        <asp:Label ID="pack01" runat="server" Text=""></asp:Label>
                        ＝
                        <asp:Label ID="orderallpromoney01" runat="server" Text=""></asp:Label>
                    </li>
                    <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                        已付款：
                        <asp:Label ID="labelmoney01" runat="server" Text=""></asp:Label>
                    </li>
                    <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                        快递单号：
                        <asp:Label ID="label9" runat="server" Text=""></asp:Label>
                    </li>
                </ul>
                <asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
                <ul>
                    <li style="width: 98.5%; float: none; line-height: 24px; text-align: center;">
                        <asp:Button ID="Button8" OnClientClick="javascript:history.go(-1);return false;" runat="server" Text="返回" />
                        &nbsp;
                        <input id="Button14" onclick="window.open('PreViewOrder.aspx?menu=rebuy&id=<%=sid %>&type=<%=ViewState["Type"]  %>');" type="button" value="重新购买" />
                        &nbsp;
                        <input id="Button15" onclick="location.href='/user/iServer/FiServer.aspx?OrderID=<%=sid %>'" type="button" value="提交问题" />
                    </li>
                </ul>
            </div>
            <div id="orderview" runat="server">
                <%--以下输出代购产品列表实际网址--%>
                <asp:Repeater ID="OrderProview" runat="server">
                    <ItemTemplate>
                        <ul>
                            <li style="width: 24.6%; float: left; line-height: 30px; text-align: center; white-space: nowrap; overflow: hidden">
                                <a href='<%#Eval("Procontent") %>' target='_blank'>
                                    <%#Gettypes(Eval("ProID","{0}"))%><%#DataBinder.Eval(Container, "DataItem.proname", "{0}")%>
                                </a></li>
                            <li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
                                <%#Eval("Danwei") == "" ? "空" : Eval("Danwei")%>
                            </li>
                            <li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
                                <%#Eval("pronum") %>
                            </li>
                            <li style="width: 16.6%; float: left; line-height: 30px; text-align: center">
                                <%#formatnewstype(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
                            </li>
                            <li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
                                <%#getjiage(Eval("proclass", "{0}"), "1", DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
                            </li>
                            <li style="width: 16.6%; float: left; line-height: 30px; text-align: center">
                                <%#getprojia(Eval("proclass", "{0}"), DataBinder.Eval(Container, "DataItem.ID", "{0}"))%>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
                <ul>
                    <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                        合计：
                        <asp:Label ID="ojiage" runat="server" Text=""></asp:Label>
                    </li>
                    <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                        运费：
                        <asp:Label ID="oyunfei" runat="server" Text=""></asp:Label>
                    </li>
                    <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                        实际金额：
                        <asp:Label ID="ojiages" runat="server" Text=""></asp:Label>
                        +
                        <asp:Label ID="cyunfei" runat="server" Text=""></asp:Label>
                        ＝
                        <asp:Label ID="orderallpromoney" runat="server" Text=""></asp:Label>
                    </li>
                    <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                        已付款：
                        <asp:Label ID="labelmoney" runat="server" Text=""></asp:Label>
                    </li>
                    <li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
                        快递单号：
                        <asp:Label ID="label11" runat="server" Text=""></asp:Label>
                    </li>
                </ul>
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                <ul>
                    <li style="width: 98.5%; float: none; line-height: 24px; text-align: center;">
                        <asp:Button ID="Button1" OnClientClick="javascript:history.go(-1);return false;" runat="server" Text="返回" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="在线支付" OnClientClick="return confirm('确定支付?')" />
                        &nbsp;
                        <asp:Button ID="Button12" runat="server" OnClick="UserPurseBTN_Click" Text="余额支付" OnClientClick="return confirm('确定支付?')" />
                        &nbsp;
                        <asp:Button ID="btnANewBuy" runat="server" OnClick="btnANewBuy_Click" Text="重新购买" Visible="false" />
                        <input id="Button4" onclick="window.open('PreViewOrder.aspx?menu=rebuy&amp;id=<%=sid %>');" type="button" value="重新购买" />
                        &nbsp;
                        <input id="Button9" onclick="location.href='/user/iServer/FiServer.aspx?OrderID=<%=sid %>'" type="button" value="提交问题" />
                    </li>
                </ul>
            </div>
        </asp:Panel>
    </div>
    <asp:HiddenField ID="orderID" runat="server" />
    <div id="msgDiv">
        <div id="msgShut" onclick="close()">关闭</div>
        <div id="msgDetail"></div>
    </div>
    <div id="bgDiv"></div>
    </form>
    <script type="text/javascript">
        //延迟/暂停处理状态
        function SelectSuspend() {
            //背景
            var bgObj = document.getElementById("bgDiv");
            bgObj.style.width = (document.body.offsetWidth) + "px";
            bgObj.style.height = screen.height + "px";
            //定义窗口
            var msgObj = document.getElementById("msgDiv");
            msgObj.style.marginTop = -75 + document.documentElement.scrollTop + "px";
            //关闭
            document.getElementById("msgShut").onclick = function () {
                bgObj.style.display = msgObj.style.display = "none";
                window.location.href = window.location.href;
            }
            var ordreid = document.getElementById("orderID").value;
            msgObj.style.display = bgObj.style.display = "block";
            msgDetail.innerHTML = "<p align=center><iframe src='/manage/shop/Suspendedinfo.aspx?type=2&id=" + ordreid + "' width='550' height='310' scrolling='no' frameborder='0'></iframe></p>"
        }
        ///付款状态
        function SelectState() {
            //背景
            var bgObj = document.getElementById("bgDiv");
            bgObj.style.width = (document.body.offsetWidth) + "px";
            bgObj.style.height = screen.height + "px";
            //定义窗口
            var msgObj = document.getElementById("msgDiv");
            msgObj.style.marginTop = -75 + document.documentElement.scrollTop + "px";
            //关闭
            document.getElementById("msgShut").onclick = function () {
                bgObj.style.display = msgObj.style.display = "none";
                window.location.href = window.location.href;
            }
            var ordreid = document.getElementById("orderID").value;
            msgObj.style.display = bgObj.style.display = "block";
            msgDetail.innerHTML = "<p align=center><iframe src='/manage/shop/OrderStateManage.aspx?type=2&id=" + ordreid + "' width='550' height='510' scrolling='no' frameborder='0'></iframe></p>"
        }
    </script>
</body>
</html>