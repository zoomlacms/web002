<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_AddDeliverType, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; 店铺设置 &gt;&gt; <a href="DeliverType.aspx">送货方式管理</a> &gt;&gt;
        <span><a href="AddDeliverType.aspx" target="_self">添加送货方式</a></span></div>
    <div class="clearbox"></div>
    
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody1">
        <tr class="tdbg">
          <td height="24" colspan="2" align="center" class="title"><span class="spacingtitle">添加送货方式</span></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td width="24%" height="24" class="tdbg"><strong>送货方式名称</strong></td>
          <td width="76%" height="24" ><asp:TextBox ID="deliname" runat="server" class="l_input" />
              <asp:HiddenField ID="uptype" runat="server" />
              <asp:HiddenField ID="id" runat="server" />
          </td>
        </tr>        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" class="tdbg"><strong>送货方式简介</strong></td>
          <td height="24" ><asp:TextBox ID="deliinfo" runat="server" class="l_input" /></td>
        </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" class="tdbg"><strong>运费</strong></td>
          <td height="24" >
              <asp:TextBox ID="delitype" runat="server" Width="82px" class="l_input"></asp:TextBox>元</td>
        </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" class="tdbg"><strong>税率</strong></td>
          <td height="24" ><asp:TextBox ID="shuilv" runat="server" Text='0' Width="50px" class="l_input" /> 
            % 
           </td>
        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" class="tdbg">&nbsp;</td>
          <td height="24" ><label for="ctl00_CphContent_ChkIsDefault">
            <asp:CheckBox ID="selectto" Text="设为默认送货方式" runat="server" />            
          </label></td>
        </tr>
        <tr>
          <td height="24" colspan="2" align="center"><asp:Button ID="Button1" class="C_input"   Text="保存送货方式" runat="server" OnClick="Button1_Click" />          </td>
        </tr>
      </tbody>
    </table>
    
</form>
</body>
</html>