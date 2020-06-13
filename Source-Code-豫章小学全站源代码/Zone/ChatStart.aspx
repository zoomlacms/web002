<%@ page language="C#" autoeventwireup="true" inherits="Zone_ChatStart, App_Web_h5gwtnsp" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>黑灯瞎火蒙面聊</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
      <td align="center"><table border="0" cellpadding="0" cellspacing="0" width="80%">
          <tr>
            <td align="center"><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"
						ShowHeader="False" CellPadding="8" GridLines="None" Height="301px">
                <Columns>
                <asp:TemplateField>
                  <ItemTemplate> <strong>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName='<%#DataBinder.Eval(Container.DataItem, "Name")%>' CausesValidation="False" OnClick="LinkButton1_Click"><%# DataBinder.Eval(Container.DataItem, "Name") %></asp:LinkButton>
                    [<font color='#4D0000'>
                    <asp:Label ID="Label6" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Sex")%>'></asp:Label>
                    </font>](<font color='#666666'>
                    <asp:Label ID="Label4" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Addtime")%>'></asp:Label>
                    </font>)
                    <asp:Label ID="LinkButton2" runat="server" Text='<%# GetType(DataBinder.Eval(Container.DataItem, "ChatType").ToString())%>' ></asp:Label>
                    说：</strong><br />
                    <asp:Label ID="Label3" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ChatContent")%>'></asp:Label>
                  </ItemTemplate>
                </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate> 无记录 </EmptyDataTemplate>
                <HeaderStyle BackColor="#E0E0E0" />
                <FooterStyle BackColor="#E0E0E0" />
              </asp:GridView></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td align="center"><asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
          <asp:View ID="View1" runat="server"> &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="取个名字："></asp:Label>
            <asp:TextBox ID="txtName" runat="server" MaxLength="25" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
				Display="Dynamic" ErrorMessage="请取个名字"></asp:RequiredFieldValidator>
            <asp:Label ID="Label5" runat="server" Text="选择性别："></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
              <asp:ListItem>男生</asp:ListItem>
              <asp:ListItem>女生</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1"
				ErrorMessage="请选择性别"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
          </asp:View>
          <asp:View ID="View2" runat="server"> 对
            <asp:LinkButton ID="typeLinkButton" runat="server" CausesValidation="False" OnClick="typeLinkButton_Click" Text="所有人" ></asp:LinkButton>
            &nbsp;
            <asp:Label ID="Label2" runat="server" Text="发送信息："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="361px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="写点什么吧"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="发送" CausesValidation="False" />
            &nbsp;
            <asp:Button ID="Button4" runat="server" CausesValidation="false" Text="修改设置" OnClick="Button4_Click" />
            &nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="清空聊天记录" CausesValidation="False" />
          </asp:View>
          <br />
          <br />
          <br />
        </asp:MultiView>
        &nbsp;&nbsp;&nbsp; </td>
    </tr>
  </table>
</form>
</body>
</html>