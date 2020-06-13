<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_AddDeliverType, App_Web_5abfvvyw" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加送货方式</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 商城管理 &gt;&gt; 商城设置 &gt;&gt; <a href="DeliverType.aspx">送货方式管理</a> &gt;&gt;<a href="AddDeliverType.aspx" target="_self">添加送货方式</a></div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
  <tbody id="Tbody1">
    <tr class="tdbg">
      <td height="24" colspan="2" align="center" class="title">添加送货方式</td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td width="24%" height="24" class="tdbg"><strong>送货方式名称</strong></td>
      <td width="76%" height="24" ><asp:TextBox ID="deliname" runat="server" Width="300px" class="l_input" />
          <asp:HiddenField ID="uptype" runat="server" />
          <asp:HiddenField ID="id" runat="server" />
      </td>
    </tr>        
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
      <td height="24" class="tdbg"><strong>送货方式简介</strong></td>
      <td height="24" ><asp:TextBox ID="deliinfo" class="l_input" runat="server"  Height="177px" TextMode="MultiLine" Width="428px" /></td>
    </tr>
       <tr class="tdbg" runat="server" id="aas" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" ><strong>运费</strong></td>
      <td height="24">
          <asp:TextBox ID="delitype" class="l_input" runat="server" Width="82px"></asp:TextBox>元</td>
    </tr>
    
   <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
      <td height="24" class="tdbg"><strong>费用</strong></td>
      <td height="24" >
              <asp:RadioButtonList ID="IsOpen" runat="server" RepeatDirection="Horizontal"   AutoPostBack="True" onselectedindexchanged="IsOpen_SelectedIndexChanged">
              <asp:ListItem Value="1">免费</asp:ListItem>
              <asp:ListItem Value="2">按重量计算运费</asp:ListItem>
               <asp:ListItem Value="3">固定值</asp:ListItem>
   </asp:RadioButtonList></td>
    </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbg"><strong>税率</strong></td>
      <td ><asp:TextBox ID="shuilv" class="l_input" runat="server" Text='0' Width="50px" />%</td>
    </tr>
       <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
      <td height="24" class="tdbg">&nbsp;</td>
      <td height="24" ><label for="ctl00_CphContent_ChkIsDefault">
        <asp:CheckBox ID="selectto" Text="设为默认送货方式" runat="server" />            
      </label></td>
    </tr>
    <tr>
      <td height="24" colspan="2" align="center"><asp:Button ID="Button1" class="C_input"  style="width:110px;"  Text="保存送货方式" runat="server" OnClick="Button1_Click" />          </td>
    </tr>
  </tbody>
</table>
<div runat="server" id="aa2">
 <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white; margin-top:6px;" >
  <tbody id="Tbody4">
    <tr class="tdbg">
      <td colspan="2" align="center" class="style2"><span class="spacingtitle">同一城市间运费标准</span></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td width="24%" class="tdbg"><strong>货运商所属省份：</strong></td>
      <td width="76%">
          <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
          </td>
    </tr>    
    </tbody>    
  </table>
 <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white; margin-top:6px;" >
  <tbody id="Tbody2">
    <tr class="tdbg">
      <td colspan="2" align="center" class="style2"><span class="spacingtitle">同一城市间运费标准</span></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td width="24%" class="tdbg"><strong>基本运费：</strong></td>
      <td width="76%" ><asp:TextBox ID="tx_citymoney" runat="server" class="l_input" />
          元</td>
    </tr>        
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbg"><strong>基本运费的起算<b>重量：</b></strong></td>
      <td height="24" ><asp:TextBox ID="tx_citykg" runat="server"  class="l_input"/>千克（Kg）当商品重量不超过上述指定起算重量时，实际运费按基本运费计算</td>
    </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbg"><strong>浮动运费：</strong></td>
      <td height="24">
          当商品总重量超过基本运费的起算重量后，除了收取基本运费外，每<asp:TextBox ID="tx_bigcitykg" runat="server" class="l_input"  Width="82px"></asp:TextBox>
          千克的商品增加运费<asp:TextBox ID="tx_bigcitymoney" runat="server" Width="82px" class="l_input"></asp:TextBox>元</td>
    </tr>
   <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbg"><strong>最高运费：</strong></td>
      <td height="24">
          <asp:TextBox ID="tx_maxcity" runat="server" Width="82px" class="l_input"></asp:TextBox>  元（当基本运费＋浮动运费超过最高运费时，实际运费按最高运费计算）</td>
    </tr>
           
  </tbody>
</table>

 <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;margin-top:6px;">
  <tbody id="Tbody3">
    <tr class="tdbg">
      <td colspan="2" align="center" class="style2"><span class="spacingtitle">省外之间运费标准</span></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td width="24%" class="tdbg"><strong>基本运费：</strong></td>
      <td width="76%"><asp:TextBox ID="tx_outmoney" runat="server" class="l_input" />
          元</td>
    </tr>        
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbg"><strong>基本运费的起算<b>重量：</b></strong></td>
      <td height="24" "><asp:TextBox ID="tx_outkg" runat="server" class="l_input" />千克（Kg）当商品重量不超过上述指定起算重量时，实际运费按基本运费计算</td>
    </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbg"><strong>浮动运费：</strong></td>
      <td height="24">
          当商品总重量超过基本运费的起算重量后，除了收取基本运费外，每<asp:TextBox ID="tx_bigoutkg" class="l_input" runat="server" Width="82px"></asp:TextBox>
          千克的商品增加运费<asp:TextBox ID="tx_bigoutmoney" runat="server" Width="82px" class="l_input"></asp:TextBox>元</td>
    </tr>
   <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbg"><strong>最高运费：</strong></td>
      <td height="24" >
          <asp:TextBox ID="tx_maxout" class="l_input" runat="server" Width="82px"></asp:TextBox>  元（当基本运费＋浮动运费超过最高运费时，实际运费按最高运费计算）</td>
    </tr>
  </tbody>
</table>
</div>
</form>
</body>
</html>