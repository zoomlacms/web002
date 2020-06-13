<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_StockAdd, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的店铺</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function ttname(value)
{
document.getElementById("danjuhaos").value=value + document.getElementById("danjuhaobak").value;
document.getElementById("danjuhao").innerHTML=document.getElementById("danjuhaos").value
//alert(document.getElementById("danjuhaos").value);
}
</script>
<script src="/JS/calendar.js"></script>
</head>
<body>
<form id="form1" runat="server">

    <uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
    <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    <div class="us_topinfo" style="margin-top:10px; width:98%"><a href="StockList.aspx">库存管理</a> <a href="StockAdd.aspx">库存添加</a> </div>
    <div class="us_topinfo" style="margin-top:10px; width:98%">
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td colspan="2" class="spacingtitle" style="background:#FFBD59">
            <asp:Label ID="Label1" runat="server" Text="添加入库出库单"></asp:Label></td>
      </tr>
      <tr class="WebPart">
        <td width="34%" height="22" class="tdbgleft"><strong>选择单据类型：</strong></td>
        <td width="66%" valign="middle"><asp:RadioButtonList ID="stocktyle" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem value="RK" Selected="true" onclick="ttname(this.value);">入库</asp:ListItem>
          <asp:ListItem value="CK" onclick="ttname(this.value);">出库</asp:ListItem>
</asp:RadioButtonList>
            <asp:HiddenField ID="stockid" runat="server" />
        </td>
      </tr>
       <tr class="WebPart">
        <td width="34%" height="22" class="tdbgleft"><strong>单据编号：</strong></td>
        <td height="22" valign="middle">&nbsp;<asp:Label ID="danjuhao" runat="server" Text=""></asp:Label>
            <asp:HiddenField ID="danjuhaos" runat="server" />
            <asp:HiddenField ID="danjuhaobak" runat="server" />
        </td>
      </tr>
      <tr class="WebPart">
        <td width="34%" height="22" class="tdbgleft"><strong>商品选择：</strong></td>
        <td height="22" valign="middle">
            <asp:DropDownList ID="productid" runat="server">
            </asp:DropDownList></td>
      </tr>
            <tr class="WebPart">
        <td width="34%" height="22" class="tdbgleft"><strong>商品数量：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="Pronum" runat="server" Width="103px">0</asp:TextBox>
            *<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Pronum"
                ErrorMessage="商品数量必须是整数!" Type="Integer"></asp:RangeValidator></td>
      </tr>
      <tr class="WebPart">
        <td width="34%" class="tdbgleft" style="height: 22px"><strong>录入时间：</strong></td>
        <td valign="middle" style="height: 22px">
            <asp:TextBox ID="calendars" runat="server" Width="178px" onclick="calendar()"></asp:TextBox>
            <asp:Image ID="Image1" runat="server" ImageUrl="../../App_Themes/AdminDefaultTheme/images/Calendar.gif" ToolTip="鼠标点击左边输入框出现时间选择框" /></td>
      </tr>
      <tr class="WebPart">
        <td width="34%" class="tdbgleft" style="height: 22px"><strong>录 入 者：</strong></td>
        <td valign="middle" style="height: 22px"><asp:TextBox ID="adduser" runat="server" Width="178px"></asp:TextBox>
            *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="adduser"
                ErrorMessage="录入者不能为空!"></asp:RequiredFieldValidator></td>
      </tr>
      <tr class="WebPart">
        <td width="34%" height="22" class="tdbgleft"><strong>备&nbsp; &nbsp; 注：</strong></td>
        <td height="22" valign="middle"><asp:TextBox ID="stockcontent" runat="server" Height="91px" Width="482px"></asp:TextBox></td>
      </tr>

      <tr class="tdbg">
        <td height="22" colspan="5" align="center" class="tdbgleft">
            <asp:Button ID="Button1" runat="server" Text="　添加　" OnClick="Button1_Click" />&nbsp;</td>
      </tr>
    </table>
</div>
</form>
</body>
</html>