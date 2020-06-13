<%@ page language="C#" autoeventwireup="true" enableeventvalidation="false" inherits="Zoomla.Website.manage.Shop.AddPresentProject, App_Web_yc1b2kmm" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加促销方案</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/calendar.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
function SelectProducer()
{
   window.open('Addproject.aspx','','width=600,height=450,resizable=0,scrollbars=yes');
}
function Clearoption()
{
    var hiddenidvalue = document.getElementById("PromoProlist"); //获取已经存在的ID值
        
    for(var i=hiddenidvalue.options.length-1;i>= 0;i--)
    {
        if(hiddenidvalue[i].selected==true)
        {
            hiddenidvalue[i]=null;  
        }
    }

}
</script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="r_navigation">
		
	  <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>促销方案管理</span> &gt;&gt; <span>添加促销方案</span>	</div>
    <div class="clearbox"></div>

    
    
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td colspan="2" class="spacingtitle">
            <asp:Label ID="Label1" runat="server" Text="添加促销方案"></asp:Label></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 24%"><strong>方案名称：</strong></td>
        <td width="76%" valign="middle"><asp:TextBox ID="Promoname" runat="server" Width="253px"  class="l_input"/>
            <font color=red>*
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="方案名称不能为空!" ControlToValidate="Promoname"></asp:RequiredFieldValidator></font></td>
      </tr>
       <tr class="WebPart">
        <td height="22" class="tdbgleft" style="width: 24%"><strong>有效期：</strong></td>
  <td height="22" valign="middle"><asp:TextBox ID="Promostart" class="l_input" runat="server" Width="96px" onclick="calendar()" />&nbsp;<asp:Image
          ID="Image1" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif" ToolTip="鼠标点击左边输入框出现时间选择框" />
    &nbsp;止        <asp:TextBox ID="Promoend" class="l_input" runat="server" Width="96px" onclick="calendar()" />
      <asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif"
          ToolTip="鼠标点击左边输入框出现时间选择框" />
      不填写为不限制有效期</td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 24%"><strong>价格区间：</strong></td>
  <td height="22" valign="middle">
      <asp:TextBox ID="Pricetop" runat="server" Width="79px" class="l_input">100.00</asp:TextBox><strong>≤</strong> 购物总金额 <strong>&lt;</strong>
      <asp:TextBox ID="Priceend" runat="server" Width="79px" class="l_input">500.00</asp:TextBox>
   <span>不同促销方案的价格区间必须不同，否则会产生冲突<span style="background-color: #effcee"> </span><font color=red>*</font></span></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 24%"><strong>促销内容：</strong></td>
        <td height="22" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td style="height: 22px"><asp:CheckBox ID="GetPresent" Text="可以" runat="server" Checked="True" />
            <asp:TextBox ID="Presentmoney" runat="server" Width="45px" class="l_input" >10</asp:TextBox>
                元超值换购以下礼品中任一款：</td>
          </tr>
          <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="height: 22px">
            
           <asp:ListBox ID="PromoProlist" runat="server" Height="144px" SelectionMode="Multiple"
                    Width="323px" class="l_input"></asp:ListBox><br /> 
     <asp:Button ID="Button2" runat="server" class="C_input" style="width:110px;" Text="添加促销礼品" OnClientClick="SelectProducer();return false;" />
                <asp:Button ID="Button3" class="C_input" runat="server" Text="删除" OnClientClick="Clearoption();return false;" /><br />
                <font color="red">非选中</font><font color="green">状态的礼品添加或更新后将被</font><font color="red">删除<br /><font color="red"><b>选中状态</b></font><font color="green">的商品将被更新</font> 支持<b>Ctrl</b>或<b>Shift</b>键多选
            </font></td>
          </tr>
          <tr>
            <td style="height: 22px"><asp:CheckBox ID="IntegralTure" Text="可以得到" runat="server" />            
              <asp:TextBox ID="Integral" runat="server" Width="55px" class="l_input"  />              
点积分</td>
          </tr>

        </table></td>
      </tr>
      <tr class="tdbg">
        <td height="22" colspan="5" align="center" class="tdbgleft">
            <asp:HiddenField ID="HiddenID" runat="server" />
            <asp:Button ID="Button1" class="C_input" runat="server" Text="添加" OnClick="Button1_Click" />&nbsp;<asp:Button
                ID="Button4" runat="server" class="C_input" Text="返回" 
                OnClick="Button4_Click" Width="65px" /></td>
      </tr>
    </table>
</form>
</body>
</html>