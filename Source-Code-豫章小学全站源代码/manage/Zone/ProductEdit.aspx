<%@ page language="C#" autoeventwireup="true" inherits="FreeHome.Manage.ProductEdit, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>无标题页</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div>
   <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>会员空间管理</span>  &gt;&gt;    <span>虚拟商品管理</span>  &gt;&gt; <a href="ProductManage.aspx">[虚拟商品列表]</a>  |  <a href="ProductAdd.aspx">[空间虚拟商品设置]</a> 
	</div>

<table width="100%" height="227" border="0" cellpadding="0" cellspacing="0" class="border">
  <tr class="tdbg">
    <td colspan="2" align="center"  class="spacingtitle" >空间虚拟商品修改</td>
  </tr>
  <tr class="tdbg">
    <td width="24%" align="center" class="tdbgleft">商品名称：</td>
    <td width="76%">&nbsp;<asp:TextBox ID="Nametxt" runat="server"></asp:TextBox>
        <span style="color: #ff0000">* </span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Nametxt"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
  </tr>
<%--    <tr class="tdbg">
    <td width="24%" align="center">
        商品类型：</td>
    <td width="76%">&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
  </tr>--%>
  <tr class="tdbg">
    <td align="center" class="tdbgleft">普通价格：</td>
    <td>&nbsp;<asp:TextBox ID="pricetxt" runat="server"></asp:TextBox>
        <span style="color: #ff0000">*
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="pricetxt"
                ErrorMessage="必须是数字" ValidationExpression="^\d{1,7}(\.\d{1,4})?$"></asp:RegularExpressionValidator></span></td>
  </tr>
  <tr class="tdbg">
    <td align="center" class="tdbgleft">VIP价格：</td>
    <td>&nbsp;<asp:TextBox ID="viptxt" runat="server"></asp:TextBox>
        <span style="color: #ff0000">*
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="viptxt"
                ErrorMessage="必须是数字" ValidationExpression="^\d{1,7}(\.\d{1,4})?$"></asp:RegularExpressionValidator></span></td>
  </tr>
  <tr class="tdbg">
    <td align="center" class="tdbgleft">商品图片：</td>
    <td>&nbsp;<asp:TextBox ID="Thumbnails" runat="server" Width="300px" /><span style="color: #ff0000">*
    </span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Thumbnails"
            ErrorMessage="商品图片不能为空"></asp:RequiredFieldValidator>
        <iframe id="smallimgs" style="top:2px" src="../shop/fileupload.aspx?menu=Thumbnails" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
        </td>
  </tr>
  <tr class="tdbg">
    <td align="center" class="tdbgleft">商品简介：</td>
    <td><textarea name="textarea" id="contenttextarea" cols="45" rows="10" runat="server"></textarea></td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td>&nbsp;<asp:Button ID="addbtn" runat="server" Text="保  存" Width="84px" OnClick="addbtn_Click" /></td>
  </tr>
</table>
    </div>
</form>
</body>
</html>
