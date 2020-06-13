<%@ page language="C#" autoeventwireup="true" inherits="User_Usertalk_MyFriendBy, App_Web_s5c5gzpd" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>好友列表</title>
<script>
	function displayNone() {
		var MyVar = document.getElementById("MyFriendID");
		if (MyVar.style.display == "none") {
			MyVar.style.display = "block";
		} else {
			MyVar.style.display = "none";
		}
	}
</script>
</head>
<body>
<form id="form1" runat="server">
<div style="width:100%;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a  onclick=" displayNone()" style="cursor:hand;">我的好友列表</a>
<div style="width:100%; text-align:center;" id="MyFriendID">
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="80%"
	  EnableModelValidation="True" onrowcommand="GridView1_RowCommand" 
	  onrowcreated="GridView1_RowCreated">
	  <HeaderStyle BackColor="#9ac7f0" Height="20" />
	  <RowStyle BackColor="#e8f5ff" />
	  <Columns>
		  <asp:BoundField DataField="id" HeaderText="id" />
		  <asp:BoundField DataField="userName" HeaderText="好友名称" />
		  <asp:TemplateField HeaderText="分组">
			  <ItemTemplate>
				  <asp:DropDownList ID="DropDownList2" runat="server">
				  </asp:DropDownList>
			  </ItemTemplate>
		  </asp:TemplateField>
		  <asp:TemplateField HeaderText="操作">
			  <ItemTemplate>
				  <asp:LinkButton CommandName="upd" CommandArgument='<%#Eval("id") %>' ID="LinkButton2" runat="server">修改</asp:LinkButton>
				  &nbsp;
				  <asp:LinkButton CommandName="del" CommandArgument='<%#Eval("id") %>' ID="LinkButton3" runat="server">删除</asp:LinkButton>
			  </ItemTemplate>
		  </asp:TemplateField>
	  </Columns>
  </asp:GridView>
</div>
</div>
</form>
</body>
</html>