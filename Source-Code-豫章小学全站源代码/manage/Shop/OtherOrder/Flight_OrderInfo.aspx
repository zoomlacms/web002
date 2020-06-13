<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_OtherOrder_Flight_OrderInfo, App_Web_gsb2bvz2" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>航班订单详情</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
    @media print
    {
    }
    .Noprn
    {
        display: none;
    }
</style>
<script language="javascript"> 
    function preview()
    {
     window.open('Orderlistinfo.aspx?id=5&menu=print','打印预览','','');
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
<body  onload="pageload()">
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <a href="Hotel_Order_Manager.aspx">
            航班订单管理</a> &gt;&gt; <span>订单详情</span>
    </div>
    <div class="clearbox">
    </div>
    <br />
    <!--startprint-->
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
     <tr class="tdbg">
        <td colspan="4" align="center" class="title">
            <asp:Label ID="Label1" runat="server" Text="航班信息"></asp:Label>&nbsp;
     </td>
    </tr>
    </table>
        <div><h3>航班信息:</h3></div>
         <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
            <tr  class="tdbg">
             <td  style="width: 13%; height: 23px"  class="title" align="center" >旅游线：</td>
             <td style="width: 13%; height: 23px"  class="title" align="center" > 出发时间：</td>
             <td style="width: 13%; height: 23px"  class="title" align="center" >价格：</td>
             <td style="width: 13%; height: 23px"  class="title" align="center" > 机建/燃油：</td>
            </tr>
            <tr class="tdbg">
                <td align="center" style="width: 13%; height: 23px"><asp:Label ID="lblNo" runat="server" Text=""></asp:Label>
                </td>
                <td align="center" style="width: 14%; height: 23px"><asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
                <td align="center" style="width: 13%; height: 23px"><asp:Label ID="lblPrice" runat="server"></asp:Label>
                </td>
                <td width="20%" align="center" style="height: 23px"><asp:Label ID="lblInfo" runat="server"></asp:Label>
                </td>
            </tr>
    </table>
    <br />
    <div>
        <font style="font-size:large"><strong>乘客信息：</strong></font>&nbsp;&nbsp;&nbsp;保险总数:<asp:Label ID="lblIns" runat="server"></asp:Label>
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody2">
            <tr class="tdbg">
                <td width="25%" align="center" class="title">
                    乘客姓名
                </td>
                <td width="25%" align="center" class="title">
                    证件类型
                </td>
                <td width="25%" align="center" class="title">
                    证件号码
                </td>
                <td width="25%" align="center" class="title">
                    保险数量
                </td>
            </tr>
            <asp:Repeater ID="procart" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td width="25%" align="center">
                            <%#Eval("Name")%>
                            <%#Eval("Name_EN")%>
                        </td>
                        <td width="25%" align="center">
                            <%# GetCreType(GetCreID(Eval("CreID", "{0}"), 0))%>
                        </td>
                        <td width="25%" align="center">
                            <%# GetCreID(Eval("CreID", "{0}"),1)%>
                        </td>
                        <td width="25%" align="center">
                            <%#Eval("Insurance")%>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <br />
    <div>
        <h3>
            联系人信息:</h3>
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tr class="tdbg">
            <td height="24" align="center"  class="title">
                联系人姓名:
            </td>
             <td height="24" align="center"  class="title">
                联系人邮箱：
            </td>
            <td  height="24" align="center"  class="title">
                联系电话：
            </td>
             <td  height="24" align="center"  class="title">
                邮政编码：
            </td>
        </tr>
        <tr  class="tdbg">
            <td height="24" align="center">
                &nbsp;<asp:Label ID="lblEncName" runat="server" Text=""></asp:Label>
            </td>
            <td height="24" align="center">
                &nbsp;<asp:Label ID="Email" runat="server" Text=""></asp:Label>
            </td>
              <td  height="24" align="center">
                &nbsp;<asp:Label ID="Phone" runat="server" Text=""></asp:Label>
            </td>
             <td  height="24" align="center">
                &nbsp;<asp:Label ID="lblZipCode" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <!--endprint-->
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;"
        id="TABLE1">
        <tbody id="Tbody4">
            <asp:Repeater ID="procart2" runat="server">
                <ItemTemplate>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <br />
    </form>
</body>
</html>
