<%@ page language="C#" autoeventwireup="true" inherits="manage_CallStat_StatTimeReport, App_Web_sblwzw2t" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">当前位置：功能导航 >> <%=PageName %></div>
    
     <div class="r_navigation">
      &nbsp;&nbsp;&nbsp; 选择分站：
      <asp:DropDownList ID="DropDownList1" runat="server" 
             AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
         </asp:DropDownList>
		
	</div>    
    <asp:HiddenField ID="HiddenCNID" runat="server" />
    <asp:HiddenField ID="Hiddentype" runat="server" />
    <asp:HiddenField ID="Hiddenw" runat="server" />
    <div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </div>
    </form>
</body>
</html>
