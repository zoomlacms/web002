<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_LargessMoney, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet"/>
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet"/>
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div class="r_navigation">
            
            <span>后台管理 &gt;&gt; </span> 会员空间管理 &gt;&gt; 赠送游戏币
        </div>
        <div>
            <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
                <tr>
                    <td class="tdbg">
                        <asp:GridView ID="GridView1" Width="100%" DataKeyNames="UserID" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="用户名">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Width="250px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="拥有游戏币">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("DummyPurse") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" HeaderText="赠送" UpdateText="赠送" EditText="赠送">
                        <HeaderStyle Width="150px" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView></td>
                </tr>
                <tr class="tdbg">
                    <td height="24" colspan="6" align="center" class="tdbgleft">
                        共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />
                        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                            Text="" />页
                        <asp:Label ID="pagess" runat="server" Text="" />个/页 </td>
                </tr>
            </table>
            </div>
</form>
</body>
</html>
