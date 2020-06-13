<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_AddShopGrades, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>添加商铺等级</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form2" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt;<span><asp:Literal ID="LNav" runat="server" Text="添加等级"></asp:Literal></span></div>
      
     <div class="clearbox"></div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tabss">
        <tr class="tdbg">
          <td width="100%" height="24" align="center" class="title" colspan="2">
              <asp:Literal ID="LTitle" runat="server" Text="添加等级"></asp:Literal></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left" class="tdbgleft">
              等级名称</td>
          <td height="24" width="80%" align="left">
              <asp:TextBox ID="GradeName" runat="server" class="l_input" Width="290px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="GradeName"
                  ErrorMessage="等级名称不能为空!"></asp:RequiredFieldValidator></td>
        </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
       <td height="24" width="20%" align="left" class="tdbgleft">
           等级别名</td>
       <td height="24" width="20%" align="left">
           <asp:TextBox ID="TxtOtherName" runat="server" class="l_input" Width="145px"></asp:TextBox>
           等级别名不为空时将替换等级名称</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left" class="tdbgleft">
              等级类型</td>
          <td height="24" width="80%" align="left">
              <asp:RadioButtonList ID="GradeType" runat="server" RepeatDirection="Horizontal">
                  <asp:ListItem Selected="True" Value="0">购物等级</asp:ListItem>
                  <asp:ListItem Value="1">卖家等级</asp:ListItem>
                  <asp:ListItem Value="2">商户等级</asp:ListItem>
              </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td width="20%" align="left" style="height: 8px" class="tdbgleft">
              等级图片</td>
          <td width="80%" align="left" style="height: 8px">
              <asp:TextBox ID="TxtGradeimg" runat="server" class="l_input" MaxLength="20" Width="123px"></asp:TextBox>
              <asp:Image ID="ImgGradeimg" runat="server" ImageUrl="~/Images/levelIcon/b_1.gif" />
              &lt;=<asp:DropDownList ID="DrpGradeimg" runat="server">
              </asp:DropDownList>
              图标存放在~/Images/levelIcon/目录下
          </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left" class="tdbgleft">
              图片数量</td>
          <td height="24" width="80%" align="left">
              <asp:TextBox ID="Imgnum" runat="server" class="l_input" Width="145px">0</asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left" class="tdbgleft">
              积分</td>
          <td height="24" width="80%" align="left">
              <asp:TextBox ID="TxtCommentNum" class="l_input" runat="server" Width="145px">0</asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" width="20%" align="left" class="tdbgleft">
              等级状态</td>
          <td height="24" width="80%" align="left">
              <asp:RadioButtonList ID="IsTrue" runat="server" RepeatDirection="Horizontal">
                  <asp:ListItem Selected="True" Value="1">启用</asp:ListItem>
                  <asp:ListItem Value="0">停用</asp:ListItem>
              </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg">
          <td width="100%" align="center"colspan="2" style="height: 24px">
              <asp:HiddenField ID="HdnModelId" runat="server" />
              <asp:Button ID="Button1" runat="server" Text="保　存" class="C_input"  OnClick="Button1_Click" />
              &nbsp; &nbsp;
              <input id="Cancel" class="C_input"  name="Cancel" onclick="window.location.href='ShopGrade.aspx';"
                  type="button" value="取消"  />
            &nbsp;</tr>
     </tbody>
    </table>
<script type="text/javascript">
    function ChangeImgItemIcon(icon)
    {
        document.getElementById("<%= ImgGradeimg.ClientID %>").src = "../../Images/levelIcon/"+icon;
    }
    function ChangeTxtItemIcon(icon)
    {
        document.getElementById("<%= TxtGradeimg.ClientID %>").value = icon;
    }
    </script>
</form>
</body>
</html>

