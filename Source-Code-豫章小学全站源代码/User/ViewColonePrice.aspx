<%@ page language="C#" autoeventwireup="true" inherits="User_ViewColonePrice, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>价格对比图</title>
 <script>
	 function ReturnResult(obj) {
		 if (obj == "0") {
			 alert("该商品不存在");
		 }
	 }
</script>
</head>
<body>
 <div id="view" runat="server"></div><br />
 <td  style=" "></td>
    原价：<asp:Label ID="lblOl" runat="server"></asp:Label><br />
  当前人数：<asp:Label ID="lblNum" runat="server"></asp:Label><br />
  当前价格：<asp:Label ID="lblPrice" runat="server"></asp:Label>
  </body>
</html>