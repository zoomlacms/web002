<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_AddModel, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>模型设置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;店铺管理&gt;&gt;<a href="ManageModel.aspx">商品模型管理</a> &gt;&gt;<asp:Literal ID="LNav" runat="server" Text="添加商品模型"></asp:Literal></div>
  <table class="border" width="100%" cellpadding="2" cellspacing="1">
    <tr>
      <td class="spacingtitle" colspan="2" align="center"><asp:Literal ID="LTitle" runat="server" Text="添加商品模型"></asp:Literal></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 35%"><strong>商品模型名称：</strong></td>
      <td><asp:TextBox ID="TxtModelName" class="l_input" runat="server" Width="156" MaxLength="200" />
        <font color="red">*</font>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtModelName">内容模型名称不能为空</asp:RequiredFieldValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>创建的数据表名：</strong></td>
      <td><asp:Label ID="LblTablePrefix" runat="server" Text="ZL_S_" />
        <asp:TextBox ID="TxtTableName" class="l_input" runat="server" Width="120" MaxLength="50" />
        <font color="red">*</font>
        <asp:RegularExpressionValidator ID="ValeTableName" runat="server" ControlToValidate="TxtTableName" ErrorMessage="只允许输入字母、数字或下划线" ValidationExpression="^[\w_]+$" SetFocusOnError="true" Display="Dynamic" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>项目名称：</strong> <br />
        例如：文章、软件、图片、商品 </td>
      <td><asp:TextBox ID="TxtItemName" class="l_input" runat="server" Width="156" MaxLength="20" />
        <font color="red">*</font>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtItemName" ErrorMessage="RequiredFieldValidator">项目名称不能为空</asp:RequiredFieldValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>项目单位：</strong> <br />
        例如：篇、个、张、件 </td>
      <td><asp:TextBox ID="TxtItemUnit" class="l_input" runat="server" Width="156" MaxLength="20" />
        <font color="red">*</font>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtItemUnit" ErrorMessage="RequiredFieldValidator">项目单位不能为空</asp:RequiredFieldValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>项目图标：</strong> <br />
        图标存放在~/Images/ModelIcon/目录下 </td>
      <td><asp:TextBox ID="TxtItemIcon" class="l_input" Text="Default.gif" runat="server" Width="156" MaxLength="20" />
        <asp:Image ID="ImgItemIcon" runat="server" ImageUrl="~/Images/ModelIcon/Default.gif" />
        <=
        <asp:DropDownList ID="DrpItemIcon" runat="server" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>模型描述：</strong></td>
      <td><asp:TextBox ID="TxtDescription" class="l_input" runat="server" TextMode="MultiLine" Width="365px" Height="43px" /></td>
    </tr>
    <tr class="tdbgbottom">
      <td colspan="2"><asp:HiddenField ID="HdnModelId" runat="server" />
        <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />
        &nbsp;&nbsp;
        <input name="Cancel" type="button" class="C_input" id="Cancel" value="取消" onclick="window.location.href='ManageModel.aspx';" /></td>
    </tr>
  </table>
  <script type="text/javascript">
    function ChangeImgItemIcon(icon)
    {
        document.getElementById("<%= ImgItemIcon.ClientID %>").src = "../../Images/ModelIcon/"+icon;
    }
    function ChangeTxtItemIcon(icon)
    {
        document.getElementById("<%= TxtItemIcon.ClientID %>").value = icon;
    }
    </script>
</form>
</body>
</html>