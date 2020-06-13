<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_Addsearchkey, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>


<!DOCTYPE HTML>

<html>
<head id="Head2" runat="server">
    <title>添加商铺标签</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="/JS/Common.js" type="text/javascript"></script>
    <script src="/JS/RiQi.js" type="text/javascript"></script>    
</head>
<body>
    <form id="form2" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; <a href="ShopSearchKey.aspx">店铺关键字管理</a> &gt;&gt; <a href="Addsearchkey.aspx">添加关键字</a></div>
      
     <div class="clearbox"></div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tabss">
        <tr class="tdbg">
          <td width="100%" height="24" align="center" class="title" colspan="2">
              <asp:Label ID="Label1" runat="server" Text="添加关键字"></asp:Label></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left">关键字</td>
          <td height="24" width="80%" align="left">
              <asp:TextBox ID="Searchkey" class="l_input" runat="server" Width="414px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Searchkey"
                  ErrorMessage="关键字不能为空!"></asp:RequiredFieldValidator></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td width="20%" align="left" style="height: 8px">分类</td>
          <td width="80%" align="left" style="height: 8px">
              <asp:ListBox ID="Class" runat="server" Height="201px" SelectionMode="Multiple" Width="273px">
              </asp:ListBox>
          
          </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left">搜索次数</td>
          <td height="24" width="80%" align="left">
              <asp:TextBox ID="SearchNum" class="l_input" runat="server" Width="160px"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
          <td height="24" width="20%" align="left">搜索时间</td>
          <td height="24" width="80%" align="left">
              <asp:TextBox ID="SearchTime" class="l_input" runat="server" Width="160px"　onblur="setday(this);" onclick="setday(this);"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SearchTime"
                  ErrorMessage="搜索时间不能为空!"></asp:RequiredFieldValidator></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left">首页显示</td>
          <td height="24" width="80%" align="left">
              <asp:CheckBox ID="Showtop" runat="server" Text="是" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left">推荐</td>
          <td height="24" width="80%" align="left">
              <asp:CheckBox ID="Commend" runat="server" Text="推荐" /></td>
        </tr>
        <tr class="tdbg">
          <td height="24" width="100%" align="center"colspan="2">
              <asp:HiddenField ID="sid" runat="server" />
              <asp:Button ID="Button1" class="C_input"  runat="server" Text="提　交" OnClick="Button1_Click" />
              <asp:Button ID="Button2" class="C_input"  runat="server" OnClientClick="location.href='ShopSearchKey.aspx';return false;" Text="返　回" />
        </tr>
     </tbody>
    </table>

</form>
</body>
</html>
