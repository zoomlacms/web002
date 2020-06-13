<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_OtherOrder_Travel_Orderinfo, App_Web_gsb2bvz2" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>旅游订单详情</title>
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
     window.open('Travel_Orderinfo.aspx?id=5&menu=print','打印预览','','');
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
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <a href="TravelOrder_Manager.aspx">
            旅游订单管理</a> &gt;&gt; <span>订单详情</span>
    </div>
    <div class="clearbox">
    </div>
    <br />
    <!--startprint-->
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
     <tr class="tdbg">
        <td align="center" class="title">
            <asp:Label ID="Label1" runat="server" Text="旅游信息"></asp:Label>&nbsp;
     </td>
    </tr>
    </table>
        <div><h3>旅游信息:</h3></div>
         <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
            <tr  class="tdbg">
             <td  style="width: 13%; height: 23px"  class="title" align="center" >旅游线</td>
             <td style="width: 13%; height: 23px"  class="title" align="center" >出发时间</td>
             <td style="width: 13%; height: 23px"  class="title" align="center" >成人价格</td>
             <td style="width: 13%; height: 23px"  class="title" align="center" >儿童数量</td>
             <td style="width: 13%; height: 23px"  class="title" align="center" >成人数量</td>
            </tr>
            <tr class="tdbg">
                <td align="center" style="width: 13%; height: 23px">
                <asp:HyperLink ID="hlNo" runat="server"></asp:HyperLink> </td>
                <td align="center" style="width: 14%; height: 23px"><asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
                <td align="center" style="width: 13%; height: 23px"><asp:Label ID="lblPrice" runat="server"></asp:Label>
                </td>
                <td width="20%" align="center" style="height: 23px"><asp:Label ID="lblInfo" runat="server"></asp:Label>
                </td>
                <td width="20%" align="center" style="height: 23px"><asp:Label ID="lblStock" runat="server"></asp:Label>
                </td>
            </tr>
    </table>
    <br />
    <div>
        <h3>
            旅客信息:</h3>
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody2">
            <tr class="tdbg">
                <td width="25%" align="center" class="title">
                    旅客姓名
                </td>
                <td width="25%" align="center" class="title">
                    证件类型
                </td>
                <td width="25%" align="center" class="title">
                    证件号码
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
                联系人姓名
            </td>
             <td height="24" align="center"  class="title">
                联系人邮箱
            </td>
            <td  height="24" align="center"  class="title">
                联系电话
            </td>
             <td  height="24" align="center"  class="title">
                邮政编码
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
        <tr>
        <td align="center">总金额:<asp:Label ID="lblmoney" runat="server"></asp:Label></td>
        <td align="center">保险数量:<asp:Label ID="lblIns" runat="server"></asp:Label></td>
        <td align="center">差额:<asp:Label ID="lblCo" runat="server"></asp:Label></td><td></td>
        </tr>
        <tbody id="Tbody4">
            <tr class="tdbg">
                <td width="25%" rowspan="3">
                <asp:Label ID="Label31" runat="server" Text="" Visible="false"></asp:Label>
                    <asp:Button ID="Button4" class="C_input"  style="width:100px;" runat="server" Text="确认订单" Width="100px" OnClick="Button4_Click"  /><br />
                    <asp:Button ID="Button5" class="C_input"  style="width:100px;" runat="server" Text="取消确认" Width="100px" OnClick="Button5_Click"  /><br />
                    <asp:Button ID="Button3" class="C_input"  style="width:100px;" runat="server" Text="发货" Width="100px" OnClick="Button3_Click"  />
                </td>
                <td width="25%" rowspan="3">
                    <asp:Button ID="Button2" class="C_input"  style="width:100px;" runat="server" Text="已经支付" Width="100px" OnClick="Button2_Click"  /><br />
                    <asp:Button ID="Button7" class="C_input"  style="width:100px;" runat="server" Text="客户已签收" Width="100px" OnClick="Button7_Click"  /><br />
                    <asp:Button ID="Button6" class="C_input"  style="width:100px;" runat="server" Text="订单作废" Width="100px" OnClick="Button6_Click" />
                </td>
                <td width="25%" rowspan="3">
                    <asp:Button ID="Button13" class="C_input"  style="width:100px;" runat="server" Text="暂停处理" Width="100px" OnClick="Button13_Click"  /><br />
                    <asp:Button ID="Button14" class="C_input"  style="width:100px;" runat="server" Text="恢复正常" Width="100px" OnClick="Button14_Click"  /><br />
                    <asp:Button ID="Button12" class="C_input"  style="width:100px;" runat="server" Text="删除订单" Width="100px" OnClick="Button12_Click"  />
                </td>
                <td width="25%" rowspan="3">
                    <asp:Button ID="Button9" class="C_input"  style="width:100px;" runat="server" Text="结清订单" Width="100px" OnClick="Button9_Click"  /><br />
                    <asp:Button ID="Button11" class="C_input"  style="width:100px;" runat="server" Text="开发票" Width="100px" OnClick="Button11_Click" /><br />
                 </td>
            </tr>
            <tr class="tdbg">
            </tr>
            <tr class="tdbg">
            </tr>
        </tbody>
    </table>
    <br />
    </form>
    
</body>
</html>
