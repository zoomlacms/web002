<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_UserOrderinfo, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>订单详情</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    #flotop{width: 100%;}
    #flotop{height: 30px;background: url(../images/top_bg.gif) repeat-x;z-index: 99;}
    /*顶部高为30px导航样式**/
    #msgDiv, #mgDiv
    {
        z-index: 10001;
        width: 550px;
        height: 350px;
        background: white;
        border: #CCC 1px solid;
        position: absolute;
        left: 50%;
        top: 20%;
        font-size: 12px;
        margin-left: -225px;
        display: none;
    }
    #bDiv
    {
        display: none;
        position: absolute;
        top: 0px;
        left: 0px;
        right: 0px;
        background-color: #777;
        filter: progid:DXImageTransform.Microsoft.Alpha(style=3,opacity=25,finishOpacity=75)opacity: 0.6;
    }
    /*弹出层*/
    #msgShut, #mgShut{width: 30px;height: 20px;cursor: pointer;line-height: 20px;text-align: center;float: right;color: #F00;font-weight: bold;}
</style>
<script type="text/javascript"> 
function order()
{
location.href="/manage/shop/diunpuorders.aspx?id="+<%=Request.QueryString["id"] %>+"&menu=print";
}
function preview()
{
    location.href="UserOrderinfo.aspx?id="+<%=Request.QueryString["id"] %>+"&menu=print";
    pageload();
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
<body>
<form id="Form1" runat="server">
<div>
<div class="us_topinfo" style="width: 98%">
您现在的位置：会员中心&gt;&gt;<a href="Default.aspx">我的店铺</a>&gt;&gt;<a href="OrderList.aspx">店铺订单管理</a>&gt;&gt;订单详情
</div>

    <!--startprint-->
    <table width="100%" cellpadding="2" cellspacing="1" class="us_seta" style="background-color: white;font-size: 12px">
        <tr class="tdbg">
            <td colspan="4" align="center" class="title">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" style="width: 13%; height: 23px">
                客户名称：<asp:Label ID="Reuser" runat="server" Text=""></asp:Label>
            </td>
            <td align="left" style="width: 14%; height: 23px">
                用 户 名：<asp:Label ID="Rename" runat="server" Text=""></asp:Label>
            </td>
            <td align="left" style="width: 13%; height: 23px">
                购买日期：<asp:Label ID="adddate" runat="server"></asp:Label>
            </td>
            <td style="width:20%;height: 23px" align="left">
                下单日期：<asp:Label ID="addtime" runat="server"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" style="width: 13%; height: 12px">
                需开发票：<asp:Label ID="Invoiceneeds" runat="server"></asp:Label>
            </td>
            <td align="left" style="width: 14%; height: 12px">
                已开发票：<asp:Label ID="Developedvotes" runat="server"></asp:Label>
            </td>
            <td align="left" style="width: 13%; height: 12px">
                付款状态：<asp:Label ID="Paymentstatus" runat="server"></asp:Label>
            </td>
            <td style="width:20%;height: 12px" align="left">
                物流状态：<asp:Label ID="StateLogistics" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <table width="100%" cellpadding="2" cellspacing="1" class="us_seta" style="background-color: white;font-size: 12px">
        <tr class="tdbg">
            <td style="width:35%;height:24px;" align="center">
                <table width="100%" border="0" cellspacing="1" cellpadding="0" style="font-size: 12px">
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="width:28%;height:24px" align="right" class="tdbgleft">
                            收货人姓名：
                        </td>
                        <td style="width:72%;height:24px" align="left">
                            <asp:Label ID="Reusers" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="height:24px" align="right" class="tdbgleft">
                            收货人地址：
                        </td>
                        <td style="height:24px" align="left">
                            <asp:Label ID="Jiedao" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="height:24px" align="right" class="tdbgleft">
                            收货人邮箱：
                        </td>
                        <td style="height:24px" align="left">
                            <asp:Label ID="Email" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="height:24px" align="right" class="tdbgleft">
                            发票信息：
                        </td>
                        <td style="height:24px" align="left">
                            <asp:Label ID="Invoice" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="height:24px" align="right" class="tdbgleft">
                            订单类型：
                        </td>
                        <td style="height:24px" align="left">
                            <asp:Label ID="Ordertype" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" class="tdbgleft" style="height: 24px">
                            要求送货时间：
                        </td>
                        <td align="left" style="height: 24px">
                            <asp:Label ID="Deliverytime" runat="server" Text=""></asp:Label>
                            <asp:Button ID="Button10" runat="server" Text="服务记录" OnClick="Button10_Click"/>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width:50%;" align="center">
                <table width="100%" border="0" cellspacing="1" cellpadding="0" style="font-size: 12px">
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="width:28%;height:24px" align="right" class="tdbgleft">
                            联系电话：
                        </td>
                        <td style="width:72%;height:24px" align="left">
                            <asp:Label ID="Phone" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" class="tdbgleft" style="height: 24px">
                            邮政编码：
                        </td>
                        <td align="left" style="height: 24px">
                            <asp:Label ID="ZipCode" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="height:24px" align="right" class="tdbgleft">
                            收货人手机：
                        </td>
                        <td style="height:24px" align="left">
                            <asp:Label ID="Mobile" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="height:24px" align="right" class="tdbgleft">
                            送货方式：
                        </td>
                        <td style="height:24px" align="left">
                            <asp:Label ID="Delivery" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="height:24px" align="right" class="tdbgleft">
                            包装方式：
                        </td>
                        <td style="height:24px" align="left">
                            <asp:Label ID="floMethod" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="height:24px" align="right" class="tdbgleft">
                            订单状态：
                        </td>
                        <td style="height:24px" align="left">
                            <asp:Label ID="OrderStatus" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <asp:Literal ID="ModelHtml" runat="server"></asp:Literal></table>
    <br />
    <table width="100%" cellspacing="1" class="us_seta" style="background-color: white;font-size: 12px">
        <tr>
            <td style="width:10%;" align="center" class="title">
                图片
            </td>
            <td style="width:18%;" align="center" class="title">
                商品名称
            </td>
            <td style="width:6%;" align="center" class="title">
                单位
            </td>
            <td style="width:6%;" align="center" class="title">
                数量
            </td>
            <td style="width:6%;" align="center" class="title">
                市场价
            </td>
            <td style="width:6%;" align="center" class="title">
                实价
            </td>
            <td style="width:6%;" align="center" class="title">
                指定价
            </td>
            <td style="width:6%;" align="center" class="title">
                金额
            </td>
            <td style="width:8%;" align="center" class="title">
                服务期限
            </td>
            <td style="width:12%;" align="center" class="title">
                备注
            </td>
        </tr>
        <asp:Repeater ID="procart" runat="server" OnItemDataBound="cartinfo_ItemDataBound">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td style="height:24px;" align="center">
                        <%#getproimg(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                    </td>
                    <td align="center">
                        <a href='http://<%#Eval("proname") %>' target='_blank'>
                            <%#Getprotype(Eval("ProID","{0}"))%>
                            <%#Eval("proname")%>
                        </a>
                    </td>
                    <td style="width:6%;" align="center">
                        <%#Eval("Danwei") %>
                    </td>
                    <td style="width:6%;" align="center">
                        <%#Eval("pronum") %>
                    </td>
                    <td style="width:6%;" align="center">
                        <%#getjiage(Eval("proclass","{0}"),"1", DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                    </td>
                    <td style="width:6%;" align="center">
                        <%#getshichangjiage(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                    </td>
                    <td style="width:6%;" align="center">
                        <%#shijia(Eval("proclass", "{0}"), Eval("ProID", "{0}"), DataBinder.Eval(Container, "DataItem.Shijia", "{0}"))%>
                    </td>
                    <td style="width:6%;" align="center">
                        <%#getprojia(Eval("ProID", "{0}"), DataBinder.Eval(Container, "DataItem.ID", "{0}"))%>
                    </td>
                    <td style="width:8%;" align="center">
                        <%#qixian(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                    </td>
                    <td align="center">
                        <%#beizhu(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                    </td>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            style="background-color: #F6F6F6;">
                            <td style="height:24px" align="center">
                                <%#getproimg(Eval("id","{0}"))%>
                            </td>
                            <td align="center">
                                <%#Getprotype(DataBinder.Eval(Container, "DataItem.id", "{0}"))%><%#Eval("proname")%>
                            </td>
                            <td style="width:6%;" align="center">
                                <%#getProUnit(DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                            </td>
                            <td style="width:6%;" align="center">
                                1
                            </td>
                            <td style="width:6%;" align="center">
                                <%#getjiage(Eval("proclass", "{0}"), "1", DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                            </td>
                            <td style="width:6%;" align="center">
                                <%#getjiage(Eval("proclass", "{0}"), "2", DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                            </td>
                            <td style="width:6%" align="center">
                                -
                            </td>
                            <td style="width:6%;" align="center">
                                -
                            </td>
                            <td style="width:8%;" align="center">
                                -
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td colspan="5"></td>
            <td style="height:24" align="left" colspan="5">
                合计：&nbsp;
                <asp:TextBox ID="Label2" runat="server" CssClass="l_input" Width="116px" Height="17px"></asp:TextBox>&nbsp;
                <asp:Button ID="Button8" runat="server" Text="修改" CssClass="C_input" onclick="Button8_Click" /> &nbsp;
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td colspan="1" style="height: 24px">
                &nbsp;运费：<asp:Label ID="Label32" runat="server" Text=""></asp:Label>
            </td>
            <td colspan="9" style="height: 24px" align="left">
                &nbsp; 包装费：<asp:Label ID="pack" runat="server"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width:50%;" align="left" colspan="5">
                &nbsp;实际金额：
                <asp:Label ID="Label29" runat="server" Text=""></asp:Label>
                +<asp:Label ID="Label30" runat="server" Text=""></asp:Label>
                +<asp:Label ID="packfei" runat="server"></asp:Label>
                ＝<asp:Label ID="Label31" runat="server" Text=""></asp:Label>
            </td>
            <td style="width:50%" align="right" colspan="5">
                &nbsp;已付款：<asp:Label ID="Label28" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td colspan="10">
                <span style="color:Red"><asp:Label ID="Label33" runat="server" Text=""></asp:Label></span>
            </td>
        </tr>
    </table>
    <!--endprint-->
    <table width="100%" cellpadding="2" cellspacing="1" class="us_seta" style="background-color: white;"
        id="TABLE1">
        <asp:Repeater ID="procart2" runat="server"><ItemTemplate></ItemTemplate></asp:Repeater>
        <tr class="tdbg">
            <td style="width:25%">
                <asp:HiddenField ID="orderID" runat="server" />
                <asp:Button ID="Button4" CssClass="C_input" Style="width: 100px;" runat="server" Text="订单有效" Width="100px" OnClientClick="SelectOrderState();return false;" />
            </td>
            <td><input type="button" id="Button2" class="C_input" style="width: 100px;" runat="server" value="已经支付" /></td>
            <td><asp:Button ID="Button9" CssClass="C_input" Style="width: 100px;" runat="server" Text="结清订单" Width="100px" Enabled="false" /></td>
            <td><asp:Button ID="btn3" CssClass="C_input" Style="width: 100px;" runat="server" Text="订单完成" Width="100px" OnClick="Button14_Click" /></td>
        </tr>
        <tr class="tdbg">
            <td><asp:Button ID="Button7" CssClass="C_input" Style="width: 100px;" runat="server" Text="客户已签收" Width="100px" Enabled="false" /></td>
            <td><asp:Button ID="Button11" CssClass="C_input" Style="width: 100px;" runat="server" Text="开发票" Width="100px" /></td>
            <td><asp:Button ID="Button6" CssClass="C_input" Style="width: 100px;" runat="server" Text="订单作废" Width="100px" OnClick="Button6_Click" /></td>
            <td><asp:Button ID="Button12" CssClass="C_input" Style="width: 100px;" runat="server" Text="删除订单" Width="100px" OnClick="Button12_Click" /></td>
        </tr>
        <tr class="tdbg">
            <td style="width:25%"><asp:Button ID="Button3" CssClass="C_input" Style="width: 100px;" runat="server" Width="100px" Text="发货" OnClientClick="SelectDelivery();return false;" /></td>
            <td style="width:25%"><asp:Button ID="Button13" CssClass="C_input" Style="width: 100px;" runat="server" Text="暂停处理" Width="100px" /></td>
            <td><asp:Button ID="Button15" CssClass="C_input" Style="width: 100px;" runat="server" Text="打印订单" Width="100px" OnClientClick="preview();return false;" /></td>
            <td><asp:Button ID="Button1" CssClass="C_input" Style="width: 100px;" runat="server" Text="打印签收单" Width="100px" OnClientClick="order();return false;" /><br /></td>
        </tr>
    </table>
    <asp:Button ID="Button5" CssClass="C_input" Style="width: 100px;" runat="server" Text="取消确认" Width="100px" OnClick="Button5_Click" Visible="false" />
</div>
<div id="msgDiv">
    <div id="msgShut" onclick="close()">关闭</div>
    <div id="msgDetail"></div>
</div>
<div id="bgDiv"></div>
</form>
</body>
</html>
<script type="text/javascript">
    ///订单状态
    function SelectOrderState() {
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
        msgDetail.innerHTML = "<p align=center><iframe src='/manage/shop/OrderSelState.aspx?id=" + ordreid + "' width='550' height='510' scrolling='no' frameborder='0'></iframe></p>"
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
        msgDetail.innerHTML = "<p align=center><iframe src='/manage/shop/OrderStateManage.aspx?type=1&id=" + ordreid + "' width='550' height='510' scrolling='no' frameborder='0'></iframe></p>"
    }
    //配送状态
    function SelectDelivery() {
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
        msgDetail.innerHTML = "<p align=center><iframe src='/manage/shop/OrderDeliverinfo.aspx?type=1&id=" + ordreid + "' width='550' height='410' scrolling='no' frameborder='0'></iframe></p>"
    }
    //签收状态
    function SelectSign() {
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
        msgDetail.innerHTML = "<p align=center><iframe src='/manage/shop/OrderSigninfo.aspx?type=1&id=" + ordreid + "' width='550' height='410' scrolling='no' frameborder='0'></iframe></p>"
    }
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
        msgDetail.innerHTML = "<p align=center><iframe src='/manage/shop/Suspendedinfo.aspx?type=1&id=" + ordreid + "' width='550' height='310' scrolling='no' frameborder='0'></iframe></p>"
    }
</script>