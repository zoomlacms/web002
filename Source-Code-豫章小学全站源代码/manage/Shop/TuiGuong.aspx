<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_TuiGuong, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>商品推广</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script language="javascript">
        function copyToClipBoard() {
            var clipBoardContent = "";
            clipBoardContent += document.title;
            clipBoardContent += "";
            clipBoardContent += this.location.href;
            window.clipboardData.setData("Text", clipBoardContent);
            alert("复制成功，您可以将其粘贴到QQ/MSN上啦！");
        }
</script> 
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;商城管理&gt;&gt;<a href="PresentProject.aspx">促销优惠</a>&gt;&gt;<a href="MtrlsMrktng.aspx">商品推广</a></div>

<table width="98%">
    <tr align="center" class="tdbg">
        <td>商品ID:<asp:Label ID="ShopID" runat="server" Text=''/></td>
        <td>推广人:<asp:Label ID="User" runat="server" Text=''/></td>                    
    </tr>
        <tr align="center" class="tdbg">
        <td>商品价格:<asp:Label ID="ShopPrice" runat="server" Text=""/></td>              
        <td >商品名称:<asp:Label ID="ShopName" runat="server" Text=""/></td>            
    </tr>
    <tr align="center" class="tdbg">
        <td >购买数量:<asp:Label ID="lblNum" runat="server" Text=""/></td>              
        <td>仓库库存:<asp:Label ID="lblgu" runat="server" Text=""/></td>                    
    </tr>
</table>
<br />
<div>    
<asp:TextBox ID="txtJiexi" runat="server" TextMode="MultiLine"  CssClass="l_input" Height="61px" Width="98%"></asp:TextBox><br />     
<input type="button"  name="Submit" onClick='copyToClipBoard()' value="复制推广代码"  class="C_input"/>    
</div>
</form>
</body>
</html>