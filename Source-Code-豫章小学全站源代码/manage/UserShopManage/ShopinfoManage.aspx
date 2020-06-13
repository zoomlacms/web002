<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_ShopinfoManage, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head2" runat="server">
    <title>信息配置</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form2" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; 店铺信息配置 
	</div>
      
     <div class="clearbox"></div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tabss">
               <tr class="tdbg">
          <td width="100%" height="24" align="center" class="title" colspan="2">店铺信息配置</td>
        </tr>

         <tr class="tdbg" style="display:none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left"><b>启用多用户商城</b>
          </td>
          <td height="24" width="80%" align="left">
              <asp:RadioButtonList ID="IsOpen" runat="server" RepeatDirection="Horizontal">
                  <asp:ListItem Value="True">是</asp:ListItem>
                  <asp:ListItem Value="False">否</asp:ListItem>
              </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left"><b>商家发布商品需要审核</b>
          </td>
          <td height="24" width="80%" align="left">
              <asp:RadioButtonList ID="Auditing" runat="server" RepeatDirection="Horizontal">
                  <asp:ListItem Value="1">是</asp:ListItem>
                  <asp:ListItem Value="0">否</asp:ListItem>
              </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg">
          <td height="24" width="20%" align="left"><b>允许匿名购买</b>
          </td>
          <td height="24" width="80%" align="left" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
              <asp:RadioButtonList ID="Anonymity" runat="server" RepeatDirection="Horizontal">
                  <asp:ListItem Value="True">是</asp:ListItem>
                  <asp:ListItem Value="False">否</asp:ListItem>
              </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg" style="display:none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left"><b>允许使用点卡</b>
          </td>
          <td height="24" width="80%" align="left">
          <asp:RadioButtonList ID="Pointcard" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="True">是</asp:ListItem>
              <asp:ListItem Value="False">否</asp:ListItem>
          </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left"><b>允许使用虚拟货币</b>
          </td>
          <td height="24" width="80%" align="left">
          <asp:RadioButtonList ID="Dummymoney" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="True">是</asp:ListItem>
              <asp:ListItem Value="False">否</asp:ListItem>
          </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left"><b>允许评论</b>
          </td>
          <td height="24" width="80%" align="left">
          <asp:RadioButtonList ID="Comment" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="True">是</asp:ListItem>
              <asp:ListItem Value="False">否</asp:ListItem>
          </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left"><b>好评积分</b>
          </td>
          <td height="24" width="80%" align="left">
           <asp:TextBox ID="goodpl" class="l_input" runat="server">0</asp:TextBox>
          </td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left"><b>中评积分</b>
          </td>
          <td height="24" width="80%" align="left">
          <asp:TextBox ID="centerpl" class="l_input" runat="server">0</asp:TextBox>
          </td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left"><b>差评积分</b>
          </td>
          <td height="24" width="80%" align="left">
          <asp:TextBox ID="badpl" class="l_input" runat="server">0</asp:TextBox>
          </td>
        </tr>
        
     </tbody>
     <tbody width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="height: 25px; text-align:left" colspan="2">
            <asp:Button ID="Button1" class="C_input"  style="width:110px;"  runat="server" Text="更新设置" OnClick="Button1_Click" /></td>
      </tr>
        
    </tbody>
    </table>
    <br />
    
</form>
</body>
</html>
