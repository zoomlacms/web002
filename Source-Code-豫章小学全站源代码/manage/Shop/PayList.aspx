<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.PayList, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>支付明细</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
	{
    var oItem = spanChk.children;
    var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
    xState=theBox.checked;
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        if(elm[i].checked!=xState)
        elm[i].click();
    }
	}
	</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; 明细记录 &gt;&gt; <span>支付明细</span>
	</div>
    <div class="clearbox"></div>    
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">

      <tbody id="Tabs" >

        <tr class="tdbg">
          <td width="34%" height="24" align="center" class="title">快速查找：
          <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="true">
              <asp:ListItem Selected="True" Value="1">所有在线支付记录</asp:ListItem>
              <asp:ListItem Value="2">最近10天内的新记录</asp:ListItem>
              <asp:ListItem Value="3">最近一月内的新记录</asp:ListItem>
              <asp:ListItem Value="4">未成功的在线支付记录</asp:ListItem>
              <asp:ListItem Value="5">支付成功的在线支付记录</asp:ListItem>
          </asp:DropDownList></td>
          <td width="66%" align="center" class="title">高级查询：
          <asp:DropDownList ID="souchtable" runat="server">
              <asp:ListItem Selected="True" Value="PaymentNum">在线支付记录编号</asp:ListItem>
              <asp:ListItem Value="UserName">用户名</asp:ListItem>
              <asp:ListItem Value="PayTime">交易时间</asp:ListItem>
          </asp:DropDownList>
          <asp:TextBox ID="souchkey" runat="server" class="l_input"/>
          <asp:Button ID="souchok" runat="server" class="C_input" Text="搜索" OnClick="souchok_Click" 
                  /></td>
        </tr>
      </tbody>
    </table>
    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody1">
        <tr class="tdbg">
          <td width="135" align="center" class="title"><span class="tdbgleft">支付序号</span></td>
          <td width="110" align="center" class="title"><span class="tdbgleft">用户名</span></td>
          <td width="126" align="center" class="title"><span class="tdbgleft">支付平台</span></td>
          <td width="164" align="center" class="title"><span class="tdbgleft">交易时间</span></td>
          <td width="109" align="center" class="title"><span class="tdbgleft">汇款金额</span></td>
          <td width="110" align="center" class="title"><span class="tdbgleft">实际转帐金额</span></td>
          <td width="86" align="center" class="title"><span class="tdbgleft">交易状态</span></td>
        </tr>
          <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
           <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left"><%#Eval("PaymentNum") %></td>
          <td height="24" align="center"><%#getusername(Eval("UserID","{0}"))%></td>
          <td height="24" align="center"><%#getPayPlat(Eval("PayPlatID","{0}"))%></td>
          <td height="24" align="right"><%#Eval("PayTime")%></td>
          <td height="24" align="right" ><%#Eval("MoneyPay","{0:f}") %></td>
          <td height="24" align="center"><%#Eval("MoneyTrue","{0:f}") %></td>
          <td height="24" align="center"><%# GetStatus(Eval("Status","{0}"))%></td>
        </tr>      
          </ItemTemplate>
          </asp:Repeater> 
        <tr class="tdbg">
<td height="22" colspan="7" align="center" class="tdbgleft">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条记录  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条记录/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页</td>
        </tr>
      </tbody>
    </table>
    
    <div class="clearbox"></div> 
    <br />
</form>
</body>
</html>