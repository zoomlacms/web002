<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_UserOrderinfo, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>订单详情</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style>
#flotop{ width:100%;}
#flotop {height:30px;   background:url(../images/top_bg.gif) repeat-x;z-index:99; }/*顶部高为30px导航样式**/
#msgDiv,#mgDiv {z-index:10001;width:550px;height:350px; background:white; border:#CCC 1px solid;position:absolute;left:50%;top:20%;font-size:12px;margin-left:-225px; display: none;}
#bDiv{display: none;position: absolute;top: 0px;left: 0px;right:0px; background-color: #777; filter:progid:DXImageTransform.Microsoft.Alpha(style=3,opacity=25,finishOpacity=75)opacity: 0.6;}/*弹出层*/
#msgShut,#mgShut{ width:30px; height:20px; cursor:pointer; line-height:20px; text-align:center; float:right; color:#F00; font-weight:bold;}
</style>
<script language="javascript"> 
function preview(){
    location.href="UserOrderinfo.aspx?id="+<%=Request.QueryString["id"] %>+"&menu=print";
    pageload();   
}       
        
function order()
{
location.href="diunpuorders.aspx?id="+<%=Request.QueryString["id"] %>+"&menu=print";
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
<body onload=" pageload();">
<form id="form1" runat="server">
<div class="r_navigation">
<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <a href="UserOrderlist.aspx">店铺订单</a>&gt;&gt; <span>订单详情</span>
</div>
<div class="clearbox"></div><br />
<!--startprint-->
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tr class="tdbg">
        <td colspan="4" align="center" class="title">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;
            <asp:HiddenField ID="orderID" runat='server' />
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
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
        <td width="20%" align="left" style="height: 12px">
            物流状态：<asp:Label ID="StateLogistics" runat="server"></asp:Label>
        </td>
    </tr>
</table>
<br />
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tr class="tdbg">
            <td width="50%" height="24" align="center">
                <table width="100%" border="0" cellspacing="1" cellpadding="0">
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td width="28%" height="24" align="right" class="tdbgleft">
                            收货人姓名：
                        </td>
                        <td width="72%" height="24" align="left">
                            &nbsp;<asp:Label ID="Reusers" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="24" align="right" class="tdbgleft">
                            收货人地址：
                        </td>
                        <td height="24" align="left">
                            &nbsp;<asp:Label ID="Jiedao" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="24" align="right" class="tdbgleft">
                            收货人邮箱：
                        </td>
                        <td height="24" align="left">
                            &nbsp;<asp:Label ID="Email" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="24" align="right" class="tdbgleft">
                            发票信息：
                        </td>
                        <td height="24" align="left">
                            &nbsp;<asp:Label ID="Invoice" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="24" align="right" class="tdbgleft">
                            订单类型：
                        </td>
                        <td height="24" align="left">
                            &nbsp;<asp:Label ID="Ordertype" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" class="tdbgleft" style="height: 24px">
                            要求送货时间：
                        </td>
                        <td align="left" style="height: 24px">
                            &nbsp;<asp:Label ID="Deliverytime" runat="server" Text="" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button10" runat="server" Text="服务记录" onclick="Button10_Click" />
                        </td>
                    </tr>
                </table>
            </td>
            <td width="50%" align="center">
                <table width="100%" border="0" cellspacing="1" cellpadding="0">
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td width="28%" height="24" align="right" class="tdbgleft">
                            联系电话：
                        </td>
                        <td width="72%" height="24" align="left">
                            &nbsp;<asp:Label ID="Phone" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" class="tdbgleft" style="height: 24px">
                            邮政编码：
                        </td>
                        <td align="left" style="height: 24px">
                            &nbsp;<asp:Label ID="ZipCode" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="24" align="right" class="tdbgleft">
                            收货人手机：
                        </td>
                        <td height="24" align="left">
                            &nbsp;<asp:Label ID="Mobile" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="24" align="right" class="tdbgleft">
                            送货方式：
                        </td>
                        <td height="24" align="left">
                            &nbsp;<asp:Label ID="Delivery" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                     <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="24" align="right" class="tdbgleft">
                            包装方式：&nbsp;
                        </td>
                        <td height="24" align="left">
                            &nbsp;<asp:Label ID="floMethod" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
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
</table>
<br />
 <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;"> <asp:Literal ID="ModelHtml" runat="server"></asp:Literal></table>
 <br />
<table width="100%" cellspacing="1" class="border" style="background-color: white;">
    <tr>
        <td width="10%" align="center" class="title">
            图片
        </td>
        <td width="18%" align="center" class="title">
            商品名称
        </td>
        <td width="6%" align="center" class="title">
            单位
        </td>
        <td width="6%" align="center" class="title">
            数量
        </td>
        <td width="6%" align="center" class="title">
            市场价
        </td>
        <td width="6%" align="center" class="title">
            实价
        </td>
        <td width="6%" align="center" class="title">
            指定价
        </td>
        <td width="6%" align="center" class="title">
            金额
        </td>
        <td width="8%" align="center" class="title">
            服务期限
        </td>
        <td width="12%" align="center" class="title">
            备注
        </td>
    </tr>
    <asp:Repeater ID="procart" runat="server" OnItemDataBound="cartinfo_ItemDataBound">
        <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="24" align="center">
                    <%#getproimg(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                </td>
                <td align="center">
                <a href='http://<%#Eval("proname") %>' target='_blank'> 
                    <%#Getprotype(Eval("ProID","{0}"))%>
                    <%#Eval("proname")%>
                    </a>
                </td>
                <td width="6%" align="center">
                    <%#Eval("Danwei") %>
                </td>
                <td width="6%" align="center">
                    <%#Eval("pronum") %>
                </td>
                <td width="6%" align="center">
                    <%#getjiage(Eval("proclass","{0}"),"1", DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                </td>
                <td width="6%" align="center">
                    <%#getshichangjiage(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                </td>
                <td width="6%" align="center">
                    <%#shijia(Eval("proclass", "{0}"), Eval("ProID", "{0}"), DataBinder.Eval(Container, "DataItem.Shijia", "{0}"))%>
                </td>
                <td width="6%" align="center">
                    <%#getprojia(Eval("ProID", "{0}"), DataBinder.Eval(Container, "DataItem.ID", "{0}"))%>
                </td>
                <td width="8%" align="center">
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
                            <%#getjiage(Eval("proclass", "{0}"), "1", DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                        </td>
                        <td width="6%" align="center">
                            <%#getjiage(Eval("proclass", "{0}"), "2", DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                        </td>
                        <td width="6%" align="center">
                            -
                        </td>
                        <td width="6%" align="center">
                            -
                        </td>
                        <td width="8%" align="center">
                            -
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg"onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td colspan="6"></td>
        <td height="24" align="left" colspan="4">合计：&nbsp;
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
        <td width="50%" align="left" colspan="5">
            &nbsp;实际金额：
            <asp:Label ID="Label29" runat="server" Text=""></asp:Label>
            +<asp:Label ID="Label30" runat="server" Text=""></asp:Label>
            +<asp:Label ID="packfei" runat="server"></asp:Label>＝<asp:Label ID="Label31"
                runat="server" Text=""></asp:Label>
        </td>
        <td width="50%" align="right" colspan="5">
            &nbsp;已付款：<asp:Label ID="Label28" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td colspan="10">
                <font color="red">
                    <asp:Label ID="Label33" runat="server" Text=""></asp:Label></font>
            </td>
        </tr>
</table>
<br />
<!--endprint-->
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;" id="TABLE1">
    <asp:Repeater ID="procart2" runat="server">
        <ItemTemplate>
        </ItemTemplate>
    </asp:Repeater>
    
    <tr class="tdbg">
            <td width="25%" rowspan="3">
                <asp:Button ID="Button4" class="C_input"  style="width:100px;" runat="server" Text="订单有效" Width="100px"  OnClientClick="SelectOrderState();return false;"/><br />
                <asp:Button ID="Button7" class="C_input"  style="width:100px;" runat="server" Text="客户已签收" Width="100px"/><br />
                <asp:Button ID="Button3" class="C_input"  style="width:100px;" runat="server" Text="发货" Width="100px" OnClientClick="SelectDelivery(); return false;"  />
            </td>
            <td width="25%" rowspan="3">
                <asp:Button ID="Button2" class="C_input"  style="width:100px;" runat="server" Text="付款状态" Width="100px" OnClientClick="SelectState();return false;" /><br />
                <asp:Button ID="Button13" class="C_input"  style="width:100px;" runat="server" Text="暂停处理" Width="100px" OnClick="Button13_Click" OnClientClick="SelectSuspend(); return false;"  /><br />
                <asp:Button ID="Button6" class="C_input"  style="width:100px;" runat="server" Text="订单作废" Width="100px" OnClick="Button6_Click" />
            </td>
            <td width="25%" rowspan="3">
                <asp:Button ID="Button9" class="C_input"  style="width:100px;" runat="server" Text="结清订单" Width="100px" OnClick="Button9_Click"  /><br />
                <asp:Button ID="Button11" class="C_input"  style="width:100px;" runat="server" Text="开发票" Width="100px" OnClientClick="SelectTicState();return false;" /><br />
                <asp:Button ID="btn3" class="C_input"  style="width:100px;" runat="server"  Text="订单完成" Width="100px" onclick="btn3_Click" /><br />
               
            </td>
            <td width="25%" rowspan="3">
                <asp:Button ID="Button12" class="C_input"  style="width:100px;" runat="server" Text="删除订单" Width="100px" OnClick="Button12_Click"  /><br />
                 <asp:Button ID="Button1" class="C_input"  style="width:100px;" runat="server" Text="打印签收单" Width="100px" OnClientClick="order();return false;"  /><br />
                <asp:Button ID="Button15" class="C_input"  style="width:100px;" runat="server" Text="打印订单" Width="100px" OnClientClick="preview();return false;"  /><br />
            </td>
        </tr>
</table>
<div id="flotop"><div id="msgDiv"><div id="msgShut">关闭</div>
<div id="msgDetail"></div></div><div id="bgDiv"></div></div>
<script>

    ///发票状态
    function SelectTicState() {
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
        msgDetail.innerHTML = "<p align=center><iframe src='Ordertic.aspx?id=" + ordreid + "' width='550' height='430' scrolling='no' frameborder='0'></iframe></p>"

    }

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
        msgDetail.innerHTML = "<p align=center><iframe src='OrderSelState.aspx?id=" + ordreid + "' width='550' height='510' scrolling='no' frameborder='0'></iframe></p>"

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
        msgDetail.innerHTML = "<p align=center><iframe src='OrderStateManage.aspx?id="+ordreid+"' width='550' height='510' scrolling='no' frameborder='0'></iframe></p>"

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
        msgDetail.innerHTML = "<p align=center><iframe src='OrderDeliverinfo.aspx?id=" + ordreid + "' width='550' height='470' scrolling='no' frameborder='0'></iframe></p>"
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
        msgDetail.innerHTML = "<p align=center><iframe src='OrderSigninfo.aspx?id=" + ordreid + "' width='550' height='410' scrolling='no' frameborder='0'></iframe></p>"
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
        msgDetail.innerHTML = "<p align=center><iframe src='Suspendedinfo.aspx?id=" + ordreid + "' width='550' height='310' scrolling='no' frameborder='0'></iframe></p>"
    }
</script>

<div class="clearbox"></div>
 <asp:Button ID="Button5" class="C_input"  runat="server" Text="订单无效" OnClick="Button5_Click" Visible="false"  /><br />
</form>
</body>
</html>
